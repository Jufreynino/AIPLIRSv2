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
                                        ?>Meat Inspector Officer <?php 
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

                        <li class="nav-item nav-item-submenu nav-item-expanded nav-item-open" >
							<a href="#" class="nav-link"  style="background-color:#243238 !important;"><i class="icon-file-check"></i> <span>DRR & Meat Inspection Status </span></a>
							<ul class="nav nav-group-sub" data-submenu-title="Pickers">
								<li class="nav-item"><a href="select_species.php" class="nav-link">Add New Transaction</a></li>
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

                        <div class="col-md-12" >

                            <div class="card">
                                <div class="card-header header-elements-inline"   style="  padding-top:10px !important; padding-bottom:10px !important; ">
									<h3 style="text-align: center;" >I. Conduct of Antemortem Inspection</h3>
                                </div>
                            </div>
                        </div>

						<div class="col-md-4" >
										<?php echo show_plant_profile() ?>
														<div class="card">
															<div class="card-header  header-elements-inline" style="background-color:#263238; color:white;">
																<span class="card-title font-weight-semibold">C. Summary of Food Animals Passed for Slaughter</span>
																<div class="header-elements">
																	<div class="list-icons">
																		<a class="list-icons-item" data-action="collapse"></a>
																	</div>
																</div>
															</div>

															<div class="card-body p-0">
																<div class="nav nav-sidebar my-2">
																		<?php echo show_antemortem_details() ?>
																	<li class="nav-item">
																		<a href="#" class="nav-link" style="color:black;">
																			<?php echo modify_antemortem_sum_total_heads() ?>
																			<span class="text-muted font-size-sm font-weight-normal ml-auto">No of Heads</span>
																		</a>
																	</li>
																	<li class="nav-item">
																		<a href="#" class="nav-link" style="color:black;">
																			<?php echo modify_antemortem_sum_total_weight() ?>
																			<span class="text-muted font-size-sm font-weight-normal ml-auto">Weight</span>
																		</a>
																	</li>
																</div>
															</div>
														</div>

													</div>
						
						<div class="col-md-8" >

								<div class="card">
										<div class="card-header header-elements-inline" style="background-color:#263238; color:white;">
											<span class="card-title font-weight-semibold">B. Conduct of Antemortem Inspection</span>
											<div class="header-elements">
												<div class="list-icons">
													<a class="list-icons-item" data-action="collapse"></a>
												</div>
											</div>
										</div>

										<div class="card-body p-0">


										<div class="col-md-12">
											<br>
											<h4>Suspect/On Hold</h4>
												<table style="width: 100%; margin-top:20px;" class="table_test" >
													<tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; ">
														<th style="font-size:12px !important;">No of Heads</th >
														<th style="font-size:12px !important;">Weight</th>
														<th style="font-size:12px !important;">Cause</th>
														<th style="font-size:12px !important;">Action</th>
													</tr>
													<?php echo modify_antemortem_suspect() ?>

													
												</table>
												<br>
												<div class="text-center">

												<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add_suspect">Add Suspect</button>

												<div id="add_suspect" class="modal fade"  data-backdrop="static" tabindex="-1">
													<div class="modal-dialog modal-sm">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title">Add Suspect</h5>
																<button type="button" class="close" data-dismiss="modal">&times;</button>
															</div>
															<?php echo add_antemortem_suspected() ?>
															<div class="modal-body">
															<form method="POST">

																<div class="form-group row">
																	<label class="col-form-label col-sm-3">No. Of Heads</label>
																	<div class="col-sm-9">
																		<input type="text" placeholder="No. Of Heads" name="heads" class="form-control" required>
																		<input type="hidden" value="<?php echo $_GET['mid'] ?>" name="id">
																	</div>
																</div>

																<div class="form-group row">
																	<label class="col-form-label col-sm-3">Weight</label>
																	<div class="col-sm-9">
																		<input type="text" placeholder="Weight" name="weight" class="form-control" required>
																	</div>
																</div>


																<div class="form-group row">
																	<label class="col-form-label col-sm-3">Cause</label>
																	<div class="col-sm-9">
																		<select class="form-control" name="cause" required>
																			<option value="">Cause</option>
																			<option value="Dead on arrival(DOA)">Dead on arrival(DOA)</option>
																			<option value="Dead after arrival(DAA)">Dead after arrival(DAA)</option>
																			<option value="Emaciation">Emaciation</option>
																			<option value="Flooded">Flooded</option>
																			<option value="Immaturity">Immaturity</option>
																			<option value="Heat Stroke">Heat Stroke</option>
																			<option value="Runts">Runts</option>
																		</select>
																	</div>
																</div>


																

															</div>

															<div class="modal-footer">
																<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
																<button type="submit" name="btn_submit" class="btn bg-primary">Add Suspect / on hold</button>
															</div>
														</div>
														</form>
													</div>
												</div>

												</div>

												<br><br><br>
											<h4>Rejected for Slaughter</h4>
												<table style="width: 100%; margin-top:20px;" class="table_test" >
													<tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; ">
														<th style="font-size:12px !important;">No of Heads</th >
														<th style="font-size:12px !important;">Weight</th>
														<th style="font-size:12px !important;">Cause</th>
														<th style="font-size:12px !important;">Action</th>
													</tr>
													
													<?php echo modify_antemortem_reject() ?>
												</table>









											<br>

											<div class="text-center">

												<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add_rejected">Add Rejected for Slaughter</button>

												<div id="add_rejected" class="modal fade"  data-backdrop="static" tabindex="-1">
													<div class="modal-dialog modal-sm">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title">Add Rejected for Slaughter</h5>
																<button type="button" class="close" data-dismiss="modal">&times;</button>
															</div>
															<?php echo add_antemortem_rejected() ?>
															<div class="modal-body">
															<form method="POST">

																<div class="form-group row">
																	<label class="col-form-label col-sm-3">No. Of Heads</label>
																	<div class="col-sm-9">
																		<input type="text" placeholder="No. Of Heads" name="heads" class="form-control" required>
																		<input type="hidden" value="<?php echo $_GET['mid'] ?>" name="id">
																	</div>
																</div>

																<div class="form-group row">
																	<label class="col-form-label col-sm-3">Weight</label>
																	<div class="col-sm-9">
																		<input type="text" placeholder="Weight" name="weight" class="form-control" required>
																	</div>
																</div>


																<div class="form-group row">
																	<label class="col-form-label col-sm-3">Cause</label>
																	<div class="col-sm-9">
																		<select class="form-control" name="cause" required>
																			<option value="">Cause</option>
																			<option value="Dead on arrival(DOA)">Dead on arrival(DOA)</option>
																			<option value="Dead after arrival(DAA)">Dead after arrival(DAA)</option>
																			<option value="Emaciation">Emaciation</option>
																			<option value="Flooded">Flooded</option>
																			<option value="Immaturity">Immaturity</option>
																			<option value="Heat Stroke">Heat Stroke</option>
																			<option value="Runts">Runts</option>
																		</select>
																	</div>
																</div>


																

															</div>

															<div class="modal-footer">
																<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
																<button type="submit" name="btn_submit_rejected" class="btn bg-primary">Add Suspect / on hold</button>
															</div>
														</div>
														</form>
													</div>
												</div>

												</div>















												<br><br><br>
											<h4>Condemned</h4>
												<table style="width: 100%; margin-top:20px;" class="table_test" >
													<tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; ">
														<th style="font-size:12px !important;">No of Heads</th >
														<th style="font-size:12px !important;">Weight</th>
														<th style="font-size:12px !important;">Cause</th>
														<th style="font-size:12px !important;">Action</th>
													</tr>

													<?php echo modify_antemortem_condemned() ?>

													
												</table>







												
											<br>

												<div class="text-center">

													<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add_condemned">Add Condemned</button>

													<div id="add_condemned" class="modal fade"  data-backdrop="static" tabindex="-1">
														<div class="modal-dialog modal-sm">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">Add Condemned</h5>
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																</div>
																<?php echo add_antemortem_condemned() ?>
																<div class="modal-body">
																<form method="POST">

																	<div class="form-group row">
																		<label class="col-form-label col-sm-3">No. Of Heads</label>
																		<div class="col-sm-9">
																			<input type="text" placeholder="No. Of Heads" name="heads" class="form-control" required>
																			<input type="hidden" value="<?php echo $_GET['mid'] ?>" name="id">
																		</div>
																	</div>

																	<div class="form-group row">
																		<label class="col-form-label col-sm-3">Weight</label>
																		<div class="col-sm-9">
																			<input type="text" placeholder="Weight" name="weight" class="form-control" required>
																		</div>
																	</div>


																	<div class="form-group row">
																		<label class="col-form-label col-sm-3">Cause</label>
																		<div class="col-sm-9">
																			<select class="form-control" name="cause" required>
																				<option value="">Cause</option>
																				<option value="Dead on arrival(DOA)">Dead on arrival(DOA)</option>
																				<option value="Dead after arrival(DAA)">Dead after arrival(DAA)</option>
																				<option value="Emaciation">Emaciation</option>
																				<option value="Flooded">Flooded</option>
																				<option value="Immaturity">Immaturity</option>
																				<option value="Heat Stroke">Heat Stroke</option>
																				<option value="Runts">Runts</option>
																			</select>
																		</div>
																	</div>


																	

																</div>

																<div class="modal-footer">
																	<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
																	<button type="submit" name="btn_submit_condemned" class="btn bg-primary">Add Condemned</button>
																</div>
															</div>
															</form>
														</div>
													</div>
												</div>











										</div>


										<br><br><br>
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
