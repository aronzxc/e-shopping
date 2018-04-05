<%@include file="../shared/flows-header.jsp"%>
<div class="row mx-auto">

	<!-- column to display the personal details -->
	<div class="col-sm-6">

		<div class="card">
			<div class="card-block">
				<h4 class="card-header text-white">Personal Details</h4>
			</div>
			<div class="card-body">
				<!-- code to display the personal details -->
			</div>
			<div class="card-footer">
				<!-- anchor to move to the edit of personal details -->
				<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary mt-0">Edit</a>

			</div>
		</div>

	</div>

	<!-- column to display the address  -->
	<div class="col-sm-6">

		<div class="card">
			<div class="card-block">
				<h4 class="card-header text-white">Billing Address</h4>
			</div>
			<div class="card-body">
				<!-- code to display the communication address -->
			</div>
			<div class="card-footer">
				<!-- anchor to move to the edit of address -->
				<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary mt-0">Edit</a>

			</div>
		</div>

	</div>

</div>
<!-- to provide the confirm button after displaying the details -->
<div>
	<div class="col-md-12 col-md-offset-12 p-3">

		<div class="text-center">

			<a href="${flowExecutionUrl}&_eventId_success" class="btn btn-primary">Confirm</a>

		</div>

	</div>
</div>
<%@include file="../shared/flows-footer.jsp"%>
