<%@include file="../shared/flows-header.jsp"%>
<div class="row mx-auto">
	<!-- column to display the personal details -->
	<div class="col-sm-6">
		<div class="card text-center shadow c-height">
			<div class="card-block">
				<h4 class="card-header text-white">Personal Details</h4>
			</div>
			<div class="card-body">
				
				<div class="text-center">
					<h4>${registerModel.user.firstName} ${registerModel.user.lastName}</h4>
					<h5>Email: ${registerModel.user.email}</h5>
					<h5>Contact Number: ${registerModel.user.contactNumber}</h5>
					<h5>Role: ${registerModel.user.role}</h5>
				</div>
				<hr>
				<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-outline-primary mt-0">Edit</a>
			</div>
		</div>
	</div>

	<!-- column to display the address  -->
	<div class="col-sm-6">
		<div class="card text-center shadow c-height">
			<div class="card-block">
				<h4 class="card-header text-white">Billing Address</h4>
			</div>
			<div class="card-body">
				<div class="text-center">
					<h4>${registerModel.billing.addressLineOne}</h4>
					<h4>${registerModel.billing.addressLineTwo}</h4>
					<h4>${registerModel.billing.city} - ${registerModel.billing.postalCode}</h4>
					<h4>${registerModel.billing.state} - ${registerModel.billing.country}</h4>
				</div>
				<hr>
				<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-outline-primary mt-0">Edit</a>
			</div>
		</div>
	</div>
</div>
<!-- to provide the confirm button after displaying the details -->
<div>
	<div class="col-md-12 col-md-offset-12 p-3">

		<div class="text-center">

			<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-lg btn-primary">Confirm</a>

		</div>

	</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>
