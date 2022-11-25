<?php
session_start();
include '../../function/function.php';

if(isset($_SESSION['me_id']))
{
	

}
else{
    header('location: ../../pages/auth/login.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Automated In-Line Inspection Reporting System</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="../../global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../../global_assets/css/custom.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/colors.min.css" rel="stylesheet" type="text/css">
	<script src="../../global_assets/js/main/jquery.min.js"></script>
	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="../../global_assets/js/jquery.ph-locations.js"></script>
	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/dashboard.js"></script>
		<script src="../../global_assets/js/plugins/ui/moment/moment.min.js"></script>
	<script src="../../global_assets/js/plugins/pickers/daterangepicker.js"></script>
	<script src="../../global_assets/js/plugins/pickers/anytime.min.js"></script>
	<script src="../../global_assets/js/plugins/pickers/pickadate/picker.js"></script>
	<script src="../../global_assets/js/plugins/pickers/pickadate/picker.date.js"></script>
	<script src="../../global_assets/js/plugins/pickers/pickadate/picker.time.js"></script>
	<script src="../../global_assets/js/plugins/pickers/pickadate/legacy.js"></script>
	<script src="../../global_assets/js/demo_pages/picker_date.js"></script>
</head>

<body>

	<div class="navbar navbar-expand-md navbar-dark">
		<div class="navbar-brand">
            <center>
			<a href="dashboard.php" class="d-inline-block">
                <h1 style="color:white; padding:0px; margin:-10px;">AIPLIRS</h1>
			</a>
            </center>
		</div>
		<div class="d-md-none">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mobile">
				<i class="icon-tree5"></i>
			</button>
			<button class="navbar-toggler sidebar-mobile-main-toggle" type="button">
				<i class="icon-paragraph-justify3"></i>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbar-mobile">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a href="#" class="navbar-nav-link sidebar-control sidebar-main-toggle d-none d-md-block">
						<i class="icon-paragraph-justify3"></i>
					</a>
				</li>
			</ul>
			<span class="badge bg-success ml-md-3 mr-md-auto">Online</span>
			<ul class="navbar-nav">
				<li class="nav-item dropdown dropdown-user">
					<a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
						<img src="../../global_assets/images/download.png" class="rounded-circle mr-2" height="34" alt="">
						<span><?php echo $_SESSION['me_plant_name'] ?></span>
					</a>

					<div class="dropdown-menu dropdown-menu-right">
						<div class="dropdown-divider"></div>
						<a href="../../pages/auth/logout.php" class="dropdown-item"><i class="icon-switch2"></i> Logout</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="page-content">
		<div class="sidebar sidebar-dark sidebar-main sidebar-expand-md">
			<div class="sidebar-mobile-toggler text-center">
				<a href="#" class="sidebar-mobile-main-toggle">
					<i class="icon-arrow-left8"></i>
				</a>
				Navigation
				<a href="#" class="sidebar-mobile-expand">
					<i class="icon-screen-full"></i>
					<i class="icon-screen-normal"></i>
				</a>
			</div>
			<div class="sidebar-content">
				<div class="sidebar-user">
					<div class="card-body">
						<div class="media">
							<div class="mr-3">
								<a href="#">
								<img class=" text-warning-400  img-circle" width="38" height="38"  src="../../global_assets/images/download.png"></i>
                                
                                
                                </a>
							</div>

							<div class="media-body">
								<div class="media-title font-weight-semibold"><?php echo $_SESSION['me_plant_name'] ?></div>
								<div class="font-size-xs opacity-50">
                                   
                                       Meat Establishment 

								</div>
							</div>

							<div class="ml-3 align-self-center">
								<a href="#" class="text-white"><i class="icon-cog3"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="card card-sidebar-mobile">
					<ul class="nav nav-sidebar" data-nav-type="accordion">
						<li class="nav-item-header"><div class="text-uppercase font-size-xs line-height-xs">Main</div> <i class="icon-menu" title="Main"></i></li>
						<li class="nav-item">
							<a href="meat_establishment_activation.php" class="nav-link">
								<i class="icon-home4"></i>
								<span>
									Dashboard
								</span>
							</a>
						</li>

						<li class="nav-item">
							<a href="meat_establishment_update_information.php" class="nav-link active">
								<i class="icon-home4"></i>
								<span>
									Update Information
								</span>
							</a>
						</li>


					</ul>
				</div>
			</div>
		</div>
		<div class="content-wrapper">
			<div class="page-header page-header-light">
				<div class="page-header-content header-elements-md-inline">
					<div class="page-title d-flex">
						<h4> <span class="font-weight-semibold"></span> <?php echo $_SESSION['me_plant_name'] ?></h4>
						<a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
					</div>

					<div class="header-elements d-none">
						
					</div>
				</div>

				<div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="meat_establishment_activation.php" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Home</a>
							<span class="breadcrumb-item active">Dashboard</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
					</div>
					

					<!-- <div class="header-elements d-none">
						<div class="breadcrumb justify-content-center">
							<a href="#" class="breadcrumb-elements-item">
								<i class="icon-comment-discussion mr-2"></i>
								Support
							</a>

							<div class="breadcrumb-elements-item dropdown p-0">
								<a href="#" class="breadcrumb-elements-item dropdown-toggle" data-toggle="dropdown">
									<i class="icon-gear mr-2"></i>
									Settings
								</a>

								<div class="dropdown-menu dropdown-menu-right">
									<a href="#" class="dropdown-item"><i class="icon-user-lock"></i> Account security</a>
									<a href="#" class="dropdown-item"><i class="icon-statistics"></i> Analytics</a>
									<a href="#" class="dropdown-item"><i class="icon-accessibility"></i> Accessibility</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item"><i class="icon-gear"></i> All settings</a>
								</div>
							</div>
						</div>
					</div> -->
				</div>
			</div>
			<div class="content">
				<div class="content d-flex justify-content-center align-items-center">
						<?php echo update_application_information() ?>

					
				</div>
			</div>
			<div class="navbar navbar-expand-lg navbar-light">
				<div class="text-center d-lg-none w-100">
					<button type="button" class="navbar-toggler dropdown-toggle" data-toggle="collapse" data-target="#navbar-footer">
						<i class="icon-unfold mr-2"></i>
						Footer
					</button>
				</div>

				<div class="navbar-collapse collapse" id="navbar-footer">
					<span class="navbar-text">
						&copy; Department of Agriculture - National Meat Inspection Service (DA - NMIS) All rights reserved.
					</span>

				
				</div>
			</div>
		</div>
	</div>
			<script type="text/javascript">
            
           
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
	   });
	   
        </script>
</body>
</html>
