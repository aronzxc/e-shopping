<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
	<div class="container">
		<a class="navbar-brand" id="home" href="${contextRoot}/home">Shopping
			Online</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav mr-auto">

				<li class="nav-item" id="listProducts">
					<a class="nav-link" href="${contextRoot}/show/all/products">Products</a>
				</li>
				<li class="nav-item" id="about">
					<a class="nav-link" href="${contextRoot}/about">About</a>
				</li>
				<li class="nav-item" id="contact">
					<a class="nav-link" href="${contextRoot}/contact">Contact</a>
				</li>
				
				<security:authorize access="hasAuthority('ADMIN')">
					<li class="nav-item" id="manageProducts">
						<a class="nav-link" href="${contextRoot}/manage/products">Manage Products</a>
					</li>
				</security:authorize>
				
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="isAnonymous()">
					<li class="nav-item" id="register">
						<a class="nav-link" href="${contextRoot}/register">Sign Up</a>
					</li>
					<li class="nav-item" id="login">
						<a class="nav-link" href="${contextRoot}/login">Login</a>
					</li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li class="nav-item dropdown">
						<a href="javascript:void(0)"
							class="nav-link dropdown-toggle"
							id="dropdownMenu1"
							data-toggle="dropdown">
							${userModel.fullName}
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							
							<security:authorize access="hasAuthority('USER')">
								<li>
									<a href="${contextRoot}/cart" class="dropdown-item">
										<span class="glyphicon glyphicon-shopping-cart"></span>
										<span class="badge badge-danger">${userModel.cart.cartLines}</span>
										- &#8369; ${userModel.cart.grandTotal}
									</a>
								</li>
								<li class="dropdown-divider" role="separator"></li>
							</security:authorize>
							
							<li>
								<a href="${contextRoot}/logout" class="dropdown-item">Logout</a>
							</li>
						</ul>
					
					</li>
				</security:authorize>
			</ul>
			
		</div>
	</div>
</nav>

<script>
	
	window.userRole = '${userModel.role}';
	
</script>

