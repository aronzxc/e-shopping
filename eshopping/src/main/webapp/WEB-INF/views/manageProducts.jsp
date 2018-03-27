
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div>
	<div class="container col-md-6">

		<c:if test="${not empty message}">
			<div class="col-xs-12">
				<div class="alert alert-success alert-dismissible">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>
			</div>
		</c:if>
		<div class="card">
			<h3 class="card-header text-white">Product Management</h3>
			<div class="card-block">
				<div class="card-body">

					<!-- FORM ELEMENTS -->

					<sf:form modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group row">
							<label for="name" class="col-sm-4 col-form-label text-right">Enter
								Product Name:</label>
							<div class="col-md-8">
								<sf:input type="text" class="form-control" path="name" id="name"
									placeholder="Product Name" />
								<sf:errors path="name" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="brand" class="col-sm-4 col-form-label text-right">Enter
								Brand Name:</label>
							<div class="col-md-8">
								<sf:input type="text" class="form-control" path="brand"
									id="brand" placeholder="Brand Name" />
								<sf:errors path="brand" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="description"
								class="col-sm-4 col-form-label text-right">Product
								Description:</label>
							<div class="col-md-8">
								<sf:textarea class="form-control" path="description"
									id="description" rows="4" placeholder="Product Description..."></sf:textarea>
								<sf:errors path="description" cssClass="help-block" element="em" />
							</div>
						</div>


						<div class="form-group row">
							<label for="unitPrice" class="col-sm-4 col-form-label text-right">Enter
								Unit Price:</label>
							<div class="col-md-8">
								<sf:input type="number" class="form-control" path="unitPrice"
									id="unitPrice" placeholder="Unit Price" />
								<sf:errors path="unitPrice" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="quantity" class="col-sm-4 col-form-label text-right">Quantity:</label>
							<div class="col-md-8">
								<sf:input type="number" class="form-control" path="quantity"
									id="quantity" placeholder="Quantity" />
							</div>
						</div>

						<!-- File element for image upload -->
						<div class="form-group row">
							<label for="file" class="col-sm-4 col-form-label text-right">Select
								Image:</label>
							<div class="col-md-8">
								<sf:input type="file" class="form-control" path="file" id="file" />
								<sf:errors path="file" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="categoryId"
								class="col-sm-4 col-form-label text-right">Select
								Category:</label>
							<div class="col-md-8">
								<sf:select class="form-control" id="categoryId"
									path="categoryId" items="${categories}" itemLabel="name"
									itemValue="id" />
								<c:if test="${product.id == 0}">
									<br />
									<button type="button" data-toggle="modal"
										data-target="#myCategoryModal"
										class="btn btn-warning btn-xs float-right"
										data-toggle="tooltip" title="Add Category">
										<span class="glyphicon-plus"></span>
									</button>
								</c:if>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<button type="submit" name="submit" id="submit"
									class="btn btn-primary float-right">Submit</button>

								<!-- Hidden Fields for Products -->
								<sf:hidden path="id" />
								<sf:hidden path="code" />
								<sf:hidden path="supplierId" />
								<sf:hidden path="active" />
								<sf:hidden path="purchases" />
								<sf:hidden path="views" />
							</div>
						</div>


					</sf:form>


				</div>
			</div>
		</div>
	</div>
	<hr />
	<div class="container">

		<div class="col-lg-12">
			<h3>Available Products</h3>
			<hr />
		</div>

		<div class="col-sm-12">
			<div style="overflow: auto">
				<!-- Table for Admin -->
				<table id="adminProductsTable" class="table table-bordered">

					<thead>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Brand</th>
							<th>Name</th>
							<th>Quantity</th>
							<th>Unit Price</th>
							<th>Activate</th>
							<th>Edit</th>
						</tr>
					</thead>

					<tfoot>
						<tr>
							<th>Id</th>
							<th>&#160;</th>
							<th>Brand</th>
							<th>Name</th>
							<th>Qty. Avail</th>
							<th>Unit Price</th>
							<th>Activate</th>
							<th>Edit</th>
						</tr>
					</tfoot>


				</table>
			</div>
		</div>


	</div>

	<div class="modal fade" id="myCategoryModal" role="dialog"
		tabindex="-1">
		<div class="modal-dialog bg-secondary" role="document">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
					<h4 class="modal-title">Add New Category</h4>
				</div>
				<div class="modal-body">
					<!-- Category Form -->
					<sf:form id="categoryForm" modelAttribute="category"
						action="${contextRoot}/manage/category" method="POST"
						class="form-horizontal">

						<div class="form-group">
							<label for="category_name" class="control-label col-md-4">Category Name</label>
								<sf:input type="text" id="category_name" path="name" class="form-control"/>
						</div>
						<div class="form-group">
							<label for="category_description" class="control-label col-md-8">Category Description</label>
								<sf:textarea cols="" rows="5" path="description" id="category_description" class="form-control"/>
						</div>
						<div class="form-group">
							<div class="col-md-offset-4 col-md-8">
								<input type="submit" value="Add Category" class="btn btn-primary" />
							</div>
						</div>

					</sf:form>
				</div>
			</div>
		</div>
	</div>
</div>