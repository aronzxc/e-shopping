<%@include file="../shared/flows-header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div>
	<div class="container col-md-6">

		<div class="card shadow">
			<h3 class="card-header text-white">Sign Up - Personal</h3>
			<div class="card-block">
				<div class="card-body">
					<sf:form method="POST" modelAttribute="user"
						class="form-horizontal" id="registerForm">


						<div class="form-group row">
							<label for="firstName" class="col-sm-4 col-form-label text-right">First Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="firstName" id="firstName" class="form-control"
									placeholder="First Name" />
								<sf:errors path="firstName" cssClass="help-block" element="em" />
							</div>
						</div>


						<div class="form-group row">
							<label for="lastName" class="col-sm-4 col-form-label text-right">Last Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="lastName" id="lastName" class="form-control"
									placeholder="Last Name" />
								<sf:errors path="lastName" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="email" class="col-sm-4 col-form-label text-right">Email</label>
							<div class="col-md-8">
								<sf:input type="text" path="email" id="email" class="form-control"
									placeholder="email@email.com" />
								<sf:errors path="email" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="contactNumber" class="col-sm-4 col-form-label text-right">Contact Number</label>
							<div class="col-md-8">
								<sf:input type="text" path="contactNumber" id="contactNumber" class="form-control"
									placeholder="XXXXXXXXX" maxlength="10" />
								<sf:errors path="contactNumber" cssClass="help-block"
									element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="password" class="col-sm-4 col-form-label text-right">Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="password" id="password" class="form-control"
									placeholder="Password" />
								<sf:errors path="password" cssClass="help-block" element="em" />
							</div>
						</div>
						
						<div class="form-group row">
							<label for="confirmPassword" class="col-sm-4 col-form-label text-right">Confirm Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="confirmPassword" id="confirmPassword" class="form-control"
									placeholder="Re-enter Password" />
								<sf:errors path="confirmPassword" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group row">
							<label for="role" class="col-sm-4 col-form-label text-right">Select Role</label>
							<div class="col-md-8">
								<label class="radio-inline"> <sf:radiobutton path="role"
										value="USER" checked="checked" /> User
								</label> 
								<label class="radio-inline"> <sf:radiobutton
										path="role" value="SUPPLIER" /> Supplier
								</label>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<button type="submit" name="_eventId_billing"
									class="btn btn-outline-primary float-right">
									Next - Billing <span class="glyphicon glyphicon-chevron-right"></span>
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
