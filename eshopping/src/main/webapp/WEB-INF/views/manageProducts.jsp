
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<div class="container col-md-8">
	<div class="card">
		<h3 class="card-header text-white">Product Management</h3>
		<div class="card-block">
			<div class="card-body">
			
			
				<sf:form modelAttribute="product">
					<div class="form-group">
						<label for="name" class="control-label">Enter Product Name:</label>
							<sf:input type="text" class="form-control" path="name" id="name" placeholder="Product Name" />
							<em class="help-block">Please Enter Product Name!</em>
					</div>
					
					<div class="form-group">
						<label for="brand" class="control-label">Enter Brand Name:</label>
							<sf:input type="text" class="form-control" path="brand" id="brand" placeholder="Brand Name" />
							<em class="help-block">Please Enter Brand Name!</em>
					</div>
					
					<div class="form-group">
    					<label for="description" class="control-label">Product Description:</label>
    					<sf:textarea class="form-control" path="description" id="description" rows="4" placeholder="Product Description..."></sf:textarea>
  					</div>
					
					<div class="form-group">
						<label for="unitPrice" class="control-label">Enter Unit Price:</label>
							<sf:input type="number" class="form-control" path="unitPrice" id="unitPrice" placeholder="Unit Price" />
					</div>
					
					<div class="form-group">
						<label for="quantity" class="control-label">Quantity:</label>
							<sf:input type="number" class="form-control" path="quantity" id="quantity" placeholder="Quantity" />
					</div>
					
					<div class="form-group">
    					<label for="categoryId" class="control-label">Select Category:</label>
    						<sf:select class="form-control" id="categoryId" path="categoryId" 
    							items="${categories}"
    							itemLabel="name"
    							itemValue="id"
    						/>	
  					</div>
					
					
					<div class="form-group">
						<label for="exampleInputFile">File input</label> <input
							type="file" class="form-control-file" id="exampleInputFile"
							aria-describedby="fileHelp"> <small id="fileHelp"
							class="form-text text-muted">This is some placeholder
							block-level help text for the above input. It's a bit lighter and
							easily wraps to a new line.</small>
					</div>
					
					<div class="form-group">
						<button type="submit" name="submit" id="submit" class="btn btn-primary">Submit</button>
						
						<!-- Hidden Fields for Products -->
						<sf:hidden path="id"/>
						<sf:hidden path="code"/>
						<sf:hidden path="supplierId"/>
						<sf:hidden path="active"/>
						<sf:hidden path="purchases"/>
						<sf:hidden path="views"/>	
					</div>
									
					
				</sf:form>
				
				
			</div>
		</div>
	</div>
</div>