<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!-- Start Hero Section -->
<div class="hero">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-lg-5">
				<div class="intro-excerpt">
					<h1>Cambiar Clave</h1>
				</div>
			</div>
			<div class="col-lg-7"></div>
		</div>
	</div>
</div>
<!-- End Hero Section -->
<div class="untree_co-section" style="padding: 3rem 0;">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<form action="CambiarClaveServlet" method="post" class="row">
					<div class="col-md-8">
						<div class="form-group">
							<label for="nuevaClave" class="text-black">Nueva
								Contraseña <span class="text-danger">*</span>
							</label> <input type="password" class="form-control" id="nuevaClave"
								name="nuevaClave" required>
						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<label for="clave" class="text-black">Contraseña <span
								class="text-danger">*</span></label> <input type="password"
								class="form-control" id="clave" name="clave" required>
						</div>
					</div>
					<div class="col-md-8">
						<div class="form-group">
							<label for="claveRepetida" class="text-black">Repetir
								Contraseña <span class="text-danger">*</span>
							</label> <input type="password" class="form-control" id="claveRepetida"
								name="claveRepetida" required>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group pt-4">
							<input type="submit" class="btn btn-black btn-lg py-2 btn-block"
								value="Cambiar Contraseña"></input>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group pt-4">
							<a href="EditarPerfilServlet"
								style="background: #f0f0f0; color: black;"
								class="btn btn-black btn-lg py-2 btn-block">Volver</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
</html>
