$(function() {

	// Solving the active menu problem
	switch (menu) {
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'Home':
		$('#home').addClass('active');
		break;
	default:
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;
	}

	// to tackle the csrf token
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');

	if (token.length > 0 && header.length > 0) {

		// set the token for ajax request
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(header, token);
		});

	}

	// code for jquery datatable

	var $table = $('#productListTable');

	// execute the below code
	if ($table.length) {
		// console.log('Inside the Table');

		var jsonUrl = '';
		if (window.categoryID == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		} else {
			jsonUrl = window.contextRoot + '/json/data/category/'
					+ window.categoryID + '/products';
		}

		$table
				.DataTable({
					lengthMenu : [ [ 3, 5, 10, -1 ],
							[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
					pageLength : 5,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
							{
								data : 'code',
								mRender : function(data, type, row) {
									return '<img src="' + window.contextRoot
											+ '/resources/images/' + data
											+ '.jpg" class="dataTableImg"/>';
								}
							},
							{
								data : 'name'
							},
							{
								data : 'brand'
							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return '&#8369; ' + data;
								}
							},
							{
								data : 'quantity',
								mRender : function(data, type, row) {

									if (data < 1) {
										return '<span style="color:red">Out of Stock!</span>';
									}

									return data;

								}
							},
							{
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {
									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/show/'
											+ data
											+ '/product" class="btn btn-outline-primary"><span class="glyphicon glyphicon-eye-open"></span></a> &#160;';

									if (userRole == 'ADMIN') {
										str += '<a href="'
												+ window.contextRoot
												+ '/manage/'
												+ data
												+ '/product" class="btn btn-outline-warning"><span class="glyphicon glyphicon-pencil"></span></a>';
									} else {

										if (row.quantity < 1) {
											str += '<a href="javascript:void(0)" class="btn btn-outline-success disabled"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
										} else {

											str += '<a href="'
													+ window.contextRoot
													+ '/cart/add/'
													+ data
													+ '/product" class="btn btn-outline-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';

										}
									}

									return str;
								}
							} ]

				});
	}

	// dismissing the alert after 3 seconds
	var $alert = $('.alert');
	if ($alert.length) {

		setTimeout(function() {
			$alert.fadeOut('slow');
		}, 3000)

	}

	// ------------------------------

	$('.switch input[type="checkbox"]')
			.on(
					'change',
					function() {
						var checkbox = $(this);
						var checked = checkbox.prop('checked');
						var dMsg = (checked) ? 'Do you want to activate the product?'
								: 'Do you want to deactivate the product?';
						var value = checkbox.prop('value');
						bootbox
								.confirm({
									size : 'medium',
									title : 'Product Activation & Deactivation',
									message : dMsg,
									callback : function(confirmed) {
										if (confirmed) {
											console.log(value);
											bootbox
													.alert({
														size : 'medium',
														title : 'Information',
														message : 'You are going to perform operation on product'
																+ value
													});
										} else {
											checkbox.prop('checked', !checked);
										}
									}
								});

					});

	// ----------------------------------------------------------//
	// dta table for admin //
	// ----------------------------------------------------------//

	var $adminProductsTable = $('#adminProductsTable');

	// execute the below code
	if ($adminProductsTable.length) {
		// console.log('Inside the Table');

		var jsonUrl = window.contextRoot + '/json/data/admin/all/products';

		$adminProductsTable
				.DataTable({
					lengthMenu : [ [ 10, 30, 50, -1 ],
							[ '10 Records', '30 Records', '50 Records', 'ALL' ] ],
					pageLength : 30,
					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [
							{
								data : 'id'
							},
							{
								data : 'code',
								mRender : function(data, type, row) {
									return '<img src="'
											+ window.contextRoot
											+ '/resources/images/'
											+ data
											+ '.jpg" class="adminDataTableImg"/>';
								}
							},
							{
								data : 'name'
							},
							{
								data : 'brand'
							},

							{
								data : 'quantity',
								mRender : function(data, type, row) {

									if (data < 1) {
										return '<span style="color:red">Out of Stock!</span>';
									}

									return data;

								}
							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return '&#8369; ' + data;
								}
							},
							{
								data : 'active',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<label class="switch">';
									if (data) {
										str += '<input type="checkbox" checked="checked" value="'
												+ row.id + '" />';
									} else {
										str += '<input type="checkbox" value="'
												+ row.id + '" />';
									}

									str += '<div class="slider round"></div>';
									str += '</label>';

									return str;
								}
							},
							{
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {
									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/manage/'
											+ data
											+ '/product" class="btn btn-outline-warning"><span class="glyphicon glyphicon-pencil"></span></a>';

									return str;
								}
							}

					],

					initComplete : function() {
						var api = this.api();
						api
								.$('.switch input[type="checkbox"]')
								.on(
										'change',
										function() {
											var checkbox = $(this);
											var checked = checkbox
													.prop('checked');
											var dMsg = (checked) ? 'Do you want to activate the product?'
													: 'Do you want to deactivate the product?';
											var value = checkbox.prop('value');
											bootbox
													.confirm({
														size : 'medium',
														title : 'Product Activation & Deactivation',
														message : dMsg,
														callback : function(
																confirmed) {
															if (confirmed) {
																console
																		.log(value);

																var activationUrl = window.contextRoot
																		+ '/manage/product/'
																		+ value
																		+ '/activation';
																$
																		.post(
																				activationUrl,
																				function(
																						data) {
																					bootbox
																							.alert({
																								size : 'medium',
																								title : 'Information',
																								message : data
																							});
																				});
															} else {
																checkbox
																		.prop(
																				'checked',
																				!checked);
															}
														}
													});

										});
					}

				});
	}

	// ----------------------------------------------------------
	// validation code for category
	// ----------------------------------------------------------

	var $categoryForm = $('#categoryForm');

	if ($categoryForm.length) {
		$categoryForm
				.validate({

					rules : {

						name : {

							required : true,
							minlength : 2

						},

						description : {
							required : true
						}
					},

					message : {
						name : {
							required : 'Please add the Category Name!',
							minlength : 'The Category Name should not be less than 2 characters!'
						},

						description : {
							required : 'Please add description for this category!'
						}
					},
					errorElement : 'em',
					errorPlacement : function(error, element) {
						// add the class of help-block
						error.addClass('help-block');
						// add the error element after the input element
						error.insertAfter(element);
					}
				});
	}

	// -----------------------------
	// validation code for login
	// -------------------------------
	var $loginForm = $('#loginForm');

	if ($loginForm.length) {
		$loginForm.validate({

			rules : {

				username : {

					required : true,
					email : true

				},

				password : {
					required : true
				}
			},

			message : {
				username : {
					required : 'Please enter the username!',
					email : 'Please enter valid email address!'
				},

				password : {
					required : 'Please enter the password!'
				}
			},
			errorElement : 'em',
			errorPlacement : function(error, element) {
				// add the class of help-block
				error.addClass('help-block');
				// add the error element after the input element
				error.insertAfter(element);
			}
		});
	}

	// -----------------

});