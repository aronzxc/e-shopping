<div class="container">
	<c:choose>
		<c:when test="${not empty cartLines}">
			<table id="cart" class="table table-borderless">
				<thead>
					<tr>
						<th style="width: 50%">Product</th>
						<th style="width: 10%">Price</th>
						<th style="width: 8%">Quantity</th>
						<th style="width: 22%" class="text-center">Subtotal</th>
						<th style="width: 10%"></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${cartLines}" var="cartLine">
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-sm">
										<img src="${images}/${cartLine.product.code}.jpg" alt="${cartLine.product.name}"
											class="img-responsive cartImg" />
									</div>
									<div class="col-sm-10">
										<h4 class="nomargin">${cartLine.product.name}
										<c:if test="${cartLine.available == false}">
											<strong class="unavailable">(Not Available)</strong>
										</c:if>
										</h4>
										<p>Brand - ${cartLine.product.name}</p>
										<p>Description - ${cartLine.product.description}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">&#8369; ${cartLine.buyingPrice}</td>
							<td data-th="Quantity"><input type="number"
								class="form-control text-center" value="${cartLine.productCount}"></td>
							<td data-th="Subtotal" class="text-center">&#8369; ${cartLine.total}</td>
							<td class="actions" data-th="">
								<button class="btn btn-outline-info btn-sm">
									<span class="glyphicon glyphicon-refresh"></span>
								</button>
								<button class="btn btn-outline-danger btn-sm">
									<span class="glyphicon glyphicon-trash"></span>
								</button>
							</td>
						</tr>
					</c:forEach>


				</tbody>
				<tfoot>
					<tr>
						<td><a href="#" class="btn btn-outline-warning"><span
								class="glyphicon glyphicon-chevron-left"></span> Continue
								Shopping</a></td>
						<td colspan="2" class="hidden-sm"></td>
						<td class="hidden-sm text-center"><strong>Total: &#8369; ${userModel.cart.grandTotal}</strong></td>
						<td><a href="#" class="btn btn-outline-success btn-block">Checkout
								<span class="glyphicon glyphicon-chevron-right"></span>
						</a></td>
					</tr>
				</tfoot>
			</table>
		</c:when>
		<c:otherwise>
			<div class="jumbotron">
				<div class="text-center">
					<h1>Your Cart is empty!</h1>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</div>