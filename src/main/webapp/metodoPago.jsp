<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!-- End Hero Section -->
<div class="untree_co-section" style="padding: 3rem 0;">
	<div class="container">
		<div class="row">
			<div class="col-md-6 mb-5 mb-md-0">
				<div class="form-group row"></div>
				<div class="row mb-5">
					<div class="col-md-12">
						<h2 class="h3 mb-3 text-black">Método de pago</h2>
						<div class="p-3 p-lg-5 border bg-white">
							<form action="ProcesarPagoPedidoServlet" method="post"
								class="row">
								<div class="col-md-12">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="form-check-input text-black mb-3" type="radio"
											name="metodoPago" value="paypal" checked> PayPal
										</label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="form-check-input text-black mb-3" type="radio"
											name="metodoPago" value="bizum"> Bizum
										</label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="form-check-input text-black mb-3" type="radio"
											name="metodoPago" value="tarjeta"> Tarjeta Crédito
										</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group pt-4">
										<input type="submit"
											class="btn btn-black btn-lg py-2 btn-block" value="Continuar">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group pt-4">
										<a href="PagarServlet"
											style="background: #f0f0f0; color: black;"
											class="btn btn-black btn-lg py-2 btn-block">Volver</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
</body>

</html>