package curso.java.tienda.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import curso.java.tienda.dao.DetallePedidoDAO;
import curso.java.tienda.dao.PedidoDAO;
import curso.java.tienda.model.PedidoVO;
import curso.java.tienda.model.ProductoVO;
import curso.java.tienda.model.UsuarioVO;
import curso.java.tienda.service.ListadoPedidosService;
import curso.java.tienda.service.UsuarioService;

/**
 * Servlet implementation class BorrarProductoCarritoServlet
 */
@WebServlet("/BorrarDetallePedidoListadoServlet")
public class BorrarDetallePedidoListadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BorrarDetallePedidoListadoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**s
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		if (DetallePedidoDAO.buscarDetallePedido(Integer.parseInt(id))) {
			DetallePedidoDAO.cancelarDetallePedido(Integer.parseInt(id));
		}
		request.getRequestDispatcher("ListadoPedidosServlet").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
