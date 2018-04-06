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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

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

		<%@include file="./shared/navbar.jsp"%>


		<!-- Page Content -->


		<div class="content">

			<!-- Loading the Home Content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>


			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>

			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Load only when user clicks products -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>

			<!-- Load only when user clicks show products -->
			<c:if test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>

			<!-- Load only when user clicks manage products -->
			<c:if test="${userClickManageProducts == true}">
				<%@include file="manageProducts.jsp"%>
			</c:if>

		</div>
	</div>



	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/jquery.validate.js"></script>

	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- Datatable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>

	<!-- Datatable Bootstrap Script -->
	<script src="${js}/dataTables.bootstrap4.js"></script>

	<!-- Bootbox -->
	<script src="${js}/bootbox.min.js"></script>


	<!-- Self Coded javascript -->
	<script src="${js}/myapp.js"></script>


</body>
</html>

