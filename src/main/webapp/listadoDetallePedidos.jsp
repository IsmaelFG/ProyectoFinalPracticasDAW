<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="curso.java.tienda.model.DetallePedidoVO"%>
<%@ include file="header.jsp"%>
<!-- Start Hero Section -->
<div class="hero">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-lg-5">
				<div class="intro-excerpt">
					<h1>Detalle Pedidos</h1>
				</div>
			</div>
			<div class="col-lg-7"></div>
		</div>
	</div>
</div>
<!-- End Hero Section -->

<div class="untree_co-section before-footer-section">
	<div class="container">
		<div class="row mb-5">
			<form class="col-md-12" method="post">
				<div class="site-blocks-table">
					<table class="table">
						<thead>
							<tr>
								<th class="product-id">Id</th>
								<th class="product-idProducto">IdProducto</th>
								<th class="product-priceUnidad">PrecioUnidad</th>
								<th class="product-unidades">Unidades</th>
								<th class="product-total">Total</th>
								<th class="product-remove">Eliminar</th>
							</tr>
						</thead>
						<tbody>
							<%
							session = request.getSession();

							List<DetallePedidoVO> listaDetallePedidos = (List<DetallePedidoVO>) request.getAttribute("detallesPedido");

							for (DetallePedidoVO detallePedido : listaDetallePedidos) {
							%>

							<tr>
								<td><%=detallePedido.getId()%></td>
								<td><%=detallePedido.getIdProducto()%></td>
								<td><%=detallePedido.getPrecioUnidad()%></td>
								<td><%=detallePedido.getUnidades()%></td>
								<td><%=detallePedido.getTotal()%></td>
								<td><%=listaDetallePedidos.size() > 1 && request.getParameter("estadoPedido").equals("PE") ? "<a href='BorrarDetallePedidoListadoServlet?id=" + detallePedido.getId() + "' class='btn btn-black btn-sm'>X</a>": ""%>

								</td>
								<tr>

								<%
								}
								%>
							
							
							
						</tbody>
					</table>
				</div>
			</form>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="row mb-5">
					<div class="col-md-4">
						<a href="ListadoPedidosServlet"
							style="background: #f0f0f0; color: black;"
							class="btn btn-black btn-lg py-2 btn-block">Volver</a>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>
</html>
