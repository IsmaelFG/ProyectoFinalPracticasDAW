package curso.java.tienda;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import curso.java.tienda.model.UsuarioVO;
import curso.java.tienda.repository.UsuarioRepository;
import jakarta.annotation.PostConstruct;

@Component
public class DatosIniciales {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @PostConstruct
    public void inicializar() {
    	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        UsuarioVO admin =  usuarioRepository.findByEmail("administrador@gmail.com");
        if (admin == null) {
            admin = new UsuarioVO();
            admin.setEmail("administrador@gmail.com");
            admin.setClave(encoder.encode("admin"));
            admin.setId_rol(3);
            usuarioRepository.save(admin);
        }
    }
}

