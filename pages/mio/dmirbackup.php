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
		<div class="content-wrapper">
			<div class="page-header page-header-light">
				<div class="page-header-content header-elements-md-inline">
					<div class="page-title d-flex">
						<h4> <span class="font-weight-semibold"></span> <?php echo plant_name_mio() ?></h4>
						<a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
					</div>


					<div class="header-elements d-none">
						
					</div>
				</div>

				<div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="dashboard.php" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Home</a>
							<span class="breadcrumb-item active">Daily Receiving of Animals </span>
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
				<div class="row">

                        <div class="col-md-12">

                            <div class="card">
                                <div class="card-header header-elements-inline">
								<center><h6 class="" >Daily Receiving of Animals </h6></center>
                                    <!-- <div class="header-elements">
                                        <div class="form-check form-check-right form-check-switchery form-check-switchery-sm">
                                            <label class="form-check-label">
                                                Live update:
                                                <input type="checkbox" class="form-input-switchery" checked data-fouc>
                                            </label>
                                        </div>
                                    </div> -->
                                </div>

										<div class="col-md-4" >
											<div class="row">
												<div class="col-md-4"  style="border:1px solid black;">
												dasdsadas
												</div>
												<div class="col-md-4"  style="border:1px solid black;">
												dasdsadas
												</div>
												<div class="col-md-4"  style="border:1px solid black;">
												dasdsadas
												</div>
											</div>
										</div>


										<div class="col-md-4">

										</div>


										<div class="col-md-4">

										</div>


								<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
								<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



								<h1 class="text-center">I. ANTEMORTEM INSPECTION</h1>
                    <div class="row">

								<br><br><br>
                        <div class="col-md-6">
							<div class="card-body py-0">
								<div class="row">
									<table style="width: 100%; margin-top:20px;" class="table_test ">

										<tr style="padding:10px !important; font-size:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
											<th colspan="4" class="text-center" style="font-size:10px !important;">A. RECEIVING OF FOOD ANIMALS FOR SLAUGHTER</th>
										</tr>
									
										<tr style="padding:10px !important; font-size:10px !important; height:20px !important; margin:20px !important;border:1px solid black; ">
											<th style="font-size:10px !important;">Time</th>
											<th style="font-size:10px !important;">Name of Meat Dealer</th>
											<th style="font-size:10px !important;">Species of Food Animals</th>
											<th style="font-size:10px !important;">Total number of heads</th>
										</tr>
											<?php echo dmir_receiving_of_live_animals() ?>
									</table>
								</div>
							</div>
                        </div>


						<div class="col-md-6">
							<div class="card-body py-0">
								<div class="row">
									<table style="width: 100%; margin-top:20px;" class="table_test ">
										<tr style="padding:10px !important; font-size:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
											<th colspan="4" class="text-center" style="font-size:10px !important;">C. SUMMARY OF FOOD ANIMALS PASSED FOR SLAUGHTER</th>
										</tr>
									
										<tr style="padding:10px !important; font-size:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
											<th style="font-size:10px !important;">Name of Meat Dealer</th>
											<th style="font-size:10px !important;">Species of Food Animals</th>
											<th style="font-size:10px !important;">Number of heads</th>
											<th style="font-size:10px !important;">Weight</th>
										</tr>
											<?php echo dmir_summary_of_live_animals() ?>
									</table>
							
								</div>
							</div>
                        </div>





                        <div class="col-md-12">
							<div class="card-body py-0">
								<div class="row">
									<table style="width: 100%; margin-top:20px;" class="table_test ">
										<tr style="padding:10px !important; font-size:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
											<th style="font-size:10px !important;" rowspan="2">Name of Meat Dealer</th>
											<th style="font-size:10px !important;" rowspan="2">Species of Food Animals</th>
											<th style="font-size:10px !important;" colspan="3">Suspect/ On Hold</th>
											<th style="font-size:10px !important;" colspan="3">Reject for Slaughter</th>
											<th style="font-size:10px !important;" colspan="3">Condemned</th>
										</tr>
                                        <tr style="padding:10px !important; font-size:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
											<th style="font-size:10px !important;">No. of Heads</th>
											<th style="font-size:10px !important;">Weight</th>
											<th style="font-size:10px !important;">Cause</th>

                                            <th style="font-size:10px !important;">No. of Heads</th>
											<th style="font-size:10px !important;">Weight</th>
											<th style="font-size:10px !important;">Cause</th>

                                            <th style="font-size:10px !important;">No. of Heads</th>
											<th style="font-size:10px !important;">Weight</th>
											<th style="font-size:10px !important;">Cause</th>
										</tr>
											<?php echo dmir_antemortem() ?>
                                            
										
									</table>
							
								</div>
							</div>
                        </div>
                    </div>




							<br>
								<br>
						</div>
                        </div>




					</div>
			</div>
			
		</div>
	</div>



</body>
</html>
