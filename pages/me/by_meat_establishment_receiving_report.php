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
							<a href="dashboard.php" class="nav-link">
								<i class="icon-home4"></i>
								<span>
									Dashboard
								</span>
							</a>
						</li>


						<li class="nav-item nav-item-submenu nav-item-expanded nav-item-open" >
							<a href="#" class="nav-link"  style="background-color:#243238 !important;"><i class="icon-file-check"></i> <span>DRR & Meat Inspection Status </span></a>
							<ul class="nav nav-group-sub" data-submenu-title="Pickers">
								<li class="nav-item"><a href="select_species.php" class="nav-link">Add New Transaction</a></li>
								<li class="nav-item"><a href="drr.php" class="nav-link">List of Transaction</a></li>
							</ul>
						</li>


						
                        <li class="nav-item-header text-center" style="background-color:#833737;"><div class="text-uppercase font-size-xs line-height-xs " style="font-size: 15px; color:white;">Summary of Meat Inspection Report </div> <i class="icon-menu" title="Data visualization"></i></li>
								
						<li class="nav-item nav-item-submenu  nav-item-expanded nav-item-open">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Receiving of Animals</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								

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
					<div class="col-xl-12">
						<div class="card">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card " style="border-radius: 0;">
                                        <div class="card-body ">
                                            <div class="text-center">
                                                <h1 style="font-weight:bold;">Receiving of Animals</h1>
                                                <?php if(isset($_POST['search_me_data_fit_for_slaughter_me'])) { ?>
                                                    <p style="font-size:15px; ">For the period of <?php echo date('F d, Y', strtotime($_POST['from'])); ?> to <?php echo date('F d, Y', strtotime($_POST['to'])); ?></p>
                                                    
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<br>
							<br>
							<div class="card-body py-0">	
                                <form method="POST">
													<div class="col-md-12">
														<div class="row">
																	<div class="col-md-3">
																		<div class="form-group">
																			<label class="col-form-label text-right">From</label>
																					<input class="form-control" type="date" id="from" name="from" required max="<?php echo date('Y-m-d') ?>">
																		</div>
																	</div>

																	<div class="col-md-3">
																		<div class="form-group">
																			<label class="col-form-label text-right">To</label>
																					<input class="form-control" type="date" id="from" name="to" required max="<?php echo date('Y-m-d') ?>">
																		</div>
																	</div>
                                                                  


																	<div class="col-md-3">
																		<br>
																		<div class="form-group">
																			<label class="col-form-label "></label>
																				<button type="submit" name="search_me_data_fit_for_slaughter_me" class="btn btn-primary" style="margin-top:17px;">Filter</button>
																		</div>
																	</div>
																	</form>
														</div>
													</div>

																<div class="row">
																	<div class="col-md-12">
																		
																	<div class="wrapper">
																		<table class="table table-bordered table-striped ">
																			<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
																				<tr>
																					<th colspan="2" style="font-weight:bold !important; background-color: #3bb8d5; color:white;  text-align:center;">HOG </th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #eb5555fa; color:white;  text-align:center;">CHICKEN</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #a277f7; color:white;  text-align:center;">CATTLE</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #77a4f7; color:white;  text-align:center;">CARABAO</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #7fc998; color:white;  text-align:center;">HORSE</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #2cb1a4; color:white;  text-align:center;">GOAT</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #f7a677; color:white;  text-align:center;">SHEEP</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #4faf44; color:white;  text-align:center;">DUCK</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #e77393; color:white;  text-align:center;">PIGEON</th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #ba7abb; color:white;  text-align:center;">OSTRICH </th>
																					<th  colspan="2" style="font-weight:bold !important; background-color: #f7a677; color:white;  text-align:center;">CROCODILE </th>


																				</tr>
																				<tr>
																													<th  style="font-weight:bold !important; background-color: #3bb8d5; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #3bb8d5; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>
																														<th style="font-weight:bold !important; background-color: #eb5555fa; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #eb5555fa; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>
																													<th style="font-weight:bold !important; background-color: #a277f7; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #a277f7; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>
																													<th style="font-weight:bold !important; background-color: #77a4f7; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #77a4f7; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>
																												
																													<th style="font-weight:bold !important; background-color: #7fc998; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #7fc998; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>
																													<th style="font-weight:bold !important; background-color: #2cb1a4; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #2cb1a4; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>
																													<th style="font-weight:bold !important; background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>

																													<th style="font-weight:bold !important; background-color: #4faf44; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #4faf44; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>




																													<th style="font-weight:bold !important; background-color: #e77393; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #e77393; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>


																													<th style="font-weight:bold !important; background-color: #ba7abb; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #ba7abb; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>


																													<th style="font-weight:bold !important; background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center;">Heads</p></th>
																													<th style="font-weight:bold !important; background-color: #f7a677; color:white;"><p style="font-size:14px; text-align:center;">Weight (kg)</p></th>


																												</tr>
																			</thead>
																			<tbody>

																				<?php echo me_receiving_report_posmd_me() ?>
																				
																			</tbody>
																		</table>
																		<br>
																		<br>
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
