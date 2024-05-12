package curso.java.tienda.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import curso.java.tienda.model.UsuarioVO;
import curso.java.tienda.repository.UsuarioRepository;
import jakarta.servlet.http.HttpSession;

@Controller
public class CambiarContrasenaController {

	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@PostMapping("/cambiarContrasena")
	  public String cambiarContrasena(@RequestParam String password,@RequestParam String passwordRepetida,@RequestParam String passwordNueva) {
       if(password.equals(passwordRepetida)) {
    	   UsuarioVO user = usuarioRepository.findByEmail("administrador@gmail.com");
    	   BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    	   user.setClave(encoder.encode(passwordNueva));
    	   usuarioRepository.save(user);
       }else {
    	   return "cambiar-contrasena";
       }
        
        return "index";
    }
}
