package curso.java.tienda.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import curso.java.tienda.model.CategoriaVO;
import curso.java.tienda.model.DetallePedidoVO;
import curso.java.tienda.model.PedidoVO;
import curso.java.tienda.repository.DetallePedidoRepository;
import curso.java.tienda.repository.PedidoRepository;

@Controller
public class PedidoController {

	@Autowired
	private PedidoRepository pedidoRepository;
	
	@Autowired
	private DetallePedidoRepository detallePedidoRepository;



	@GetMapping("/pedidos")
	public String findAll(Model model) {
		model.addAttribute("pedidos", pedidoRepository.findByEstado("PE"));
		return "pedido-list";
	}


	@GetMapping("/pedidos/cambiarEstado/{id}")
    public String cambiarEstadoPedido(@PathVariable Integer id) {
        pedidoRepository.findById(id).ifPresent(existingPedido -> {
            existingPedido.setEstado("E");

            List<DetallePedidoVO> detallesPedido = detallePedidoRepository.findByIdPedido(id);

            double totalPedido = detallesPedido.stream()
                    .mapToDouble(detallePedido -> detallePedido.getTotal())
                    .sum();

            existingPedido.setTotal(totalPedido);
            
            pedidoRepository.save(existingPedido);
        });
        return "redirect:/pedidos";
    }
    
    

}
