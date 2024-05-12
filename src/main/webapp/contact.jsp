<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${locale}" scope="session" />
<fmt:setBundle basename="messages" scope="session" />
<%@ include file="header.jsp"%>
<!-- Start Hero Section -->
<div class="hero">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-lg-5">
				<div class="intro-excerpt">
					<h1>
						<fmt:message key="contact" />
					</h1>
				</div>
				<a href="?lang=en">English</a> <a href="?lang=es">Español</a>
			</div>
		</div>
	</div>
</div>
<!-- End Hero Section -->


<!-- Start Contact Form -->
<div class="untree_co-section">
	<div class="container">

		<div class="block">
			<div class="row justify-content-center">


				<div class="col-md-8 col-lg-8 pb-4">
					<form action="ContactServlet" method="post">
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label class="text-black" for="fname"><fmt:message key="name" /></label> <input
										type="text" class="form-control" id="name" name="name">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label class="text-black" for="lname"><fmt:message key="lastName" /></label> <input
										type="text" class="form-control" id="apellido" name="apellido">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="text-black" for="email"><fmt:message key="email" /></label> <input
								type="email" class="form-control" id="email" name="email">
						</div>

						<div class="form-group mb-5">
							<label class="text-black" for="message"><fmt:message key="message" /></label>
							<textarea name="mensaje" class="form-control" id="message"
								cols="30" rows="5"></textarea>
						</div>

						<button type="submit" class="btn btn-primary-hover-outline"><fmt:message key="send" /></button>
					</form>

				</div>

			</div>

		</div>

	</div>


</div>

<!-- End Contact Form -->
<%@ include file="footer.jsp"%>
</body>

</html>
