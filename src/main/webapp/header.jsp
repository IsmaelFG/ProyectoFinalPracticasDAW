<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="curso.java.tienda.model.UsuarioVO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="curso.java.tienda.dao.ProductoDAO"%>
<%@ page import="java.util.List,curso.java.tienda.model.ProductoVO"%>
<!doctype html>
<html lang="es">
<head>
<title>Eternal Elegance</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Demo powered by Templatetrip">
<meta name="author" content="Ismael Ferreras García">
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900"
	rel="stylesheet">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="css/styles.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/owl-carousel.css" rel="stylesheet">
<link href="css/lightbox.css" rel="stylesheet">

<!-- Custom styles for this template -->
</head>

<body class="index layout1">

	<header class="header-area header-sticky text-center header-default">
		<div class="header-main-sticky">
			<div class="header-main-head">
				<div class="header-main">
					<div class="container">
						<div
							class="header-middle float-lg-left float-md-left float-sm-left float-xs-none">
							<div class="logo">
								<a href="/TIENDA_ISMAEL_FERRERAS/"><img
									src="img/logos/logo.png"></a>
							</div>
						</div>
						<div
							class="header-right d-flex d-xs-flex d-sm-flex justify-content-end float-right">
							<div class="user-info">
								<button type="button" class="btn">
									<i class="material-icons">perm_identity</i>
								</button>
								<div id="user-dropdown" class="user-menu">
									<ul>
										<%
										if (session.getAttribute("usuario") != null) {
											UsuarioVO u = (UsuarioVO) session.getAttribute("usuario");
										%>
										<li><a href="EditarPerfilServlet" class="text-capitalize">Cuenta</a></li>
										<li><a href="ListadoPedidosServlet" class="text-capitalize">Pedidos</a></li>
										<li><a href="LogoutServlet" class="text-capitalize">Cerrar Sesión</a></li>
										<%
										} else {
										%>
										<li><a href="RegistroServlet" class="modal-view button">Registro</a></li>
										<li><a href="LoginServlet" class="modal-view button">Iniciar
												Sesión</a></li>
										<%
										}
										%>

									</ul>
								</div>
							</div>
							<div class="cart-wrapper">
								<button type="button" class="btn"
									onclick="window.location.href='CarritoServlet'">
									<i class="material-icons">shopping_cart</i> <span
										class="ttcount"> <%
 Map<ProductoVO, Integer> carrito = (Map<ProductoVO, Integer>) request.getSession().getAttribute("carrito");

 out.println(carrito != null ? carrito.size() : "");
 %>
									</span>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="menu">
					<div class="container">
						<!-- Navbar -->
						<nav
							class="navbar navbar-expand-lg navbar-light d-sm-none d-xs-none d-lg-block navbar-full">

							<!-- Navbar brand -->
							<a class="navbar-brand text-uppercase d-none" href="#">Navbar</a>

							<!-- Collapse button -->
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent2"
								aria-controls="navbarSupportedContent2" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<!-- Collapsible content -->
							<div class="collapse navbar-collapse">

								<!-- Links -->
								<ul class="navbar-nav m-auto justify-content-center">
									<li class="nav-item dropdown active"><a
										class="nav-link text-uppercase"
										href="/TIENDA_ISMAEL_FERRERAS/">Inicio<span
											class="sr-only">(current)</span>
									</a></li>
									<li class="nav-item dropdown mega-dropdown"><a
										class="nav-link text-uppercase" href="TiendaServlet">Catalogo</a>
									</li>
									<li class="nav-item dropdown"><a
										class="nav-link text-uppercase" href="ContactServlet">Contactar<span
											class="sr-only">(current)</span>
									</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/lightbox-2.6.min.js"></script>
	<script src="js/ResizeSensor.min.js"></script>
	<script src="js/theia-sticky-sidebar.min.js"></script>
	<script src="js/inview.js"></script>
	<script src="js/cookiealert.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/masonry.pkgd.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/jquery.lazy.min.js"></script>