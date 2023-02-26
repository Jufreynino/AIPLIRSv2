<?php



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
										<?php echo add_daily_receiving() ?>
									<div class="row">

										<br>
										<br>
										<br>
										<br>
										<br>

									
                                                                                                                                    
                                   	 					<div class="col-md-5">
                                                                 <form method="POST" class="form-validate-jquery" enctype="multipart/form-data">

                                                                            <input type="hidden" class="form-control" name="category" value="<?php echo $_SESSION['me_type'] ?>" readonly>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label>Date Received</label>
                                                                                    <input type="text" class="form-control" name="date_received" value="<?php echo date("m / d / Y  ", $today); ?>" readonly>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label>Time Received</label>
                                                                                    <input type="text" class="form-control" name="time_received"  value="<?php echo date("h:i", $today); ?>" readonly>
                                                                                </div>
                                                                            </div>
                                                                        </div>

																		


																		<label> Name of Meat Dealer</label>

																		<div class="row">
																			<div class="col-md-6">
																				<div class="form-group">
																					<label> Firstname</label>
																						<input type="text" class="form-control" name="meat_dealer_firstname"  placeholder=" Firstname" id="fname" required>
																				</div> 
																			</div>	
																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Lastname</label>
																						<input type="text" class="form-control" name="meat_dealer_lastname"  placeholder="Lastname" id="lname" required>
																				</div>
																			</div>	
																		</div>

																		
                                                                        <div class="form-group">
                                                                            <input type="hidden" class="form-control" name="species"  value="<?php echo $_GET['spcs'] ?>" readonly>
                                                                        </div>



																		

																		<div class="row">
																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Batch Number</label>
																					<?php echo count_drr()  ?>
																				</div>

																				
																			</div>

																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Holding Pen</label>
																					<input type="text" class="form-control" name="holding_pen"  placeholder="0" required>
																				</div>
																			</div>
																		</div>
                                                                        <h4>Farm Source</h4>

					 

                                                                        <div class="form-group">
                                                                            <label>Type of Farm Source</label>
	                                                                           <select  class="form-control  js-example-basic-single trigger" name="type_farm_source" required >
	                                                                          		<option type="Commercial">Commercial</option> 	
	                                                                          		<option type="Backyard">Backyard</option> 	
	                                                                           </select>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <label>Name of Farm / Name of Farm owner</label>
                                                                            <input type="text"   class="form-control" name="farm_source"   placeholder="Name of Farm / Name of Farm owner">
                                                                        </div>


																		<div class="form-group">
                                                                            <label>Region</label>
																				<select name="country" id="country" class="form-control input-lg" onchange="document.getElementById('region_text').value=this.options[this.selectedIndex].text">
																					<option value="">Select Region</option>
																				</select>
																		</div>

																		<div class="form-group">
                                                                            <label>Province</label>
																				<select name="province" id="province" class="form-control input-lg" onchange="document.getElementById('province_contenct').value=this.options[this.selectedIndex].text"
																				>
																					<option value="">Select Province</option>
																				</select>
																				<input type="hidden" name="provincial" id="province_contenct" value="" />

																				
																		</div>

																		<div class="form-group">
                                                                            <label>Municipality / City</label>
																				<select name="city" id="city" class="form-control input-lg">
																					<option value="">Select City</option>
																				</select>
																		</div>



																			
																		<!-- <div class="form-group">
                                                                            <label>Region</label>
                                                                           <select id="region" onchange="document.getElementById('region_content').value=this.options[this.selectedIndex].text" class="form-control  js-example-basic-single" required ></select>
																				<input type="hidden" name="region" id="region_content" value="" />
                                                                        </div> -->





																		<!-- <div class="region">Region </div>
																		<script>

																				var html_code = '';
																			$.getJSON( "https://psgc.gitlab.io/api/regions/", function( data ) {
																				$.each( data, function( key, val ) {

																					html_code +='<option value=""> Select</option>';
																					items.push( "<option value='" + val.code + "'>" + val.name + "</option>" );
																				});
																				
																				$( "<select />", {
																					"class": "form-control  js-example-basic-single",
																					"id": "region",
																					html: items.join( "" )
																				}).appendTo( ".region" );
																				});
																		</script>
																		<div class="province">Province</div>
																		<script>
																			$( ".region" ).change(function() {

																			
																				var region = $('#region').val();
																				var url = "https://psgc.gitlab.io/api/regions/"+region+"/provinces";

																					$.getJSON(url, function( data ) {
																					var items = [];
																					$.each( data, function( key, val ) {
																						items.push( "<option value='" + val.code + "'>" + val.name + "</option>" );
																					});
																					
																					$( "<select />", {
																						"class": "form-control  js-example-basic-single",
																						"id": "province",
																						html: items.join( "" )
																					}).html( "#province" );
																				});
																			});		
																		</script> -->
<!-- 
																	<div class="city">City</div>
																		<script>
																			$( ".province" ).change(function() {

																			
																				var province = $('#province').val();
																				var url = "https://psgc.gitlab.io/api/provinces/"+province+"/cities-municipalities";

																					$.getJSON(url, function( data ) {
																					var items = [];
																					$.each( data, function( key, val ) {
																						items.push( "<option id='" + key.name + "'>" + val.name + "</option>" );
																					});
																					
																					$( "<select />", {
																						"class": "form-control  js-example-basic-single",
																						html: items.join( "" )
																					}).appendTo( ".city" );
																				});
																			});		
																		</script> -->































                                                                        <!-- <div class="form-group">
                                                                            <label>Province</label>
                                                                           <select id="province" onchange="document.getElementById('text_content').value=this.options[this.selectedIndex].text" class="form-control  js-example-basic-single" id="province" required ></select>
																				<input type="hidden" name="province" id="text_content" value="" />
                                                                        </div>


                                                                        <div class="form-group">
                                                                            <label>Municipality / City</label>
                                                                            <select id="city" onchange="document.getElementById('city_text').value=this.options[this.selectedIndex].text" class="form-control  js-example-basic-single" id="city" required ></select>
																				<input type="hidden" name="city" id="city_text" value="" />
					                          							</div> -->




<!-- 
					                          							<div class="form-group">
                                                                            <label>Barangay</label>
                                                                            <select id="barangay" onchange="document.getElementById('barangay_text').value=this.options[this.selectedIndex].text" class="form-control  js-example-basic-single" id="barangay" required ></select>
																				<input type="hidden" name="barangay" id="barangay_text" value="" />
					                          							</div>

					                          						 -->


                                                            </div> 

                                                            <div class="col-md-1"></div>

                                                            <div class="col-md-6">
                                                                    <div class="row">

																	<?php if($_GET['spcs'] == 'Chicken') { ?>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Broiler Head Count</label>
																					<input type="text" class="form-control txt"  name="broiler_heads" id="broiler_heads"  placeholder="0" required>
																				</div>
																			</div>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Broiler Live Weight (kg)</label>
																					<input type="text" class="form-control txt1" name="broiler_weight"  placeholder="0" required>
																				</div>
																			</div>

																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Culled Layer Head Count</label>
																					<input type="text" class="form-control txt" name="culled_layer_heads" id="culled_layer_heads"  placeholder="0" required>
																				</div>
																			</div>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Culled Layer Live Weight (kg)</label>
																					<input type="text" class="form-control txt1" name="culled_layer_weight"  placeholder="0" required>
																				</div>
																			</div>

																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Native Head Count</label>
																					<input type="text" class="form-control txt" name="native_heads" id="native_heads"  placeholder="0" required>
																				</div>
																			</div>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label>Native Live Weight (kg)</label>
																					<input type="text" class="form-control txt1" name="native_weight"  placeholder="0" required>
																				</div>
																			</div>


																	<?php }else if($_GET['spcs'] == 'Hog'){ ?>

																		<div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Fattener Head Count</label>
                                                                                <input type="text" class="form-control txt"  name="broiler_heads" id="broiler_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Fattener Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="broiler_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
																		
                                                                        <div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Culled Sow Head Count</label>
                                                                                <input type="text" class="form-control txt" name="culled_layer_heads" id="culled_layer_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Culled Sow Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="culled_layer_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>


																		
                                                                        <div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Grower Head Count</label>
                                                                                <input type="text" class="form-control txt" name="native_heads" id="native_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Grower Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="native_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>


																		<div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Culled boar Head Count</label>
                                                                                <input type="text" class="form-control txt" name="culled_boar_heads" id="culled_boar_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Culled boar Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="culled_boar_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>


																	<?php }else if($_GET['spcs'] == 'Cattle'){ ?>

																		<div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Cow Head Count</label>
                                                                                <input type="text" class="form-control txt"  name="broiler_heads" id="broiler_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Cow Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="broiler_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Bull Head Count</label>
                                                                                <input type="text" class="form-control txt" name="culled_layer_heads" id="culled_layer_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Bull Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="culled_layer_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>


																	

                                                                        <div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Heifir Head Count</label>
                                                                                <input type="text" class="form-control txt" name="native_heads" id="native_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Heifir Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="native_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>


																		<div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Steer Head Count</label>
                                                                                <input type="text" class="form-control txt" name="culled_boar_heads" id="culled_boar_heads"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Steer Live Weight (kg)</label>
                                                                                <input type="text" class="form-control txt1" name="culled_boar_weight"  placeholder="0" required>
                                                                            </div>
                                                                        </div>
																		
																	<?php } else {?>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label> Head Count</label>
																					<input type="text" class="form-control txt"  name="broiler_heads" id="broiler_heads"  placeholder=" 0" required>
																				</div>
																			</div>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label> Live Weight (kg)</label>
																					<input type="text" class="form-control txt1" name="broiler_weight"  placeholder=" 0" required>
																				</div>
																			</div>
																	<?php } ?>
                                                                       

																		<div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label>Total Head Count</label>
                                                                                <input type="text" class="form-control calculate"  id="sum1" name="total_heads"   readonly>
                                                                            </div>
                                                                        </div>

																		<div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Total Live Weight (kg)</label>
                                                                                <input type="text" class="form-control calculate"  id="sum2" name="total_weight"  readonly>
                                                                            </div>
                                                                        </div>

																<!-- 		<div class="col-md-4">
                                                                            <div class="form-group">
                                                                                <label>Total of Average</label>
                                                                                <input type="text" class="form-control" id="quotient"  name="total_average"  placeholder="Native Live Weight (kg)">
                                                                            </div>
                                                                        </div> -->




                                                                            <br><br><br><br><br>
                                                                        <div class="col-md-12">
                                                                        <h4>Documentary Requirements</h4>

                                                                        <div class="row">
                                                                            <div class="col-md-12">
																				<div class="input-group mb-3" id="to_hide">
																					<input type="file" class="form-control" id="shipping_permit"  name="shipping" accept="image/*" capture required>
																					<label class="input-group-text" for="" >Shipping Permit</label>
																				</div>

																				<div class="input-group mb-3">
																					<input type="file" name="veterenary" class="form-control" id="veterinary" required>
																					<label class="input-group-text" for="" >Veterinary Health Certificate (VHC)</label>
																				</div>
                                                                            </div>

                                                                            <div class="col-md-6">
                                                                            </div>
                                                                <?php if($_GET['spcs'] == 'Cattle'){?>
                                                                			
																			<div class="col-md-12">
																				<div class="input-group mb-3">
																					<input type="file" class="form-control" id="inputGroupFile02" name="ownership" required>
																					<label class="input-group-text" for="inputGroupFile02" >Certificate of Ownership</label>
																				</div>

																				<div class="input-group mb-3">
																					<input type="file" name="transfer" class="form-control" id="inputGroupFile02" required>
																					<label class="input-group-text" for="inputGroupFile02" >Certificate to Transfer</label>
																				</div>
                                                                            </div>
                                                                <?php  } else{?>
                                                                			
                                                                <?php } ?>
                                                                        </div>
                                                                     </div>
                                                                </div>
                                                            </div>






                                    </div>
                                </div>

								<div id="modal_theme_success" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											

											<div class="modal-body">
												<br>
												<h2 class="text-center">Are you sure you want to submit your report?</h2>
											</div>

											<div class="text-center">
												<button type="submit" name="btn_save_drr" class="btn bg-success">Yes</button>
												<button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
											</div>
											<br>
										</div>
									</div>
								</div>


								

                                <div class="chart position-relative" id="traffic-sources"></div>
                            </div>
                        </div>
                    <div class="col-md-1"></div>

                        <button type="button" data-toggle="modal" data-target="#modal_theme_success" class="fab" >Submit</button>
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

					</form>
				
				</div>
			</div>
		</div>
	</div>
		  <script type="text/javascript">
				$(document).ready(function() {
					calculateSum();

					$(".txt").on("keydown keyup", function() {
						calculateSum();
					});
				});
				function calculateSum() {
					var sum = 0;
					//iterate through each textboxes and add the values
					$(".txt").each(function() {
						//add only if the value is number
						if (!isNaN(this.value) && this.value.length != 0) {
							sum += parseFloat(this.value);
							$(this).css("background-color", "#FEFFB0");
						}
						else if (this.value.length != 0){
							$(this).css("background-color", "red");
						}
					});
				
					$("input#sum1").val(sum);
				}
   		 </script>

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
