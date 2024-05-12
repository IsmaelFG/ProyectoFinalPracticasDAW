package curso.java.tienda;

import java.io.IOException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import curso.java.tienda.dao.ProductoDAO;
import curso.java.tienda.model.ProductoVO;
import curso.java.tienda.service.ProductoService;

/**
 * Servlet implementation class EntradaServlet
 */
@WebServlet("")
public class EntradaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EntradaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		if (request.getSession().getAttribute("carrito") == null) {
			request.getSession().setAttribute("carrito", new HashMap<Integer, Integer>());
		}

		String filtro = request.getParameter("filtros");

		if (filtro == null) {
			filtro = "c.nombre";
		}

		List<ProductoVO> listaProductos = ProductoDAO.findAll();
		List<ProductoVO> productosOrdenados = new ArrayList<ProductoVO>();

		switch (filtro) {
		case "c.nombre":
			productosOrdenados = ProductoService.ordenarProductosPorCategoria(listaProductos);
			break;
		case "p.precio":
			productosOrdenados = ProductoService.ordenarProductosPorPrecioDescendente(listaProductos);
			break;
		case "p.stock":
			productosOrdenados = ProductoService.ordenarProductosPorStockDescendente(listaProductos);
			break;
		default:
			System.out.println("Error");
			break;

		}
		StringBuffer url = request.getRequestURL();

		String queryString = request.getQueryString();

		if (queryString != null) {
			url.append("?").append(queryString);
		}

		String currentUrl = url.toString();

		request.getSession().setAttribute("currentUrl", currentUrl);

		request.setAttribute("catalogo", productosOrdenados);
		request.getRequestDispatcher("index.jsp").forward(request, response);
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
