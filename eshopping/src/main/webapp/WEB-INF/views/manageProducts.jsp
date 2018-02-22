
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
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
					action="${contextRoot}/manage/products"
					method="POST"
					enctype="multipart/form-data">
				
					<div class="form-group row">
						<label for="name" class="col-sm-4 col-form-label text-right">Enter Product Name:</label>
							<div class="col-md-8">
					      		<sf:input type="text" class="form-control" path="name" id="name" placeholder="Product Name" />
					      		<sf:errors path="name" cssClass="help-block" element="em" />
					    	</div>
					</div>
					
					<div class="form-group row">
						<label for="brand" class="col-sm-4 col-form-label text-right">Enter Brand Name:</label>
							<div class="col-md-8">
					      		<sf:input type="text" class="form-control" path="brand" id="brand" placeholder="Brand Name" />
					      		<sf:errors path="brand" cssClass="help-block" element="em" />
					    	</div>
					</div>
					
					<div class="form-group row">
    					<label for="description" class="col-sm-4 col-form-label text-right">Product Description:</label>
    					<div class="col-md-8">
					      	<sf:textarea class="form-control" path="description" id="description" rows="4" placeholder="Product Description..."></sf:textarea>
					    	<sf:errors path="description" cssClass="help-block" element="em" />
					    </div>
   					</div>
					
					
					<div class="form-group row">
						<label for="unitPrice" class="col-sm-4 col-form-label text-right">Enter Unit Price:</label>
							<div class="col-md-8">
					      		<sf:input type="number" class="form-control" path="unitPrice" id="unitPrice" placeholder="Unit Price" />
					      		<sf:errors path="unitPrice" cssClass="help-block" element="em" />
					    	</div>
					</div>
					
					<div class="form-group row">
						<label for="quantity" class="col-sm-4 col-form-label text-right">Quantity:</label>
						<div class="col-md-8">
							<sf:input type="number" class="form-control" path="quantity" id="quantity" placeholder="Quantity" />
						</div>
					</div>
					
					<!-- File element for image upload -->
					<div class="form-group row">
						<label for="file" class="col-sm-4 col-form-label text-right">Select Image:</label>
						<div class="col-md-8">
							<sf:input type="file" class="form-control" path="file" id="file" />
							<sf:errors path="file" cssClass="help-block" element="em" />
						</div>
					</div>
					
					<div class="form-group row">
    					<label for="categoryId" class="col-sm-4 col-form-label text-right">Select Category:</label>
    					<div class="col-md-8">
    						<sf:select class="form-control" id="categoryId" path="categoryId" 
    							items="${categories}"
    							itemLabel="name"
    							itemValue="id"
    						/>
    					</div>		
  					</div>
					
					<div class="form-group row">
						<div class="col-md-12">
						<button type="submit" name="submit" id="submit" class="btn btn-primary float-right">Submit</button>
						
						<!-- Hidden Fields for Products -->
						<sf:hidden path="id"/>
						<sf:hidden path="code"/>
						<sf:hidden path="supplierId"/>
						<sf:hidden path="active"/>
						<sf:hidden path="purchases"/>
						<sf:hidden path="views"/>
						</div>	
					</div>
									
					
				</sf:form>
				
				
			</div>
		</div>
	</div>	
</div>
<hr/>
<div class="container">

	<div class="col-lg-12">
		<h3>Available Products</h3>
		<hr/>
	</div>
	
	<div class="col-sm-12">
		<div style="overflow:auto">
			<!-- Table for Admin -->
			<table id="adminProductsTable" class="table table-bordered">
							
				<thead>					
					<tr>					
						<th>Id</th>
						<th>&#160;</th>
						<th>Name</th>
						<th>Qty. Avail</th>
						<th>Unit Price</th>
						<th>Activate</th>				
						<th>Edit</th>
					</tr>					
				</thead>
				
				<tbody>
					<tr>
						<td>4</td>
						<td>
							<img class="adminDataTableImg" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg"
							alt=" Macbook Pro"/>
						</td>
						<td> Macbook Pro</td>
						<td>3</td>
						<td>&#8369; 54000.00</td>
						<td>
							<!-- Toggle Switch -->
							<label class="switch">
								<input type="checkbox" checked="checked" value="4" />
								<div class="slider round"></div>
							</label>
						</td>
						<td>
							<a href="${contextRoot}/manage/4/product" class="btn btn-warning">
								<span class="glyphicon glyphicon-pencil"></span>
							</a>
						</td>
					</tr>
					
					<tr>
						<td>4</td>
						<td>
							<img class="adminDataTableImg" src="${contextRoot}/resources/images/PRDMNO123PQRX.jpg"
							alt=" Macbook Pro"/>
						</td>
						<td> Macbook Pro</td>
						<td>3</td>
						<td>&#8369; 54000.00</td>
						<td>
							<!-- Toggle Switch -->
							<label class="switch">
								<input type="checkbox" value="4" />
								<div class="slider round"></div>
							</label>
						</td>
						<td>
							<a href="${contextRoot}/manage/4/product" class="btn btn-warning">
								<span class="glyphicon glyphicon-pencil"></span>
							</a>
						</td>
					</tr>
				</tbody>
				
				<tfoot>
					<tr>					
						<th>Id</th>
						<th>&#160;</th>
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