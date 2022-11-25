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

	elseif($_SESSION['role'] == 1){
		// POSMS Role page redirection
		header('location: ../../pages/posms/dashboard.php');
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
	<title>Automated In-Plant Line Inspection Reporting System</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="../../global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../../global_assets/css/custom.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<link href="../../assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/colors.min.css" rel="stylesheet" type="text/css">
	<script src="../../global_assets/js/main/jquery.min.js"></script>
	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>


	<script src="../../global_assets/js/plugins/tables/datatables/datatables.min.js"></script>  
	<script src="../../global_assets/js/plugins/tables/datatables/extensions/responsive.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/selects/select2.min.js"></script>

	<script src="../../global_assets/js/demo_pages/datatables_responsive.js"></script>




	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/dashboard.js"></script>


<script type="text/javascript" src="../../global_assets/js/jquery.ph-locations.js"></script>



	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="../../global_assets/js/plugins/notifications/jgrowl.min.js"></script>
	<script src="../../global_assets/js/plugins/notifications/noty.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/styling/switch.min.js"></script>
	<script src="../../global_assets/js/demo_pages/form_checkboxes_radios.js"></script>
	<script src="../../global_assets/js/demo_pages/extra_jgrowl_noty.js"></script>
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
						<i class="icon-alert"></i>
						<span class="d-md-none ml-2">Alerts</span>
						<!-- <span class="badge badge-pill bg-warning-400 ml-auto ml-md-0">2</span> -->
					</a>
					
					<div class="dropdown-menu dropdown-menu-right dropdown-content wmin-md-350">
						<div class="dropdown-content-header">
							<span class="font-weight-semibold">Diseases Report</span>
							<!-- <a href="#" class="text-default"><i class="icon-compose"></i></a> -->
						</div>

						<div class="dropdown-content-body dropdown-scrollable">
							<ul class="media-list">
								<li class="media">
									<div class="media-body">
										<div class="media-title">
											<a href="critical_level.php">
												<span style="font-size: 15px;">Critical Level Disease Reported</span>
											</a>
										</div>
										<span class="float-right text-muted" style="font-size:20px; margin-top: -10px; color:#f56161 !important;"><?php echo count_critical_level() ?></span>
									</div>
								</li>
								

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
							<div class="mr-3">
								<a href="#">
								<img class=" text-warning-400  img-circle" width="38" height="38"  src="../../global_assets/images/download.png"></i>
                                </a>
							</div>

							<div class="media-body">
								<div class="media-title font-weight-semibold"><?php echo $_SESSION['lastname'].', '.$_SESSION['firstname'] ?></div>
								<div class="font-size-xs opacity-50">
								<?php 
                                    if($_SESSION['role'] == 3)
                                    {
                                        ?> Meat Establishment <?php 
                                    }
                                    elseif($_SESSION['role'] == 2)
                                    {
                                        ?>Meat Inspection Officer <?php 
                                    }
                                    elseif($_SESSION['role'] == 1)
                                    {
                                        ?> POSMS <?php 
                                    }
                                    elseif($_SESSION['role'] == 0)
                                    {
                                        ?>POSMD <?php 
                                    }


                                    ?> 
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
							<a href="posms_account.php" class="nav-link ">
								<i class="icon-user"></i>
								<span>
								POSMS Accounts
								</span>
								<span class="badge badge-pill bg-warning-400 ml-auto"><?php echo count_pending_accounts() ?></span>
							</a>
						</li>


						<li class="nav-item">
							<a href="mio_account.php" class="nav-link active">
								<i class="icon-user"></i>
								<span>
								Meat Inspection Officer Accounts
								</span>
							</a>
						</li>
						

						<li class="nav-item">
							<a href="meat_establishment.php" class="nav-link ">
								<i class="icon-office"></i>
								<span>
								Meat Establishment Accounts
								</span>
							</a>
						</li>
							
						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-check2"></i> <span>Diseases or Conditions</span></a>
							<ul class="nav nav-group-sub" data-submenu-title="Menu levels">


								<li class="nav-item nav-item-submenu">
									<a href="#" class="nav-link"><i class="icon-home7"></i> Slaughterhouse</a>
									<ul class="nav nav-group-sub">
										
										<li class="nav-item"><a href="antemortem_slh.php" class="nav-link"><i class="icon-files-empty"></i>Antemortem</a></li>
										<li class="nav-item"><a href="postmortem_slh.php" class="nav-link"><i class="icon-files-empty"></i>Postmortem</a></li>
									</ul>
								</li>

								
								<li class="nav-item nav-item-submenu">
									<a href="#" class="nav-link"><i class="icon-home7"></i> Poultry Dressing Plant</a>
									<ul class="nav nav-group-sub">
										<li class="nav-item"><a href="antemortem_pdp.php" class="nav-link"><i class="icon-files-empty"></i>Antemortem</a></li>
										<li class="nav-item"><a href="postmortem_pdp.php" class="nav-link"><i class="icon-files-empty"></i>Postmortem</a></li>
										
									</ul>
								</li>
							</ul>
						</li>

						<br>
						<br>

						<li class="nav-item-header text-center" style="background-color:#833737;"><div class="text-uppercase font-size-xs line-height-xs " style="font-size: 15px; color:white;">Meat Inspection Report</div> <i class="icon-menu" title="Data visualization"></i></li>
								
						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Receiving of Animals</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								<li class="nav-item">
									<a href="by_national_receiving_report.php" class="nav-link">National Data
									</a>
								</li>

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
									<a href="by_national_fit_report.php" class="nav-link">National Data
									</a>
								</li>

								
								<li class="nav-item">
									<a href="by_meat_establishment_fit_report.php" class="nav-link ">Meat Establishment Data
									</a>
								</li>

							</ul>
						</li>

						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Fit for Human Consumption</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								<li class="nav-item">
									<a href="by_national_fhc_report.php" class="nav-link">National Data
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
									<a href="by_national_summary_report.php" class="nav-link">National Data
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

							<?php mio_profile_posmd() ?>



					<div class="tab-content w-100">


					<div class="accordion-sortable" id="accordion-controls">
							<div class="card">
								<div class="card-header   text-white header-elements-inline" style="background-color:#26a69a;">
									<h6 class="card-title">
										<a data-toggle="collapse" class="text-white collapsed" style=" font-weight:bold !important;" href="#accordion-controls-group1">Current Meat Establishment Assignments</a>
									</h6>

									<div class="header-elements">
										<div class="list-icons">
					                		
					                	</div>
				                	</div>
								</div>

								<div id="accordion-controls-group1" class="collapse show" data-parent="#accordion-controls">
									<div class="card-body">
										<br>
												<table class="table table-bordered table-striped  datatable-responsive" >
													<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
														<tr class="text-center">
															<th style=" font-weight:bold !important;">Meat Establishment</th>
															<th style=" font-weight:bold !important;">Type</th>
															<th style=" font-weight:bold !important;">LTO Number</th>
															<th style=" font-weight:bold !important;">LTO Expiration</th>
														</tr>
													</thead>
													<tbody>
														<?php echo display_meat_dealer_assigned_mio()?>
														
													</tbody>
												</table>
										</div>
									</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header  text-white  header-elements-inline"style="background-color:#26a69a;">
									<h6 class="card-title">
										<a class="text-white collapsed" data-toggle="collapse" style=" font-weight:bold !important;" href="#accordion-controls-group2">Previous Meat Establishment Assignments</a>
									</h6>

									<div class="header-elements">
										<div class="list-icons">
					                		
					                	</div>
				                	</div>
								</div>
								<br>

								<div id="accordion-controls-group2" class="collapse" data-parent="#accordion-controls">
									<div class="card-body">
												<table class="table table-bordered table-striped  datatable-responsive" >
													<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
														<tr class="text-center">
															<th style=" font-weight:bold !important;">Meat Establishment</th>
															<th style=" font-weight:bold !important;">Type</th>
															<th style=" font-weight:bold !important;">LTO Number</th>
															<th style=" font-weight:bold !important;">Start Date </th>
															<th style=" font-weight:bold !important;">End Date </th>
															<th style=" font-weight:bold !important;">Region</th>
														</tr>
													</thead>
													<tbody>
														<?php echo history_meat_dealer_assigned_mio()?>
														
													</tbody>
												</table>
									</div>
								</div>
							</div>

						



							








					</div>
					<!-- /right content -->


				<div class="card">
							<div class="card-header text-white header-elements-inline" style="background-color:#26a69a;">
								<h6 class="card-title" style=" font-weight:bold !important;">Meat Inspection Activities</h6>
								<div class="header-elements">
									<div class="list-icons">
				                	</div>
			                	</div>
							</div>
							<br>

							<div class="card-body">
								<ul class="nav nav-tabs nav-tabs-bottom">
									<li class="nav-item"><a href="#bottom-tab1" style=" font-weight:bold !important;" class="nav-link active" data-toggle="tab">Antemortem Inspection</a></li>
									<li class="nav-item"><a href="#bottom-tab2" style=" font-weight:bold !important;" class="nav-link" data-toggle="tab">Postmortem Inspection</a></li>
									
								</ul>

								<div class="tab-content">
									<div class="tab-pane fade show active" id="bottom-tab1">
										<div class="card">
												
												<div class="card-body">
													<div class="d-md-flex">
														<ul class="nav nav-tabs nav-tabs-vertical flex-column mr-md-3 wmin-md-200 mb-md-0 border-bottom-0">
															<li class="nav-item"><a href="#vertical-left-tab1" class="nav-link active" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2"></i> Suspect / On hold</a></li>
															<li class="nav-item"><a href="#vertical-left-tab2" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2"></i> Rejected</a></li>
															<li class="nav-item"><a href="#vertical-left-tab3" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2"></i> Condemned</a></li>
															
														</ul>

														<div class="tab-content">
															<div class="tab-pane fade show active" id="vertical-left-tab1">
																	 	<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Total Live Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_ffs_suspect() ?>
																				</tbody>
																			</table>

															</div>

															<div class="tab-pane fade" id="vertical-left-tab2">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Total Live Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_ffs_reject() ?>
																				</tbody>
																			</table>
															</div>

															<div class="tab-pane fade" id="vertical-left-tab3">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Total Live Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_ffs_condemned() ?>
																				</tbody>
																			</table>
															</div>
															
														</div>
													</div>
												</div>
											</div>
										</div>

									<div class="tab-pane fade" id="bottom-tab2">
										<div class="card">
												
												<div class="card-body">
													<div class="d-md-flex">
														<ul class="nav nav-tabs nav-tabs-vertical flex-column mr-md-3 wmin-md-200 mb-md-0 border-bottom-0">
															<li class="nav-item"><a href="#vertical-left-tab4" class="nav-link active" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Carcass</a></li>
															<li class="nav-item"><a href="#vertical-left-tab5" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Lungs</a></li>
															<li class="nav-item"><a href="#vertical-left-tab6" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Liver</a></li>
															<li class="nav-item"><a href="#vertical-left-tab7" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Heart</a></li>
															<li class="nav-item"><a href="#vertical-left-tab8" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Intestine</a></li>
															<li class="nav-item"><a href="#vertical-left-tab8" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Trimmings</a></li>
															<li class="nav-item"><a href="#vertical-left-tab9" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Feet</a></li>
															<li class="nav-item"><a href="#vertical-left-tab10" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Kidney</a></li>
															<li class="nav-item"><a href="#vertical-left-tab11" class="nav-link" data-toggle="tab" style=" font-weight:bold !important;"><i class="icon-menu7 mr-2" ></i> Spleen</a></li>
															
														</ul>

														<div class="tab-content">
															<div class="tab-pane fade show active" id="vertical-left-tab4">
																	 	<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_carcass() ?>
																				</tbody>
																			</table>

															</div>

															<div class="tab-pane fade" id="vertical-left-tab5">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_lungs() ?>
																				</tbody>
																			</table>
															</div>

															<div class="tab-pane fade" id="vertical-left-tab6">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_liver() ?>
																				</tbody>
																			</table>
															</div>
															<div class="tab-pane fade" id="vertical-left-tab7">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_heart() ?>
																				</tbody>
																			</table>
															</div>

															<div class="tab-pane fade" id="vertical-left-tab8">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_intestine() ?>
																				</tbody>
																			</table>
															</div>

															<div class="tab-pane fade" id="vertical-left-tab8">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_trimmings() ?>
																				</tbody>
																			</table>
															</div>


															<div class="tab-pane fade" id="vertical-left-tab8">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_feet() ?>
																				</tbody>
																			</table>
															</div>


															<div class="tab-pane fade" id="vertical-left-tab8">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_kidney() ?>
																				</tbody>
																			</table>
															</div>


															<div class="tab-pane fade" id="vertical-left-tab8">
																			<table class="table table-bordered table-striped  datatable-responsive" >
																				<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																					<tr class="text-center">
																						<th style=" font-weight:bold !important;">Disease / Condition</th>
																						<th style=" font-weight:bold !important;">Species</th>
																						<th style=" font-weight:bold !important;">Head Count</th>
																						<th style=" font-weight:bold !important;">Dressed Weight (kg)</th>
																						<th style=" font-weight:bold !important;">Meat Establishment</th>
																						<th style=" font-weight:bold !important;">Meat Dealer</th>
																						<th style=" font-weight:bold !important;">Region</th>
																						<th style=" font-weight:bold !important;">Date</th>
																					
																					</tr>
																				</thead>
																				<tbody>
																					<?php echo mio_summary_fhc_spleen() ?>
																				</tbody>
																			</table>
															</div>
															
															
														</div>
													</div>
												</div>
											</div>
										</div>

									
								</div>
							</div>
						</div>
				<!-- /inner container -->

			</div>
			<!-- /content area -->

			
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
		$(document).ready(function() {
		    $('.js-example-basic-single').select2();
		});

	</script>


	<script type="text/javascript">
            
            var my_handlers = {

                fill_provinces:  function(){

                    var region_code = $(this).val();
                    $('#province').ph_locations('fetch_list', [{"region_code": region_code}]);
                    
                },

                fill_cities: function(){

                    var province_code = $(this).val();
                    $('#city').ph_locations( 'fetch_list', [{"province_code": province_code}]);
                },


               
            };

            $(function(){

                $('#region').on('change', my_handlers.fill_provinces);

                $('#region').ph_locations({'location_type': 'regions'});

                $('#region').ph_locations('fetch_list');
            });


        </script>


        <script>
$(document).ready(function() {
$('#butsave').on('click', function(e) {
var from = $('#from').val();
var to = $('#to').val();
var province = $('#province option:selected').text();
	e.preventDefault();

if(from!="" && to!="" && province!="" && city!=""){
	$.ajax({
		url: "save.php",
		type: "POST",
		data: {
			from: from,
			to: to,
			province: province
		},
		cache: false,
		success: function(dataResult){
			var dataResult = JSON.parse(dataResult);
			if(dataResult.statusCode==200){
				$("#butsave").removeAttr("disabled");
				$('#fupForm').find('input:text').val('');
				$("#success").show();
				$('#success').html('Data added successfully !'); 						
			}
			else if(dataResult.statusCode==201){
				alert("Error occured !");
			}
			
		}
	});
	}
	else{
		new Noty({
                text: 'Please fill all fields',
                type: 'info',
                modal: true
            }).show();
	}
});
});
</script>

	<script>
		$('.datatable-responsive').dataTable( {
			"order": [],
		} );
	</script>
</body>
</html>
