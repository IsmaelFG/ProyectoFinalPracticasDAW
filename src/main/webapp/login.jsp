<%@ include file="header.jsp"%>
<!-- Start Hero Section -->
<div class="hero">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-lg-5">
				<div class="intro-excerpt">
					<h1>Login</h1>
				</div>
			</div>
			<div class="col-lg-7"></div>
		</div>
	</div>
</div>
<!-- End Hero Section -->
<div class="untree_co-section" style="padding: 3rem 0;">
	<div class="container">
		<div class="col-md-12 pb-4">
			<div class="border p-4 rounded" role="alert">
				No est�s registrado? <a href="RegistroServlet">Haz clic aqu�</a>
				para registrarte
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 mb-5 mb-md-0">
				<form action="LoginServlet" method="post" class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label for="c_fname" class="text-black">Email <span
								class="text-danger">*</span></label> <input type="email"
								class="form-control" id="c_fname" name="email">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label for="c_lname" class="text-black">Password <span
								class="text-danger">*</span></label> <input type="password"
								class="form-control" id="c_lname" name="clave">
						</div>
					</div>
					<div class="col-md-12"><p style="color: red; margin-top: 10px; margin-left: 5px; font-size: 15px;"><%=request.getAttribute("error") != null ? request.getAttribute("error") : ""%></p></div>
					<div class="col-md-6">
						<div class="form-group pt-4">
							<input type="submit" class="btn btn-black btn-lg py-2 btn-block"
								value="Iniciar Sesion"></input>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group pt-4">
							<a href="/TIENDA_ISMAEL_FERRERAS"
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
