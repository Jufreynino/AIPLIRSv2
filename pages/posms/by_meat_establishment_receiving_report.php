<?php
session_start();
include '../../function/function.php';
if(isset($_SESSION['employee_id']))
{
	if($_SESSION['role'] == 3)
	{
		// Meat Dealer Role page redirection
		header('location: ../../pages/me/dashboard.php');
	}
	elseif($_SESSION['role'] == 2){
		// Meat inspection officer Role page redirection
		header('location: ../../pages/mio/dashboard.php');
	}

	elseif($_SESSION['role'] == 0){
		// POSMS Role page redirection
		header('location: ../../pages/posmd/dashboard.php');
	}
}
else{



    header('location: ../../pages/auth/index.php');
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
	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/dashboard.js"></script>
	<script src="../../global_assets/js/demo_pages/datatables_responsive.js"></script>
	<script src="../../global_assets/js/plugins/tables/datatables/datatables.min.js"></script>
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
			

				<!-- <li class="nav-item dropdown">
					<a href="#" class="navbar-nav-link dropdown-toggle caret-0" data-toggle="dropdown">
						<i class="icon-alert"></i>
						<span class="d-md-none ml-2">Alerts</span>
						<span class="badge badge-pill bg-warning-400 ml-auto ml-md-0">2</span>
					</a>
					
					<div class="dropdown-menu dropdown-menu-right dropdown-content wmin-md-350">
						<div class="dropdown-content-header">
							<span class="font-weight-semibold">Diseases Report</span>
							<a href="#" class="text-default"><i class="icon-compose"></i></a>
						</div>

						<div class="dropdown-content-body dropdown-scrollable">
							<ul class="media-list">
								
								<li class="media">
									<div class="mr-3">
										<img src="../../global_assets/images/demo/users/face25.jpg" width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<div class="media-title">
											<a href="#">
												<span class="font-weight-semibold">Richard Vango</span>
												<span class="text-muted float-right font-size-sm"></span>
											</a>
										</div>
										
										<span class="text-muted">Other travelling salesmen live a life of luxury...</span>
									</div>
								</li>
							</ul>
						</div>

						<div class="dropdown-content-footer justify-content-center p-0">
							<a href="#" class="bg-light text-grey w-100 py-2" data-popup="tooltip" title="Load more"><i class="icon-menu7 d-block top-0"></i></a>
						</div>
					</div>
				</li> -->

				<li class="nav-item dropdown dropdown-user">
					<a href="#" class="navbar-nav-link d-flex align-items-center dropdown-toggle" data-toggle="dropdown">
						<img src="../../global_assets/images/download.png" class="rounded-circle mr-2" height="34" alt="">
						<span><?php echo $_SESSION['lastname'].', '.$_SESSION['firstname'] ?></span>
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
						

							<div class="media-body">
								<div class="media-title font-weight-semibold"><?php echo $_SESSION['lastname'].', '.$_SESSION['firstname'] ?></div>
								<div class="font-size-xs opacity-50">

								<?php echo $_SESSION['region'] ?>


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

						<li class="nav-item">
							<a href="meat_inspector_account.php" class="nav-link ">
								<i class="icon-user"></i>
								<span>
								Meat Inspection Officer Accounts 
								</span>
								<span class="badge bg-danger align-self-center ml-auto"><?php echo count_pending_mio_account() ?></span>
							</a>
						</li>



						<li class="nav-item">
							<a href="me_per_region.php" class="nav-link ">
								<i class="icon-office"></i>
								<span>
								Meat Establishment Accounts
								</span>
									<span class="badge bg-danger align-self-center ml-auto"><?php echo count_pending_meat_establishment_account() ?></span>
							</a>
						</li>

						<li class="nav-item">
							<a href="daily_receiving_report.php" class="nav-link ">
								<i class="icon-paw"></i>
								<span>
								Daily Meat Inspection Report
								</span>
							</a>
						</li>

						<li class="nav-item-header text-center" style="background-color:#833737;"><div class="text-uppercase font-size-xs line-height-xs " style="font-size: 15px; color:white;">Meat Inspection Report</div> <i class="icon-menu" title="Data visualization"></i></li>

				
								
						<li class="nav-item nav-item-submenu   nav-item-expanded nav-item-open">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Receiving of Animals</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">

								<li class="nav-item">
									<a href="by_region_receiving_report.php" class="nav-link ">Regional Data
									</a>
								</li>
								
								<li class="nav-item">
									<a href="by_meat_establishment_receiving_report.php" class="nav-link active">Meat Establishment Data
									</a>
								</li>
							</ul>
						</li>


						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Fit for Slaughter</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								

								<li class="nav-item">
									<a href="by_region_fit_report.php" class="nav-link">Regional Data
									</a>
								</li>
								
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
									<a href="by_region_fhc_report.php" class="nav-link">Regional Data
									</a>
								</li>
								
								<li class="nav-item">
									<a href="by_meat_establishment_fhc_report.php" class="nav-link">Meat Establishment Data
									</a>
								</li>

							</ul>
						</li>

						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Condemnation Report</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								<li class="nav-item">
									<a href="disease_antemortem_report.php" class="nav-link">Antemortem
									</a>
								</li>
								<li class="nav-item">
									<a href="disease_postmortem_report.php" class="nav-link">Postmortem
									</a>
								</li>
							</ul>
						</li>

						
						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Meat Inspection Report Summary</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								<li class="nav-item">
									<a href="by_region_summary_report.php" class="nav-link">Regional Data
									</a>
								</li>

							</ul>
						</li>

					</ul>


						
					</ul>
				</div>
			</div>
		</div>
		<div class="content-wrapper">
			
			<div class="content">
                <div class="row">
					<div class="col-md-12">
						<div class="card " style="border-radius: 0;">
							<div class="card-body ">
										<div class="text-center">
										<h1>  Meat Establishments</h1>
									<h2 > Receiving of Animals</h2>
									<?php if(isset($_POST['search_me_data_fit_for_slaughter'])) { ?>
										<p style="font-size:15px; ">For the period of <?php echo date('F d, Y', strtotime($_POST['from'])); ?> to <?php echo date('F d, Y', strtotime($_POST['to'])); ?></p>
										
									<?php } ?>
										</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12">
						<div class="card">
							<div class="card-body py-0">
									<br>
												<form method="POST">
													<div class="col-md-12">
														<div class="row">
																	<div class="col-md-2">
																		<div class="form-group">
																			<label class="col-form-label text-right">From</label>
																					<input class="form-control" type="date" id="from" name="from" required  max="<?php echo date('Y-m-d') ?>">
																		</div>
																	</div>

																	<div class="col-md-2">
																		<div class="form-group">
																			<label class="col-form-label text-right">To</label>
																					<input class="form-control" type="date" id="region" name="to" required  max="<?php echo date('Y-m-d') ?>">
																		</div>
																	</div>

																	

																	<div class="col-md-2">
																		<div class="form-group">
																			<label class="col-form-label text-right">Province</label>

																				<select name="province" id="province" class="form-control input-lg" onchange="document.getElementById('text_content').value=this.options[this.selectedIndex].text">
																					<option value="">Select Province</option>
																				</select>
																				<input type="hidden" name="province" id="text_content" value="" />
																		</div>
																	</div>



																	<div class="col-md-3">
																		<div class="form-group">
																			<label class="col-form-label text-right">Municipality / City</label>
																				
																			<select id="city" onchange="document.getElementById('city_text').value=this.options[this.selectedIndex].text" class="form-control  js-example-basic-single" id="city"  ></select>
																						<input type="hidden" name="city" id="city_text" value=""  />
																		</div>
																	</div>

																	<div class="col-md-3">
																		<br><br>
																				<button type="submit" name="search_me_data_fit_for_slaughter" style="margin-top:-5px;" class="btn btn-primary">Filter</button>
																	</div>
																	</form>
														</div>
													</div>
<br>

                               <div class="wrapper">
									<table class="table table-bordered datatable-responsive table-striped ">
										<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
											<tr class="text-center">
												<th  rowspan="2" class="sticky-col first-col" style="background-color:white !important; color:black;"><b>Meat Establishment</b></th>
												<th rowspan="2" style="  background-color:white !important; color:black;"><b>Region</b></th>
												<th rowspan="2" style="  background-color:white !important; color:black;"><b>Province</b></th>
												<th rowspan="2" style="  background-color:white !important; color:black;"><b>City</b></th>
												<th rowspan="2" style="  background-color:white !important; color:black;"><b>Type</b></th>
												<th rowspan="2" style="  background-color:white !important; color:black;"><b>LTO Number</b></th>
												<th colspan="2" style="background-color: #3bb8d5; color:white; font-weight:bold !important;">HOG </th>
													<th  colspan="2" style="background-color: #eb5555fa; color:white; font-weight:bold !important;">CHICKEN</th>
												<th  colspan="2" style="background-color: #a277f7; color:white; font-weight:bold !important;">CATTLE</th>
												<th  colspan="2" style="background-color: #77a4f7; color:white; font-weight:bold !important;">CARABAO</th>

												<th  colspan="2" style="background-color: #7fc998; color:white; font-weight:bold !important;">HORSE</th>
												<th  colspan="2" style="background-color: #2cb1a4; color:white; font-weight:bold !important;">GOAT</th>
												<th  colspan="2" style="background-color: #f7a677; color:white; font-weight:bold !important;">SHEEP</th>
												<th  colspan="2" style="background-color: #4faf44; color:white; font-weight:bold !important;">DUCK</th>
												<th  colspan="2" style="background-color: #e77393; color:white; font-weight:bold !important;">PIGEON</th>
												<th  colspan="2" style="background-color: #ba7abb; color:white; font-weight:bold !important;">OSTRICH </th>
												<th  colspan="2" style="background-color: #f7a677; color:white; font-weight:bold !important;">CROCODILE</th>

											</tr>
											
												<tr>
												<th  style="background-color: #3bb8d5; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #3bb8d5; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>
													<th style="background-color: #eb5555fa; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #eb5555fa; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>
												<th style="background-color: #a277f7; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #a277f7; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>
												<th style="background-color: #77a4f7; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #77a4f7; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>

												<th style="background-color: #7fc998; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #7fc998; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>
												<th style="background-color: #2cb1a4; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #2cb1a4; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>
												<th style="background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>

												<th style="background-color: #4faf44; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #4faf44; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>




												<th style="background-color: #e77393; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #e77393; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>


												<th style="background-color: #ba7abb; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #ba7abb; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>


												<th style="background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Heads</p></th>
												<th style="background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center; font-weight:bold !important;">Weight (kg)</p></th>


												</tr>
										</thead>
										<tbody>

											<?php echo me_receiving_report_posms_summ() ?>
											
										</tbody>
									</table>
							   </div>
						</div>
						</div>
					</div>
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
	
<script>
	$(document).ready(function(){

load_json_data('province');

function load_json_data(id, parent_id)
{

 var region ='<?php echo $_SESSION['region_code'] ?>';
 var html_code = '';
 $.getJSON('https://psgc.gitlab.io/api/regions/'+region+'/provinces/', function(data){

  html_code += '<option value="">Select Province</option>';
  $.each(data, function(key, value){
 
	if(value.parent_id == parent_id)
	{
	 html_code += '<option value="'+value.code+'">'+value.name+'</option>';
	}
  });
  $('#'+id).html(html_code);
 });
}



$(document).on('change', '#province', function(){
  var html_code = '';
  var province = $(this).val();



		$.getJSON('https://psgc.gitlab.io/api/provinces/'+province+'/cities-municipalities/', function(data){
		if(data =='')
		{
  	

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
		
		}
		else
		{
			

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
		}
		});
 });
 });

</script>
</body>
</html>
