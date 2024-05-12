package curso.java.tienda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import curso.java.tienda.model.UsuarioVO;
import curso.java.tienda.repository.UsuarioRepository;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired
	private UsuarioRepository usuarioRepository;

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/logout")
    public String cerrarSesion(HttpSession session) {
        session.invalidate();
        
        return "index";
    }

	@GetMapping("/index")
	public String dashboard(HttpSession session) {
		UsuarioVO usuario = (UsuarioVO) session.getAttribute("user");
		if (usuario.getId_rol() == 2) {
		    return "dashboard";
		} else if (usuario.getId_rol() == 3) {
		    return "dashboardAdmin";
		} else {
		    return "index";
		}
	}
	@PostMapping("/index")
	public String procesoLogin(@RequestParam String email, @RequestParam String password, Model model,HttpSession session) {

		UsuarioVO usuario = usuarioRepository.findByEmail(email);

		if (usuario != null) {
			String hashedPassword = usuario.getClave();

			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			if (encoder.matches(password, hashedPassword)) {
				if(usuario.getEmail().equals("administrador@gmail.com") && encoder.matches("admin", hashedPassword)) {
					return "cambiar-contrasena";
				}
				if (usuario.getId_rol() == 2) {
					session.setAttribute("user", usuario);
					return "dashboard";
				} else if (usuario.getId_rol() == 3) {
					session.setAttribute("user", usuario);
					return "dashboardAdmin";
				} else {
					return "index";
				}
			} else {
				model.addAttribute("error", "Invalid email or password");
				return "index";
			}
		} else {
			model.addAttribute("error", "Invalid email or password");
			return "index";
		}
	}

}
