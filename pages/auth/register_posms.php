<?php
session_start();
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
	<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.23/dist/sweetalert2.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/colors.min.css" rel="stylesheet" type="text/css">
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
<script>

</script>
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
									<li class="nav-item"><a href="register_posms.php" class="nav-link  active" >POSMS</a></li>
									<li class="nav-item"><a href="register_mio.php" class="nav-link" >Meat Inspection Officer</a></li>
									<li class="nav-item"><a href="meat_establishment.php" class="nav-link" >Meat Establishment</a></li>
									
								</ul>
								<br>

								<div class="tab-content">
									<div class="tab-pane fade" id="highlighted-justified-tab1">

									</div>

									<div class="tab-pane fade " id="highlighted-justified-tab2">
										


























									</div>

									<div class="tab-pane fade show active" id="highlighted-justified-tab3">
									<form method="POST" class="flex-fill">
					<div class="row">
						<div class="col-lg-12">
							<div class="card mb-0">
								<div class="card-body">
									<div class="text-center mb-3">
										<h1 class="mb-0">POSMS Account  Registration</h1>
										<span class="d-block text-muted">All fields are required!</span>


										
									</div>

						<?php echo add_posms_account_posms() ?>
									

									<h4 style="margin-bottom:-20px; margin-top: 20px;">Personal Information</h4>
									<hr>

									<div class="row">
										<div class="col-md-4">
											<div class="form-group form-group-feedback form-group-feedback-right">
										<input type="text" class="form-control" id="employee_code" name="employee_code" placeholder="Employee Number" >

												
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<input type="text" class="form-control" id="firstname" name="firstname" placeholder="Firstname" >
												<div class="form-control-feedback">
													<i class="icon-file-empty2 text-muted"></i>
												</div>
											</div>
										</div>

                                        <div class="col-md-4">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Lastname" >
												<div class="form-control-feedback">
													<i class="icon-file-empty2 text-muted"></i>
												</div>
											</div>
										</div>

									</div>































									<div class="row">
										<div class="col-md-12">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<label class="col-form-label text-right">Region</label>
													<select name="country" id="country" class="form-control input-lg" onchange="document.getElementById('region_content').value=this.options[this.selectedIndex].text">
														<option value="">Select Region</option>
													</select>
															<input type="hidden" name="region_content" id="region_content"  />
															<input type="hidden" name="region_code" id="country"  />

												<div class="form-control-feedback">
												</div>
											</div>
										</div>
									</div>

									

                                       
									


								
									<h4 style="margin-bottom:-20px; margin-top: 20px;">Contact Information</h4>
									<hr>
                  				<div class="row">
										<div class="col-md-6">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<input type="text" class="form-control" name="email" id="email" placeholder="Email Address" value="<?php if(isset($_POST['email'])){ echo $_POST['email']; }?>">
												<div class="form-control-feedback">
													<i class="icon-google text-muted"></i>
												</div>
											</div>
										</div>

                                        <div class="col-md-6">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<input type="text" class="form-control" name="contact" id="contact" placeholder="Mobile Number (9XXXXXXXXX)" value="<?php if(isset($_POST['contact'])){ echo $_POST['contact']; }?>">
												<div class="form-control-feedback">
													<i class="icon-phone2 text-muted"></i>
												</div>
											</div>
										</div>
									</div>

									<h4 style="margin-bottom:-20px; margin-top: 20px;">Account Details</h4>
									<hr>





                                    <div class="row">
										<div class="col-md-4">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<input type="text" class="form-control" name="username"  id="username" placeholder="Username" value="<?php if(isset($_POST['username'])){ echo $_POST['username']; }?>">
												<small style="color:red;">Username must be the same on your fullname</small>
												<div class="form-control-feedback">
													<i class="icon-user text-muted"></i>
												</div>
											</div>
										</div>

                                        <div class="col-md-4">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<input type="password" class="form-control" name="password" id="password" placeholder="Password" value="<?php if(isset($_POST['password'])){ echo $_POST['password']; }?>">
												<div class="form-control-feedback">
													<i class="icon-exclamation text-muted"></i>
												</div>
											</div>
										</div>

										<div class="col-md-4">
											<div class="form-group form-group-feedback form-group-feedback-right">
												<input type="password" class="form-control" name="confirm_password" id="c_password" placeholder="Confirm Password" value="<?php if(isset($_POST['confirm_password'])){ echo $_POST['confirm_password']; }?>">
												<div class="form-control-feedback">
													<i class="icon-exclamation text-muted"></i>
												</div>
											</div>
										</div>

										
									</div>
                                    <div class="text-right">
								    	<button type="button" name="btn_add_posms"  id="btn_add_posms" class="btn bg-teal-400 btn-labeled btn-labeled-right"><b><i class="icon-plus3"></i></b> Create account</button>
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






				<!-- Registration form -->
				
			</div>
			
		<script>
			$(document).ready(function(){
					$( "#btn_add_posms" ).click(function(event) {
					event.preventDefault();
						var employee_code = $('#employee_code').val();
						var firstname = $('#firstname').val();
						var lastname = $('#lastname').val();
						var region_content = $('#region_content').val();
						var email = $('#email').val();
						var contact = $('#contact').val();
						var username = $('#username').val();
						var password = $('#password').val();
						var c_password = $('#c_password').val();
						var region_code = $('#country').val();

						
						// alert(region_code);

						
						var btn_add_posms = 1;
						var btn_add_mio = 0;
						var btn_add_meat_establishment = 0;

						
						$.ajax({
							type: "POST",
							url: "../../pages/ajax/ajax.php",
							data: {
								employee_code: employee_code,
								firstname: firstname,
								region_code: region_code,
								lastname: lastname,
								region_content: region_content,
								email: email,
								contact: contact,
								username: username,
								password: password,
								c_password: c_password,
								btn_add_meat_establishment:btn_add_meat_establishment,
								btn_add_posms:btn_add_posms,
								btn_add_mio:btn_add_mio
							},
							cache: false,
							success: function(data) {

								if(data =='success')
								{
									$('#btn_add_posms').prop("disabled", true);
									Swal.fire({
										title: 'Success',
										text: 'Check your email for the activation of your account',
										icon: 'success',
										confirmButtonText: 'Successfully Registered',
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

		</script>


<script>
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
							html_code += '<option value="'+value.name+'">'+value.name+'</option>';
					});
					$('#city').html(html_code);
					
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
							html_code += '<option value="'+value.name+'">'+value.name+'</option>';
					});
					$('#city').html(html_code);
					
				});
			});
			});
		}
		});
 });

});
</script>


		</div>
	</div>
</body>
</html>
.