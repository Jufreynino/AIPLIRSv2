<?php
include '../../function/function.php';



?>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Automated In-Plant Line Inspection Reporting System</title>
	<link rel="icon" href="../../global_assets/images/favicon-32x32.png">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="../../global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/colors.min.css" rel="stylesheet" type="text/css">
	<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.23/dist/sweetalert2.css" rel="stylesheet" type="text/css">
	<script src="../../global_assets/js/main/jquery.min.js"></script>
	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="../../global_assets/js/plugins/loaders/blockui.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="../../global_assets/js/jquery.ph-locations.js"></script>
	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/login.js"></script>
	<script src="../../global_assets/js/plugins/notifications/jgrowl.min.js"></script>
	<script src="../../global_assets/js/plugins/notifications/noty.min.js"></script>

	<script src="../../global_assets/js/demo_pages/extra_jgrowl_noty.js"></script>


	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.23/dist/sweetalert2.js"></script>

		 
</head>

<body class="bg-slate-800" style="background-image: url('../../global_assets/images/loginback.jpg'); 

  
  min-height: 500px;

  background-attachment: fixed;

  background-position: center;

  background-repeat: no-repeat;

  background-size: cover;
">

	<div class="page-content">
		<div class="content-wrapper">

			<!-- Content area -->
			<div class="content d-flex justify-content-center align-items-center">






			<div class="col-md-8">
						<div class="card">
							<div class="card-body">
								<ul class="nav nav-tabs nav-tabs-highlight nav-justified">
									<li class="nav-item"><a href="register_posms.php" class="nav-link">POSMS</a></li>
									<li class="nav-item"><a href="register_mio.php" class="nav-link">Meat Inspection Officer</a></li>
									<li class="nav-item"><a href="meat_establishment.php" class="nav-link active">Meat Establishment</a></li>
									
								</ul>

								<div class="tab-content">
									<div class="tab-pane fade" id="highlighted-justified-tab1">

									</div>

									<div class="tab-pane fade" id="highlighted-justified-tab2">
									</div>

									<div class="tab-pane fade show active" id="highlighted-justified-tab3">























									









									<form method="POST"  id="clear" class="flex-fill">
														<br>
												<div class="card mb-0">
														
									

													<div class="card-body">
														<div class="text-center mb-3">
															<h1 class="mb-0">Meat Establishment Account Registration</h1>
															<span class="d-block text-muted">All fields are required!</span>

														</div>
														<br>
														<br>
													

														






														<div class="row">	
															<div class="col-md-7">
																<div class="form-group ">
																	<label class="col-form-label ">Meat Establishment Name</label>
																	<input type="text" class="form-control" name="me_plant_name" placeholder="Meat Establishment Name"  id="me_plant_name">
																</div>
															</div>
															<div class="col-md-5">
																<div class="form-group ">
																	<label class="col-form-label ">Meat Establishment Owner Name</label>
																	<input type="text" class="form-control" name="me_owner" placeholder="Meat Establishment Owner" id="me_owner">
																</div>
															</div>
														</div>

														



														<div class="row">
															<div class="col-md-2">
																<div class="form-group">
																	<label class="col-form-label ">Type</label>
																		<select class="form-control form-control-uniform type" name="me_category" id="me_category">


																			<option value="">Choose Type</option>
																			<option value="PDP">PDP	</option>
																			<option value="SLH">SLH</option>
																		</select>
																</div>
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label class="col-form-label ">Classification </label>
																		<select class="form-control form-control-uniform class" name="me_classification" id="me_classification">
																			<option value="">Choose Classification</option>
																			<option value="AAA">AAA</option>
																			<option value="AA"> AA</option>
																		</select>
																</div>
															</div>





															<div class="col-md-3">
																<div class="form-group">
																	<label class="col-form-label ">LTO Expiration date</label>
																	<input class="form-control" type="date" name="me_expiration_date" id="me_expiration_date" required>
																		
																</div>
															</div>


															<div class="col-md-4">
																<div class="form-group">
																	<label class="col-form-label ">LTO Number</label>
																	<div class="row">	
																		<div id = "leftbox">
																			<input type="Text" id="output"/ style="border:none; width:30px;" readonly>-
																		</div> 
																		
																		<div id = "middlebox">
																			<input type="number" class="form-control" name="me_lto" placeholder="LTO Number" id="me_lto">
																		</div>
																		
																		<div id = "rightbox">
																			-<input type="Text"  id="output2"/ style="border:none; width:30px;" readonly>
																		</div>
																		</div>




																</div>
															</div>
														</div>

														<legend style="font-weight: bold; font-size:20px;">Address</legend>













														





														<div class="row">
															<div class="col-lg-12">
																<div class="form-group">
																	<label class="col-form-label  text-right">Region</label>
																		<select name="country" id="country" class="form-control input-lg" onchange="document.getElementById('region_content').value=this.options[this.selectedIndex].text">
																					<option value="">Select Region</option>
																				</select>
																				<input type="hidden" name="region" id="region_content" value="" >
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>Province</label>
																	<select name="province" id="province" class="form-control input-lg" onchange="document.getElementById('text_content').value=this.options[this.selectedIndex].text">
																					<option value="">Select Province</option>
																				</select>
																				<input type="hidden" name="province" id="text_content" value="" />
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Municipality / City</label>
																	<select id="city" onchange="document.getElementById('city_text').value=this.options[this.selectedIndex].text" class="form-control  js-example-basic-single" id="city"  ></select>
																						<input type="hidden" name="city" id="city_text" value=""  />
																</div>
															</div>

															<div class="col-md-4">
																<div class="form-group">
																	<label>Barangay</label>
																	<select id="barangay" onchange="document.getElementById('barangay_text').value=this.options[this.selectedIndex].text" class="form-control  js-example-basic-single" id="barangay"  ></select>
																						<input type="hidden" name="barangay" id="barangay_text" value=""  />
																</div>
															</div>









															
														</div>
														

														<div class="row">
															<div class="col-lg-12">
																<div class="form-group">
																	<label class="col-form-label  text-right">House Number and Street Name</label>
																	<input type="text" class="form-control"  name="me_address" id="me_address">
																</div>
															</div>
														</div>

														
														<legend style="font-weight: bold; font-size:20px;">Contact Details</legend>

															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="col-form-label ">Contact Number <i style="color: red;"></i></label>
																		<input type="text" class="form-control" name="me_contact" placeholder="Mobile Number (9XXXXXXXXX)" id="me_contact" pattern="^[0-9]{6}|[0-9]{8}|[0-9]{11}$">

																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<label class="col-form-label ">Email</label>
																		<input type="text" class="form-control" name="me_email" id="me_email">

																	</div>
																</div>
															</div>
															



														<legend style="font-weight: bold; font-size:20px;">Account Details</legend>

															<div class="row">
																<div class="col-md-4">
																	<div class="form-group">
																		<label class="col-form-label ">Username<i style="color: red;"></i></label>
																		<input type="text" class="form-control"  name="me_username" id="me_username">

																	</div>
																</div>
																<div class="col-md-4">
																	<div class="form-group">
																		<label class="col-form-label ">Password</label>
																		<input type="password" class="form-control" name="me_password" id="me_password">
																	</div>
																</div>

																<div class="col-md-4">
																	<div class="form-group">
																		<label class="col-form-label ">Confirm Password</label>
																		<input type="password" class="form-control"  name="me_confirm_password" id="me_confirm_password">
																	</div>
																</div>
															</div>
															<br>
															<br>

															<div class="text-center">
																<button type="button" class="btn bg-primary text-white btn-labeled btn-labeled-right" style="font-size:15px; padding:10px 150px 10px 150px;" data-toggle="modal" data-target="#modal_default">Submit</button>
															</div>



															<div id="modal_default" class="modal fade" tabindex="-1">
																<div class="modal-dialog modal-sm">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title">Data Privacy And Protection Policy</h5>
																			<button type="button" class="close" data-dismiss="modal">&times;</button>
																		</div>

																		<div class="modal-body">
										<h6 class="font-weight-semibold">I hereby certify that the above statements are true and correct to the best of my knowledge and 
										documentary requirements submitted are complete and updated <br><br>

										By Agreeing, I am authorizing the NMIS to collect, process and store our data in accordance with the requirement of
										Republic Act 10173 (Data Privacy Act of 2012), I am also giving them consent to post to their website the information
										of our company as specified herewith; Name, Address, Number and Expiration date of License to Operate(LTO)</h6>
																			
																		</div>

																		<div class="modal-footer">
																			<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
																			<button type="button" id="btn_add_meat_establishment" class="btn bg-teal-400 text-white btn-labeled">I Understand proceed</button>
																		</div>
																	</div>
																</div>
															</div>



														
													</div>
													</div>
											
										</form>



















									</div>


									
								</div>
							</div>
						</div>
					</div>
				</div>



































				
			</div>
			
            
     
<script>

	
$(document).ready(function(){
					$( "#btn_add_meat_establishment" ).click(function(event) {
					event.preventDefault();
						var me_plant_name = $('#me_plant_name').val();
						var me_owner = $('#me_owner').val();
						var me_category = $('#me_category').val();
						var me_classification = $('#me_classification').val();
						var me_expiration_date = $('#me_expiration_date').val();
						var me_lto = $('#me_lto').val();
						var text_content = $('#text_content').val();
						var region_content = $('#region_content').val();
						var region_code = $('#country').val();
						var city_text = $('#city_text').val();
						var barangay_text = $('#barangay_text').val();
						var me_address = $('#me_address').val();
						var me_contact = $('#me_contact').val();
						var me_email = $('#me_email').val();
						var me_username = $('#me_username').val();
						var me_password = $('#me_password').val();
						var me_confirm_password = $('#me_confirm_password').val();
						var btn_add_meat_establishment = 1;
						$.ajax({
							type: "POST",
							url: "../../pages/ajax/ajax.php",
							data: {
								me_plant_name: me_plant_name,
								me_owner: me_owner,
								me_category: me_category,
								me_classification: me_classification,
								me_expiration_date: me_expiration_date,
								me_lto: me_lto,
								text_content: text_content,
								region_content: region_content,
								region_code: region_code,
								city_text: city_text,
								barangay_text: barangay_text,
								me_address: me_address,
								me_contact: me_contact,
								me_email: me_email,
								me_username: me_username,
								me_password: me_password,
								me_confirm_password: me_confirm_password,
								btn_add_meat_establishment:btn_add_meat_establishment
							},
							cache: false,
							success: function(data) {

								if(data =='success')
								{
									$('#btn_add_meat_establishment').prop("disabled", true);
									Swal.fire({
										title: 'Success',
										text: 'Successfully Registered! Check your email for the activation of your account',
										icon: 'success',
										confirmButtonText: 'Successfully Submitted',
										confirmButtonColor: '#3aff09'
										});
								}
								else
								{
									Swal.fire({
										title: 'Error!',
										text: data,
										icon: 'error',
										confirmButtonText: 'Okay',
										confirmButtonColor: '#ff0000'
										});
								}
								
							},
							error: function(xhr, status, error) {
								console.error(xhr);
							}
						});

					});	
			});


$(document).ready(function(){

 load_json_data('country');

 function load_json_data(id, parent_id)
 {

  var html_code = '';
  $.getJSON('https://psgc.gitlab.io/api/regions/', function(data){

   html_code += '<option value="">Select Region</option>';
   $.each(data, function(key, value){
  
     if(value.parent_id == parent_id)
     {
      html_code += '<option value="'+value.code+'">'+value.name+'</option>';
     }
   });
   $('#'+id).html(html_code);
  });
 }

 $(document).on('change', '#country', function(){
  var html_code = '';
  var region = $(this).val();
  $("#city").html("<option>Select city</option>");
		$.getJSON('https://psgc.gitlab.io/api/regions/'+region+'/provinces/', function(data){
		if(data =='')
		{
  			var html_code = '';
			var region = $('#country').val();
			$.getJSON('https://psgc.gitlab.io/api/regions/'+region+'/districts/', function(data){
				$.each(data, function(key, value){
				html_code += '<option value="'+value.code+'">'+value.name+'</option>';
			});
   			$('#province').html(html_code);

			   $(document).on('change', '#province', function(){
					var html_code = '';
					var province = $('#province').val();
					
					$.getJSON('https://psgc.gitlab.io/api/districts/'+province+'/cities-municipalities/', function(data){
					$.each(data, function(key, value){
							html_code += '<option value="'+value.code+'">'+value.name+'</option>';
					});
					$('#city').html(html_code);
						$(document).on('change', '#city', function(){
							var html_code = '';
							var city = $('#city').val();
							
							if(data =='')
							{
								var html_code = '';
								var city = $('#city').val();

								$.getJSON('https://psgc.gitlab.io/api/cities-municipalities/'+province+'/barangays/', function(data){
								$.each(data, function(key, value){
										html_code += '<option value="'+value.name+'">'+value.name+'</option>';
								});
								$('#barangay').html(html_code);
								});
							}
							else
							{
								var html_code = '';
								var city = $('#city').val();

								$.getJSON('https://psgc.gitlab.io/api/cities-municipalities/'+province+'/barangays/', function(data){
								$.each(data, function(key, value){
										html_code += '<option value="'+value.name+'">'+value.name+'</option>';
								});
								$('#barangay').html(html_code);
								});
							}
							
						});

				});

					


				
			});
			});
		}
		else
		{
			var html_code = '';
			var region = $('#country').val();
			$.getJSON('https://psgc.gitlab.io/api/regions/'+region+'/provinces/', function(data){
				$.each(data, function(key, value){
					html_code += '<option value="'+value.code+'">'+value.name+'</option>';
				});
   				$('#province').html(html_code);

			   $(document).on('change', '#province', function(){
					var html_code = '';
					var province = $('#province').val();
					
					$.getJSON('https://psgc.gitlab.io/api/provinces/'+province+'/cities-municipalities/', function(data){
					$.each(data, function(key, value){
							html_code += '<option value="'+value.code+'">'+value.name+'</option>';
					});
					$('#city').html(html_code);
						$(document).on('change', '#city', function(){
							var html_code = '';
							var city = $('#city').val();
							
							if(data =='')
							{
								var html_code = '';
								var city = $('#city').val();
								
								$.getJSON('https://psgc.gitlab.io/api/cities-municipalities/'+city+'/barangays/', function(data){
								$.each(data, function(key, value){
										html_code += '<option value="'+value.name+'">'+value.name+'</option>';
								});
								$('#barangay').html(html_code);
								});
							}
							else
							{
								var html_code = '';
								var city = $('#city').val();
								$.getJSON('https://psgc.gitlab.io/api/cities-municipalities/'+city+'/barangays/', function(data){
								$.each(data, function(key, value){
										html_code += '<option value="'+value.name+'">'+value.name+'</option>';
								});
								$('#barangay').html(html_code);
								});
							}
							
						});
					});
				});
			});
		}
		});
		});


			$(document).ready(function() {
			    $('.js-example-basic-single').select2();
			});


			});

		</script>

		<script>
			$('.type').change(function(){
			$('#output').val($(this).val());
		});
		</script>


		<script>
			$('.class').change(function(){
			$('#output2').val($(this).val());
		});


		$('#me_expiration_date').change(function(){
			const startDate = new Date(); // Feb 12th 2020
			const endDate = new Date($('#me_expiration_date').val()); // April 18th 2022

			const monthDiff = endDate.getMonth() - startDate.getMonth() +
			(12 * (endDate.getFullYear() - startDate.getFullYear()));
			if(monthDiff == 0)
			{
				alert('Your license to operated is expired');

				$('#me_expiration_date').val('');
			}
			else
			{
				if(monthDiff >= 12)
				{
				}
				else
				{
					alert(monthDiff+' months remaining before your License to operate is expired');
				}
			}
			
		});


		
	</script>	
		</div>
	</div>
</body>
</html>
