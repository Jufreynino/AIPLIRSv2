<?php
header('Access-Control-Allow-Origin *');



session_start();
include '../../function/function.php';
if(isset($_SESSION['me_id']))
{

}
else{
    header('location: ../../pages/auth/login.php');
}
date_default_timezone_set('Asia/Manila');
$todays_date = date("y-m-d h:i:sa");
$today = strtotime($todays_date);
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
	<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.23/dist/sweetalert2.css" rel="stylesheet" type="text/css">
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

	<script src="../../global_assets/js/main/jquery.min.js"></script>
	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/dashboard.js"></script>
		<script src="../../global_assets/js/plugins/forms/styling/uniform.min.js"></script>

	<script src="../../../../global_assets/js/demo_pages/form_inputs.js"></script>
	<!-- <script type="text/javascript" src="../../global_assets/js/jquery.ph-locations.js"></script> -->

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.23/dist/sweetalert2.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>




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
			

				<li class="nav-item dropdown">
					<a href="#" class="navbar-nav-link dropdown-toggle caret-0" data-toggle="dropdown">
						<i class="icon-bubbles4"></i>
						<span class="d-md-none ml-2">Messages</span>
						<?php echo count_alertme() ?>
					</a>
					
					<div class="dropdown-menu dropdown-menu-right dropdown-content wmin-md-350">
						<div class="dropdown-content-header">
							<span class="font-weight-semibold" style="margin-bottom:-30px;">Messages</span>
						</div>

						<div class="dropdown-content-body dropdown-scrollable">
							<ul class="media-list">


								<?php echo alertme() ?>
								
							</ul>
						</div>

						<div class="dropdown-content-footer justify-content-center p-0">
							<a href="#" class="bg-light text-grey w-100 py-2" data-popup="tooltip" title="Load more"><i class="icon-menu7 d-block top-0"></i></a>
						</div>
					</div>
				</li>
				<li class="nav-item dropdown dropdown-user">
					<a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
						<img src="../../global_assets/images/download.png" class="rounded-circle mr-2" height="34" alt="">
						<span><?php echo $_SESSION['me_plant_name']?></span>
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
								<div class="media-title font-weight-semibold"><?php echo $_SESSION['me_plant_name']?></div>
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
							<a href="dashboard.php" class="nav-link ">
								<i class="icon-home4"></i>
								<span>
									Dashboard
								</span>
							</a>
						</li>
						<li class="nav-item nav-item-submenu nav-item-expanded nav-item-open" >
							<a href="#" class="nav-link"  style="background-color:;"><i class="icon-file-check"></i> <span>
								DRR & Meat Inspection Status 
								</span></a>
							<ul class="nav nav-group-sub" data-submenu-title="Pickers">
								<li class="nav-item"><a href="select_species.php" class="nav-link active">Add New Transaction</a></li>
								<li class="nav-item"><a href="drr.php" class="nav-link">List of Transaction</a></li>
							</ul>
						</li>



						
                        <li class="nav-item-header text-center" style="background-color:#833737;"><div class="text-uppercase font-size-xs line-height-xs " style="font-size: 15px; color:white;">Summary of Meat Inspection Report </div> <i class="icon-menu" title="Data visualization"></i></li>
								
						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Receiving of Animals</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								

								<li class="nav-item">
									<a href="by_meat_establishment_receiving_report.php" class="nav-link">Meat Establishment Data
									</a>
								</li>

							</ul>
						</li>


						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Fit for Slaughter</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								
								
								<li class="nav-item">
									<a href="by_meat_establishment_fit_report.php" class="nav-link">Meat Establishment Data
									</a>
								</li>

							</ul>
						</li>

						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Fit for Human Consumption</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								
								
								<li class="nav-item">
									<a href="by_meat_establishment_fhc_report.php" class="nav-link">Meat Establishment Data
									</a>
								</li>

							</ul>
						</li>

					</ul>
				</div>
			</div>
		</div>
		<div class="content-wrapper">
			<div class="page-header page-header-light">
		

				
			</div>
			<div class="content">
				<div class="row">

                    <div class="col-md-1"></div>
                        <div class="col-md-10">

                            <div class="card">
                                <div class="card-header header-elements-inline">
                                    <h1 class="card-title"  style="border-bottom:2px solid black; width:100%; font-size:40px; text-align:left !important;" class="text-left"><?php echo $_GET['spcs'] ?></h1>
                                    <!-- <div class="header-elements">
                                        <div class="form-check form-check-right form-check-switchery form-check-switchery-sm">
                                            <label class="form-check-label">
                                                Live update:
                                                <input type="checkbox" class="form-input-switchery" checked >
                                            </label>
                                        </div>
                                    </div> -->
                                </div>
                                <div class="card-body py-0">
										
		<script type="text/javascript">
				$(document).ready(function() {
					calculateSum1();

					$(".txt1").on("keydown keyup", function() {
						calculateSum1();
					});
				});
				function calculateSum1() {
					var sum = 0;
					//iterate through each textboxes and add the values
					$(".txt1").each(function() {
						//add only if the value is number
						if (!isNaN(this.value) && this.value.length != 0) {
							sum += parseFloat(this.value);
							$(this).css("background-color", "#FEFFB0");
						}
						else if (this.value.length != 0){
							$(this).css("background-color", "red");
						}
					});
				
					$("input#sum2").val(sum.toFixed(2));
				}
   		 
			


					$(".calculate").on("keyup keydown change", function(e) {
						var sum1 = parseFloat($("#sum1").val()) || 0;
						var sum2 = parseFloat($("#sum2").val()) || 0;

						var value = sum2 / sum1;

						if (!isNaN(value) && value !== Infinity) {
							$("#quotient").val(value);
						}
					});
			</script>


	<script type="text/javascript">
	
		$(document).ready(function() {
		    $('.js-example-basic-single').select2();

			$('#country').change(function() {	
				var current_region = '<?php echo $_SESSION['me_region_code'] ?>';
				var region = $('#country  option:selected ').text();
				
				if(current_region == region)
				{
						$("#shipping_permit").prop('required',false);
						$("#to_hide").hide();
				}
				else
				{
					$("#to_hide").show();
				}
				// alert(region)
					
			})

				
		});


	</script>

	<script type="text/javascript">
            
			// var my_handlers = {
 
			// 	 fill_provinces:  function(){
 
			// 		 var region_code = $(this).val();
			// 		 $('#province').ph_locations('fetch_list', [{"region_code": region_code}]);
					 
			// 	 },
 
			// 	 fill_cities: function(){
 
 
			// 		 var province_code = $(this).val();
			// 		 $('#city').ph_locations( 'fetch_list', [{"province_code": province_code}]);
			// 	 },
 
 
			// 	 fill_barangays: function(){
 
			// 		 var city_code = $(this).val();
			// 		 $('#barangay').ph_locations('fetch_list', [{"city_code": city_code}]);
			// 	 }
			//  };
 
			//  $(function(){
			// 	 $('#region').on('change', my_handlers.fill_provinces);
	   
 
 
			// 	 $('#province').on('change', my_handlers.fill_cities);
			// 	 $('#city').on('change', my_handlers.fill_barangays);
 
				 
			// 	 $('#region').ph_locations({'location_type': 'regions'});
			// 	 $('#province').ph_locations({'location_type': 'provinces'});
			// 	 $('#city').ph_locations({'location_type': 'cities'});
			// 	 $('#barangay').ph_locations({'location_type': 'barangays'});
			// 	 $('#region').ph_locations('fetch_list');
 
 
 
			//  });
			 


			 $('#fname').css('textTransform', 'capitalize');
			 $('#lname').css('textTransform', 'capitalize');


			
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
					var province = $(this).val();
					

					alert(province);
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
					html_code += '<option  value="'+value.code+'">'+value.name+'</option>';
				});
   				$('#province').html(html_code);

			   $(document).on('change', '#province', function(){
					var html_code = '';
					var province = $(this).val();
					alert(province);
					
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
</body>
</html>
