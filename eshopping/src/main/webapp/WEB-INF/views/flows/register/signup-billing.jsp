<%@include file="../shared/flows-header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="mx-auto">
	<div class="container col-md-6">

		<div class="card">
			<h3 class="card-header text-white">Sign Up - Address</h3>
			<div class="card-block">
				<div class="card-body mx-auto">
					<sf:form method="POST" modelAttribute="billing"
						class="form-horizontal" id="billingForm">


						<div class="form-group row">
							<label class="col-sm-4 col-form-label text-right"
								for="addressLineOne">Address Line One</label>
							<div class="col-md-8">
								<sf:input type="text" path="addressLineOne" class="form-control"
									placeholder="Enter Address Line One" />
								<sf:errors path="addressLineOne" cssClass="help-block"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label text-right"
								for="addressLineTwo">Address Line Two</label>
							<div class="col-md-8">
								<sf:input type="text" path="addressLineTwo" class="form-control"
									placeholder="Enter Address Line Two" />
								<sf:errors path="addressLineTwo" cssClass="help-block"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label text-right" for="city">City</label>
							<div class="col-md-8">
								<sf:input type="text" path="city" class="form-control"
									placeholder="Enter City Name" />
								<sf:errors path="city" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label text-right"
								for="postalCode">Postal Code</label>
							<div class="col-md-8">
								<sf:input type="text" path="postalCode" class="form-control"
									placeholder="XXXXXX" />
								<sf:errors path="postalCode" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label text-right" for="state">State</label>
							<div class="col-md-8">
								<sf:input type="text" path="state" class="form-control"
									placeholder="Enter State Name" />
								<sf:errors path="state" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-4 col-form-label text-right" for="country">Country</label>
							<div class="col-md-8">
								<sf:input type="text" path="country" class="form-control"
									placeholder="Enter Country Name" />
								<sf:errors path="country" cssClass="help-block" element="em" />
							</div>
						</div>


						<div class="form-group row mx-auto">
							<div class="col-md-offset-12 col-md-12">
								<button type="submit" name="_eventId_personal"
									class="btn btn-outline-primary  float-left">
									<span class="glyphicon glyphicon-chevron-left"></span> Back -
									Personal
								</button>
								<button type="submit" name="_eventId_confirm"
									class="btn btn-outline-primary  float-right">
									Next - Confirm<span class="glyphicon glyphicon-chevron-right"></span>
								</button>
							</div>
						</div>


					</sf:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>
