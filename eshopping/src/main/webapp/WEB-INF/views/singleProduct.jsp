<div class="container">
	<!-- Breadcrumb -->
	<div class="row">
		<div class="col-lg-12">
			<ol class="breadcrumb shadow">
				<li class="breadcrumb-item"><a href="${contextRoot}/home/">Home</a></li>
				<li class="breadcrumb-item"><a
					href="${contextRoot}/show/all/products">Products</a></li>
				<li class="breadcrumb-item active">${product.name}</li>
			</ol>
		</div>
	</div>

	<div class="row bg-white p-5 rounded border-left border-primary shadow">
		<!-- Display Product Image -->
		<div class="col-xs-12 col-sm-4">
			<div class="thumbnail shadow">
				<img src="${images}/${product.code}.jpg"
					class="img img-thumbnail img-responsive"></img>
			</div>
		</div>

		<!-- Display Product Description -->
		<div class="col-xs-12 col-sm-8">
			<h3>${product.name}</h3>
			<hr />
			<p>${product.description}</p>
			<hr />
			<h4>
				Price: <strong> &#8369; ${product.unitPrice}</strong>
			</h4>
			<hr />

			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h6>
						Qty. Available: <span style="color: red">Out of Stock</span>
					</h6>
				</c:when>
				<c:otherwise>
					<h6>Qty. Available: ${product.quantity}</h6>
				</c:otherwise>
			</c:choose>

			<security:authorize access="hasAuthority('USER')">
			<c:choose>
				<c:when test="${product.quantity < 1}">
					<a href="javascript:void(0)"
						class="btn btn-outline-success disabled"><strike> <span
						class="glyphicon glyphicon-shopping-cart"></span>Add to Cart
					</strike></a>
				</c:when>
				<c:otherwise>
					<a href="${contextRoot}/cart/add/${product.id}/product"
						class="btn btn-outline-success"> <span
						class="glyphicon glyphicon-shopping-cart"></span>Add to Cart
					</a>
				</c:otherwise>
			</c:choose>
			</security:authorize>
			
			<security:authorize access="hasAuthority('ADMIN')">
			
			<a href="${contextRoot}/manage/${product.id}/product"
						class="btn btn-outline-warning"> <span
						class="glyphicon glyphicon-pencil"></span>Edit
					</a>
			
			</security:authorize>

			<a href="${contextRoot}/show/all/products" class="btn btn-outline-primary">Back</a>
		</div>

	</div>

</div>