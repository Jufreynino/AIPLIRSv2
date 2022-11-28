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
	
	elseif($_SESSION['role'] == 1){
		// POSMS Role page redirection
		header('location: ../../pages/posms/dashboard.php');
	}

	elseif($_SESSION['role'] == 0){
		// POSMD Role page redirection
		header('location: ../../pages/posmd/dashboard.php');
	}

}
else{

	



    header('location: ../../pages/auth/index.php');
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
	<title>Automated In-Plant Line Inspection Reporting System</title>
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

		<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
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
						<span></span>
					</a>

					<div class="dropdown-menu dropdown-menu-right">
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
								<a href="mio_profile.php" class="text-white"><i class="icon-cog3"></i></a>

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
							<a href="assigned_me.php" class="nav-link active">
								<i class="icon-paw"></i>
								<span>
                                DRR & Meat Inspection Status 
								</span>
							</a>
						</li>

						<li class="nav-item">
							<a href="drr.php" class="nav-link">
								<i class="icon-paw"></i>
								<span>
								Daily Meat Inspection Report
								</span>
							</a>
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

						
                     

					</ul>
				</div>
			</div>
		</div>
		<div class="content-wrapper">
			<div class="page-header page-header-light">
				


				
			</div>
			<div class="content">
				<div class="row">

                        
						<div class="col-md-2" >


													
													 </div>
				


						<div class="col-md-8" >

								

								
								<div class="card">
										<div class="card-header header-elements-inline" style="background-color:#26a69a; color:white;">
											<h4 class="card-title "><b>I. Conduct of Antemortem Inspection (for Suspect / On hold) </b></h4>
											<div class="header-elements">
												<div class="list-icons">
													<a class="list-icons-item" data-action="collapse"></a>
												</div>
											</div>
										</div>

										<div class="card-body p-0">

									
										
										<div class="col-md-12">
											<br>
											<div class="card border-left-danger rounded-left-0">
												<div class="card-header">
													<h4 class="card-title">Suspect / On hold</h4>
												</div>
												
												<div class="card-body">
													
													<table class="table table-bordered">
														<tr style="">
															<th style="font-weight:bold;">Cause</th>
															<th style="font-weight:bold;">Species</th>
															<th style="font-weight:bold;">Total Head Count</th>
															<th style="font-weight:bold;">Total Live Weight (kg)</th>
														</tr>
														<tr>
															<?php echo show_antemortem_suspected_details() ?>
															<td><?php echo modify_antemortem_suspect_sum_total_heads_view() ?></td>
															<td><?php echo modify_antemortem_suspect_sum_total_weight_view() ?></td>
														</tr>
														
													</table>
												</div>
											</div>

											
										<br>


											<br>
											

											<div class="card border-left-danger rounded-left-0">

											<div class="col-md-12">
											<br>
											<h4>Passed for Slaughter</h4>
												<table style="width: 100%; margin-top:20px;" class="table table-bordered" >
													<tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; ">
														<th style="font-size:12px !important; font-weight:bold;">No. of Heads Affected</th >
														<th style="font-size:12px !important; font-weight:bold;">Total Live Weight (kg)</th>
													</tr>
													<tr>
														<td><?php echo modify_antemortem_suspect_sum_total_heads() ?></td>
														<td><?php echo modify_antemortem_suspect_sum_total_weight() ?></td>
													</tr>
													
												</table>

										<form method="POST" >

										<br>
										<br>
											<div class="text-center">
												<?php echo suspected_button() ?>
												<a href="antemortem.php?med=<?php echo $_GET['med'] ?>&&mid=<?php echo $_GET['mid'] ?>&mdate=<?php echo $_GET['mdate'] ?>&&species=<?php echo $_GET['species'] ?>&&category=<?php echo $_GET['category'] ?>&&region=<?php echo $_GET['region'] ?>&&province=<?php echo $_GET['province'] ?>&&city=<?php echo $_GET['city'] ?>&&barangay=<?php echo $_GET['barangay'] ?>" class="btn btn-warning">Back to Antemortem Inspection</a>
											</div>
										</form> 



												

												<br><br>
											<h4>Rejected for Slaughter</h4>
												<table style="width: 100%; margin-top:20px;" class="table table-bordered" >
													<tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; ">
														<th style="font-size:12px !important; font-weight:bold;">No. of Heads Affected</th >
														<th style="font-size:12px !important; font-weight:bold;">Total Live Weight (kg)</th>
														<th style="font-size:12px !important; font-weight:bold;">Cause</th>
														<th style="font-size:12px !important; font-weight:bold;">Action</th>
													</tr>
													
													<?php echo modify_antemortem_reject_suspect_am() ?>
												</table>


											<br>

											<div>

												<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add_rejected">Add Rejected for Slaughter</button>

												<div id="add_rejected" class="modal fade"  data-backdrop="static" >
													<div class="modal-dialog modal-sm">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title">Add Rejected for Slaughter</h5>
																<button type="button" class="close" data-dismiss="modal">&times;</button>
															</div>
															<?php echo add_antemortem_rejected_suspect_me() ?>
															<div class="modal-body">
															<form method="POST">

																<div class="form-group row">
																	<label class="col-form-label col-sm-5">No. of Heads Affected</label>
																	<div class="col-sm-7">
																		<input type="text" placeholder="0" name="heads" id="rejected_number_of_heads" class="form-control rejected_number" required>
																		<div id="errorr_noheads" style="display:none;"></div>																		
																		<input type="hidden" value="<?php echo $_GET['mid'] ?>" name="id">
																		<input type="hidden" value="<?php echo $_GET['mdate'] ?>" name="date">


																	</div>
																</div>

																<div class="form-group row">
																	<label class="col-form-label col-sm-5">Total Live Weight (kg)</label>
																	<div class="col-sm-7">
																		<input type="text" placeholder="0" name="weight" id="rejected_number_of_weight" class="form-control rejected_number" required>
																		<div id="errorr_noweight" style="display:none;"></div>																		
																	</div>
																</div>


																<div class="form-group row">
																	<label class="col-form-label col-sm-4">Cause</label>
																	<div class="col-sm-8">
																	<?php echo fetch_antemortem_disease_reject() ?>
																	</div>
																</div>


																

															</div>

															<div class="modal-footer">
																<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
																<button type="submit" name="btn_submit_rejected" class="btn bg-primary r_antemortem_button">Add Rejected for Slaughter</button>
															</div>
														</div>
														</form>
													</div>
												</div>

												</div>















												<br><br><br>
											<h4>Condemned</h4>
												<table style="width: 100%; margin-top:20px;" class="table table-bordered" >
													<tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; ">
														<th style="font-size:12px !important; font-weight:bold;">No. of Heads Affected</th >
														<th style="font-size:12px !important; font-weight:bold;">Total Live Weight (kg)</th>
														<th style="font-size:12px !important; font-weight:bold;">Cause</th>
														<th style="font-size:12px !important; font-weight:bold;">Action</th>
													</tr>

													<?php echo modify_antemortem_condemned_me() ?>

													
												</table>







												
											<br>

												<div>

													<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#add_condemned">Add Condemned</button>

													<div id="add_condemned" class="modal fade"  data-backdrop="static" >
														<div class="modal-dialog modal-sm">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title">Add Condemned</h5>
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																</div>
																<?php echo add_antemortem_condemned_me() ?>
																<div class="modal-body">
																<form method="POST">

																	<div class="form-group row">
																		<label class="col-form-label col-sm-5">No. of Heads Affected</label>
																		<div class="col-sm-7">
																			<input type="number" placeholder="0" name="heads" id="condemned_number_of_heads" class="form-control condemned_number" required>
																		<div id="errorc_noheads"></div>																		

																			<input type="hidden" value="<?php echo $_GET['mid'] ?>" name="id">
																			<input type="hidden" value="<?php echo $_GET['mdate'] ?>" name="date">

																	



																		</div>
																	</div>

																	<div class="form-group row">
																		<label class="col-form-label col-sm-5">Total Live Weight (kg)</label>
																		<div class="col-sm-7">
																			<input type="text" placeholder="0" name="weight" id="condemned_number_of_weight" class="form-control condemned_number" required>
																		<div id="errorc_noweight"></div>																		

																		</div>
																	</div>

																	<div class="form-group row">
																		<label class="col-form-label col-sm-4">Cause</label>
																		<div class="col-sm-8">
																			<?php echo fetch_antemortem_disease_condemned() ?>
																		</div>
																	</div>

																</div>

																<div class="modal-footer">
																	<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
																	<button type="submit" name="btn_submit_condemned" class="btn bg-primary c_antemortem_button">Add Condemned</button>
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
	</div>
		<script type="text/javascript">
		$(document).ready(function() {
		    $('.js-example-basic-single').select2();
		});


		$(document).ready(function() {
		    $('.js-example-basic-single').select2();
		});
			$('.rejected_number').keyup(function(){
				var total_heads = $("#total_number_of_heads_received").val();
				var total_weight = $("#total_number_of_weight_received").val();
				var total_number_of_heads_received = parseFloat($('#total_number_of_heads_received').val());
			    var rejected_number_of_heads = parseFloat($('#rejected_number_of_heads').val());

			    var total_number_of_weight_received = parseFloat($('#total_number_of_weight_received').val());
			    var rejected_number_of_weight = parseFloat($('#rejected_number_of_weight').val());

			    if(rejected_number_of_heads > total_number_of_heads_received){


			    	$('.r_antemortem_button').prop('disabled', true);

					$('#errorr_noheads').html('<span style="color:red;" >Maximum input reached <p>Total Head Count:<b>   '+total_heads+'</b></p></span> ');

    				$('#errorr_noheads').show();

			    }
			    else if(rejected_number_of_weight > total_number_of_weight_received){
    		    	$('.r_antemortem_button').prop('disabled', true);
					$('#errorr_noweight').html('<span style="color:red;" >Maximum input reached <p>Total Weight:<b>   '+parseFloat(total_weight).toFixed(2)+'</b></p></span> ');

    				$('#errorr_noweight').show();
			    }
			    else if(isNaN($('#rejected_number_of_heads').val()) === true || isNaN($('#rejected_number_of_weight').val()) === true){
    		    	$('.r_antemortem_button').prop('disabled', true);
			    }
			    else
			    {
			    	$('.r_antemortem_button').prop('disabled', false);
			    	$('#errorr_noheads').hide();
    				$('#errorr_noweight').hide();
			    }
			});




			$('.condemned_number').keyup(function(){
				var total_heads = $("#total_number_of_heads_received").val();
				var total_weight = $("#total_number_of_weight_received").val();


				var total_number_of_heads_received = parseFloat($('#total_number_of_heads_received').val());
			    var condemned_number_of_heads = parseFloat($('#condemned_number_of_heads').val());

			    var total_number_of_weight_received = parseFloat($('#total_number_of_weight_received').val());
			    var condemned_number_of_weight = parseFloat($('#condemned_number_of_weight').val());

			    if(condemned_number_of_heads > total_number_of_heads_received){
			    	$('.c_antemortem_button').prop('disabled', true);
					$('#errorc_noheads').html('<span style="color:red;" >Maximum input reached <p>Total Head Count:<b>   '+total_heads+'</b></p></span> ');

			    	$('#errorc_noheads').show();
			    }
			    else if(condemned_number_of_weight > total_number_of_weight_received){
    		    	$('.c_antemortem_button').prop('disabled', true);
					$('#errorc_noweight').html('<span style="color:red;" >Maximum input reached <p>Total Weight:<b>   '+parseFloat(total_weight).toFixed(2)+'</b></p></span> ');
    				$('#errorc_noweight').show();
			    }
			     else if(isNaN($('#condemned_number_of_heads').val()) === true || isNaN($('#condemned_number_of_weight').val()) === true){
    		    	$('.c_antemortem_button').prop('disabled', true);
			    }

			    
			    else
			    {
			    	$('.c_antemortem_button').prop('disabled', false);
			    	$('#errorc_noheads').hide();
    				$('#errorc_noweight').hide();
			    }
			});


				$('.suspect_number').keyup(function(){
				var total_heads = $("#total_number_of_heads_received").val();
				var total_weight = $("#total_number_of_weight_received").val();
				var total_number_of_heads_received = parseFloat($('#total_number_of_heads_received').val());
			    var suspected_number_of_heads = parseFloat($('#suspected_number_of_heads').val());

			    var total_number_of_weight_received = parseFloat($('#total_number_of_weight_received').val());
			    var suspected_number_of_weight = parseFloat($('#suspected_number_of_weight').val());

			    if(suspected_number_of_heads > total_number_of_heads_received){
			    	$('.s_antemortem_button').prop('disabled', true);
					$('#errors_noheads').html('<span style="color:red;" >Maximum input reached <p>Total Head Count:<b>   '+total_heads+'</b></p></span> ');
			    	$('#errors_noheads').show();
			    }
			    else if(suspected_number_of_weight > total_number_of_weight_received){
    		    	$('.s_antemortem_button').prop('disabled', true);
					$('#errors_noweight').html('<span style="color:red;" >Maximum input reached <p>Total Weight:<b>   '+parseFloat(total_weight).toFixed(2)+'</b></p></span> ');
    				$('#errors_noweight').show();
			    }
			     else if(isNaN($('#suspected_number_of_heads').val()) === true || isNaN($('#suspected_number_of_weight').val()) === true){
    		    	$('.s_antemortem_button').prop('disabled', true);
			    }

			    else
			    {
			    	$('.s_antemortem_button').prop('disabled', false);
			    	$('#errors_noheads').hide();
    				$('#errors_noweight').hide();
			    }
			});








	</script>

</body>
</html>
