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

<style type="text/css">
blockquote{
  display:block;
  padding: 15px 20px 15px 15px;
  margin: 0 0 20px;
  position: relative;
  word-wrap:break-word;
  
  /*Font*/
  color: #666;
  text-align: justify;
  
  /*Borders - (Optional)*/
  border-left: 10px solid #0080ff;
  /*border-right: 2px solid #0080ff;*/
  
  /*Box Shadow - (Optional)*/
  -moz-box-shadow: 2px 2px 15px #ccc;
  -webkit-box-shadow: 2px 2px 15px #ccc;
  box-shadow: 2px 2px 15px #ccc;
}

blockquote::before{
   /*Unicode for Left Double Quote*/
  
  /*Font*/
  font-size: 60px;
  font-weight: bold;
  color: #999;
  
  /*Positioning*/
  position: absolute;
  left: 10px;
  top:5px;
}

blockquote::after{
  /*Reset to make sure*/
  content: "";
}

blockquote a{
  text-decoration: none;
  background: #eee;
  cursor: pointer;
  padding: 0 3px;
  color: #c76c0c;
}

blockquote a:hover{
 color: #666;
}

blockquote em{
  font-style: italic;
}
</style>

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">
<link href="${css}/glyphicons.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap minty CSS -->
<link href="${css}/bootstrap.minty.css" rel="stylesheet">



</head>

<body>

	<div class="wrapper">

		<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
			<div class="container">
				<a class="navbar-brand" id="home" href="${contextRoot}/home">Home</a>
			</div>
		</nav>

		<div class="container">
			<div class="jumbotron">
				<h1>${errorTitle}</h1>
				<hr />
				
				<blockquote>${errorDescription}</blockquote>

			</div>
		</div>


	</div>
	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- Datatable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>

	<!-- Datatable Bootstrap Script -->
	<script src="${js}/dataTables.bootstrap4.js"></script>


	<!-- Self Coded javascript -->
	<script src="${js}/myapp.js"></script>


</body>

</html>

