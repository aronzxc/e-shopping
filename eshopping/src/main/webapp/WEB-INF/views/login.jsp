<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>E-Shopping - ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap minty CSS -->
<link href="${css}/bootstrap.minty.css" rel="stylesheet">

<!-- Bootstrap DATATABLES -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">
<link href="${css}/glyphicons.css" rel="stylesheet">

</head>

<body>

	<div class="wrapper">


		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
				</div>
			</div>
		</nav>


		<!-- Page Content -->
		<div class="content">

			<div>
				<div class="container col-sm-4">

					<c:if test="${not empty message}">
						<div class="col-xs-12">
							<div class="alert alert-danger">
								<!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->
								${message}
							</div>
						</div>
					</c:if>
					
					<div class="card">
						<h3 class="card-header text-white">Login</h3>
						<div class="card-block">
							<div class="card-body pb-0">

								<!-- FORM ELEMENTS -->

								<form action="${contextRoot}/login" method="POST" id="loginForm">
									<div class="form-group row">
										<label for="username"
											class="col-sm-4 col-form-label text-left">Email:</label>
										<div class="col-sm-8">
											<input type="text" name="username" id="username"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<label for="password"
											class="col-sm-4 col-form-label text-left">Password:
										</label>
										<div class="col-sm-8">
											<input type="password" name="password" id="password"
												class="form-control" />
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-12">
											<input type="submit" value="Login" class="btn btn-outline-primary float-right" />
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										</div>
									</div>
								</form>

							</div>
							<div class="card-footer bg-white">
								<div class="text-right">
									New User - <a href="${contextRoot}/register">Register Here</a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>



	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/jquery.validate.js"></script>

	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- Self Coded javascript -->
	<script src="${js}/myapp.js"></script>


</body>
</html>

