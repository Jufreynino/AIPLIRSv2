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
							<ul class="media-list" >
								
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
							<a href="dashboard.php" class="nav-link active">
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
								POSMS Profile
								</span>
								<span class="badge badge-pill bg-warning-400 ml-auto"><?php echo count_pending_accounts() ?></span>
							</a>
						</li>


						<li class="nav-item">
							<a href="mio_account.php" class="nav-link ">
								<i class="icon-user"></i>
								<span>
								Meat Inspection Officer Profile
								</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="regions.php" class="nav-link ">
								<i class="icon-file-check2"></i>
								<span>
								Daily Meat Inspection Report / Daily Report of Receiving
								</span>
							</a>
						</li>

						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-check2"></i> <span>Monthly Meat Inspection Report </span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								
								<li class="nav-item">
									<a href="by_region_mmir.php" class="nav-link">Regional Data
									</a>
								</li>
								<li class="nav-item">
									<a href="by_province_mmir.php" class="nav-link">Provincial Data
									</a>
								</li>
							

								<li class="nav-item">
									<a href="by_city_mmir.php" class="nav-link">By City 
									</a>
								</li>
								<li class="nav-item">
									<a href="by_meat_establishment_mmir.php" class="nav-link">By Meat Establishment
									</a>
								</li>
							</ul>
						</li>


						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-check2"></i> <span>Condemnation Report</span>
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
							<a href="#" class="nav-link"><i class="icon-user"></i> <span>Fit for Human Consumption</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								
								<li class="nav-item">
									<a href="by_region_fhc.php" class="nav-link">Regional Data
									</a>
								</li>
								<li class="nav-item">
									<a href="by_province_fhc.php" class="nav-link">Provincial Data
									</a>
								</li>
								<li class="nav-item">
									<a href="by_city_fhc.php" class="nav-link">By City 
									</a>
								</li>
								<li class="nav-item">
									<a href="by_meat_establishment_fhc.php" class="nav-link">By Meat Establishment
									</a>
								</li>

							</ul>
						</li>

						


						<li class="nav-item">
							<a href="meat_establishment.php" class="nav-link ">
								<i class="icon-office"></i>
								<span>
								Meat Establishments Profile
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



					
					</ul>
				</div>
			</div>
		</div>
		<div class="content-wrapper">
			<div class="page-header page-header-light">
				
			</div>
			<div class="content">
				<div class="row">
					<div class="col-xl-12">
						<div class="card">
							<div class="card-header header-elements-inline">
								<h5 class="card-title"><b>Antemortem - Mid Level</b></h5>

								<div class="header-elements">
									<div class="list-icons">
				                		<a class="list-icons-item" data-action="collapse"></a>
				                	</div>
			                	</div>


							</div>

							<div class="card-body py-0">				
								<div class="row">	

                                    <div class="col-xl-4 col-lg-4">
                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0" style="color:black">Suspected</h5>
                                                </div>



                                                <table class="table table-bordered" style="margin-top:-25px;">

													<tr>
														<th>Disease</th>
														<th>Heads</th>
														<th>Weight</th>
													</tr>  
													<tr>
                                                <?php echo fetch_all_mid_antemortem_suspected() ?>
													</tr>  
													                                         	
                                                </table>

                                            </div>
                                        </div>
                                    </div>	



                                    <div class="col-xl-4 col-lg-4">
                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0" style="color:black">Rejected</h5>
                                                </div>



                                                <table class="table table-bordered" style="margin-top:-25px;">

													<tr>
														<th>Disease</th>
														<th>Heads</th>
														<th>Weight</th>
													</tr>  
													<tr>
                                                <?php echo fetch_all_mid_antemortem_rejected() ?>
													</tr>  
													                                         	
                                                </table>

                                            </div>
                                        </div>
                                    </div>	



                                    <div class="col-xl-4 col-lg-4">
                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
                                                <div class="mb-4">
                                                    <h5 class="card-title mb-0" style="color:black">Condemned</h5>
                                                </div>



                                                <table class="table table-bordered" style="margin-top:-25px;">

													<tr>
														<th>Disease</th>
														<th>Heads</th>
														<th>Weight</th>
													</tr>  
													<tr>
                                                <?php echo fetch_all_mid_antemortem_condemned() ?>
													</tr>  
                                                </table>
                                            </div>
                                        </div>
                                    </div>	
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-xl-12">
						<div class="card ">
							<div class="card-header header-elements-inline">
								<h5 class="card-title"><b>Postmortem - Mid Level</b></h5>
								<div class="header-elements">
									<div class="list-icons">
				                		<a class="list-icons-item" data-action="collapse"></a>
				                	</div>
			                	</div>
							</div>

							<div class="card-body">
								<ul class="nav nav-tabs nav-tabs-highlight justify-content-center">
									<li class="nav-item"><a href="#centered-tab1" class="nav-link active" data-toggle="tab">CARCASS</a></li>
									<li class="nav-item"><a href="#centered-tab2" class="nav-link" data-toggle="tab">LUNGS</a></li>
									<li class="nav-item"><a href="#centered-tab3" class="nav-link" data-toggle="tab">LIVER</a></li>
									<li class="nav-item"><a href="#centered-tab4" class="nav-link" data-toggle="tab">HEART</a></li>
									<li class="nav-item"><a href="#centered-tab5" class="nav-link" data-toggle="tab">INTESTINES</a></li>
									<li class="nav-item"><a href="#centered-tab7" class="nav-link" data-toggle="tab">FEET</a></li>
									<li class="nav-item"><a href="#centered-tab8" class="nav-link" data-toggle="tab">KIDNEYS</a></li>
									<li class="nav-item"><a href="#centered-tab9" class="nav-link" data-toggle="tab">SPLEEN</a></li>
									<li class="nav-item"><a href="#centered-tab6" class="nav-link" data-toggle="tab">TRIMMINGS</a></li>
									
								</ul>

								<div class="tab-content">
									<div class="tab-pane fade show active" id="centered-tab1">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Carcass</h5>
		                                                </div>

		                                                <table class="table table-bordered" style="margin-top:-25px;">
															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_carcass() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>
									</div>

									<div class="tab-pane fade" id="centered-tab2">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Lungs</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_lung() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>
									</div>

									<div class="tab-pane fade" id="centered-tab3">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Liver</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_liver() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>
									</div>

									<div class="tab-pane fade" id="centered-tab4">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Heart</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_heart() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>
									</div>

									<div class="tab-pane fade" id="centered-tab5">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Intestines</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_intestine() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>

									</div>






									
									<div class="tab-pane fade" id="centered-tab7">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Feet</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_feet() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>
									</div>



									<div class="tab-pane fade" id="centered-tab8">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Kidneys</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_kidneys() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>
									</div>


									<div class="tab-pane fade" id="centered-tab9">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Spleen</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_spleen() ?>
															</tr>  
		                                                </table>
		                                            </div>
		                                        </div>
		                                    </div>
	                                   </div>
									</div>



									<div class="tab-pane fade" id="centered-tab6">
										<div class="row">
											<div class="col-xl-4 col-lg-4 col-md-4 text-center">
		                                    </div>

											<div class="col-xl-4  col-lg-4 text-center">
		                                        <div class="card"  style="border:1px solid #b7b7b7; border-radius: 0;">
		                                            <div class="card-statistic-3 p-4">
		                                                <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
		                                                <div class="mb-4">
		                                                    <h5 class="card-title mb-0" style="color:black">Trimmings</h5>
		                                                </div>



		                                                <table class="table table-bordered" style="margin-top:-25px;">

															<tr>
																<th>Disease</th>
																<th>Heads</th>
																<th>Weight</th>
															</tr>  
															<tr>
		                                                <?php echo fetch_all_mid_postmortem_trimmings() ?>
															</tr>  
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
</body>
</html>
