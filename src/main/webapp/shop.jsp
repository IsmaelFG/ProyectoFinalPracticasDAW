<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
session = request.getSession();
%>

<%@ include file="header.jsp"%>

	<div class="container">
	<div class="filtro">
		<form action="TiendaServlet" method="get" style="margin-bottom: 60px; width:150px;">
			<label for="filtros" class="text-black">Filtrar <span
				class="text-danger"></span></label> <select id="filtros" name="filtros"
				class="form-control">
				<option value="c.nombre"
					<%=(request.getParameter("filtros") != null && request.getParameter("filtros").equals("c.nombre")) ? "selected"
		: ""%>>Categoria</option>
				<option value="p.precio"
					<%=(request.getParameter("filtros") != null && request.getParameter("filtros").equals("p.precio")) ? "selected"
		: ""%>>Precio</option>
				<option value="p.stock"
					<%=(request.getParameter("filtros") != null && request.getParameter("filtros").equals("p.stock")) ? "selected"
		: ""%>>Stock</option>
			</select> <input type="submit" value="Buscar">
		</form>
	</div>
		<div class="row">
			<%
			List<ProductoVO> catalogo = (List<ProductoVO>) request.getAttribute("catalogo");

			for (ProductoVO producto : catalogo) {
			%>

			<div class="product-layouts" style="padding:25px;">
				<div class="product-thumb">
					<div class="image zoom">
						<a href="DetalleProductoServlet?id=<%=producto.getId()%>"> <img
							src="img/products/<%=producto.getImagen()%>" height="400"
							width="308" />
						</a>
					</div>
					<div class="thumb-description">
						<div class="caption">
							<h4 class="product-title text-capitalize">
								<a href="DetalleProductoServlet?id=<%=producto.getId()%>"><%=producto.getNombre()%></a>
							</h4>
						</div>
						<!-- 														<div class="rating">
															<div class="product-ratings d-inline-block align-middle">
																<span class="fa fa-stack"><i
																	class="material-icons">star</i></span> <span
																	class="fa fa-stack"><i class="material-icons">star</i></span>
																<span class="fa fa-stack"><i
																	class="material-icons">star</i></span> <span
																	class="fa fa-stack"><i
																	class="material-icons off">star</i></span> <span
																	class="fa fa-stack"><i
																	class="material-icons off">star</i></span>
															</div>
														</div> -->
						<div class="price">
							<div class="regular-price"><%=producto.getPrecio() + "€"%></div>
						</div>
						<div class="button-wrapper">
							<div class="button-group text-center">
								<button type="button" class="btn btn-primary btn-cart"
									onclick="window.location.href='AñadirProductoServlet?id=<%=producto.getId()%>&product-quantity=1'"
									<%=producto.getStock() < 1 ? "disabled='disabled'" : ""%>>
									<i class="material-icons">shopping_cart</i><span>Add to
										cart</span>
								</button>
								<!-- 				<a href="wishlist.html"
																	class="btn btn-primary btn-wishlist"><i
																	class="material-icons">favorite</i><span>wishlist</span></a>
																<button type="button"
																	class="btn btn-primary btn-compare">
																	<i class="material-icons">equalizer</i><span>Compare</span>
																</button>
																<button type="button"
																	class="btn btn-primary btn-quickview"
																	data-toggle="modal" data-target="#product_view">
																	<i class="material-icons">visibility</i><span>Quick
																		View</span>
																</button> -->
							</div>
						</div>
					</div>
				</div>
			</div>	
			<%
			}
			%>
		</div>
	</div>

<%@ include file="footer.jsp"%>
</html>
