<?php
session_start();
include 'function/function.php';
if(isset($_SESSION['employee_id']))
{
}
else{

    header('location: index.php');
}


date_default_timezone_set('Asia/Manila');
$todays_date = date("y-m-d h:i:sa");
$today = strtotime($todays_date);



$test = $_GET['id'];


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
	<link href="global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css">
	<link href="global_assets/css/custom.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/colors.min.css" rel="stylesheet" type="text/css">
    <script src="global_assets/js/demo_pages/form_validation.js"></script>
	<script src="global_assets/js/main/jquery.min.js"></script>
	<script src="global_assets/js/main/bootstrap.bundle.min.js"></script>
    <script src="global_assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script src="global_assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script src="global_assets/js/plugins/forms/styling/switch.min.js"></script>
	<script src="assets/js/app.js"></script>
	<script src="global_assets/js/demo_pages/dashboard.js"></script>
    <script src="global_assets/js/demo_pages/form_checkboxes_radios.js"></script>
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
									<!-- <div class="mr-3">
										<img src="global_assets/images/demo/users/face25.jpg" width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<div class="media-title">
											<a href="#">
												<span class="font-weight-semibold">Richard Vango</span>
												<span class="text-muted float-right font-size-sm"></span>
											</a>
										</div>
										
										<span class="text-muted">Other travelling salesmen live a life of luxury...</span>
									</div> -->
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
						<img src="global_assets/images/download.png" class="rounded-circle mr-2" height="34" alt="">
						<span><?php echo $_SESSION['lastname'].', '.$_SESSION['firstname'] ?></span>
					</a>

					<div class="dropdown-menu dropdown-menu-right">
						<a href="profile.php" class="dropdown-item"><i class="icon-user-plus"></i> My profile</a>
						<div class="dropdown-divider"></div>
						<a href="logout.php" class="dropdown-item"><i class="icon-switch2"></i> Logout</a>
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
								<img class=" text-warning-400  img-circle" width="38" height="38"  src="global_assets/images/download.png"></i>
                                
                                
                                </a>
							</div>

							<div class="media-body">
								<div class="media-title font-weight-semibold"><?php echo $_SESSION['lastname'].', '.$_SESSION['firstname'] ?></div>
								<div class="font-size-xs opacity-50">
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
							<a href="species.php" class="nav-link ">
								<i class="icon-paw"></i>
								<span>
									Species
								</span>
							</a>
						</li>

                        <li class="nav-item">
							<a href="accounts.php" class="nav-link ">
								<i class="icon-users"></i>
								<span>
									Accounts
								</span>
							</a>
						</li>



						<li class="nav-item nav-item-submenu nav-item-expanded nav-item-open">
							<a href="#" class="nav-link"><i class="icon-copy"></i> <span>PDP</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Layouts">
								<li class="nav-item"><a href="drr.php" class="nav-link active">Daily Report of Receiving</a></li>
								<li class="nav-item"><a href="mmr.php" class="nav-link">Montly Meat Inspection Report</a></li>
								<li class="nav-item"><a href="dr.php" class="nav-link">Diseases Report</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="content-wrapper">
			<div class="page-header page-header-light">
				<div class="page-header-content header-elements-md-inline">
					<div class="page-title d-flex">
						<h4><i class="icon-arrow-left52 mr-2"></i> <span class="font-weight-semibold">Home</span> - Dashboard</h4>
						<a href="#" class="header-elements-toggle text-default d-md-none"><i class="icon-more"></i></a>
					</div>

					<div class="header-elements d-none">
						
					</div>
				</div>

				<div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="dashboard.php" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Home</a>
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
				<div class="row">
					<div class="col-xl-12">
                        <div class="card">
                            <div class="card-header header-elements-inline">
                                <h5 class="card-title"><?php echo show_me_details() ?></h5>
                                <div class="header-elements">
                                    <div class="list-icons">
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">

                                <div style="overflow-x:auto; ">
                                <div class="text-right">

                                
                                </div>

									<div class="text-right">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal_form_vertical">Add Daily Receiving Report</button>
									<br><br>
									</div>

									<div id="modal_form_vertical" class="modal fade" data-keyboard="false"  data-backdrop="static" tabindex="-1">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header bg-primary">
													<h5 class="modal-title">Add Daily Receiving Report</h5>
													<button type="button" class="close" data-dismiss="modal">&times;</button>
												</div>

												<form method="POST">
													<div class="modal-body">


													<div class="row">
														<div class="col-md-5">
                                                                 <form action="#" method="POST" class="form-validate-jquery">

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


                                                                        <div class="form-group">
                                                                            <label>Farm Source / Meat Dealer</label>
                                                                            <input type="text" class="form-control" name="meat_dealer"  placeholder="Farm Source / Meat Dealer">
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <label>Batch Number</label>
                                                                            <input type="text" class="form-control" name="batch_number"  placeholder="Batch Number">
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <label>Received By Name</label>
                                                                            <input type="text" class="form-control" name="received_by"  value="<?php echo $_SESSION['lastname'].', '.$_SESSION['firstname'] ?>">
                                                                        </div>


    
                                                                        <h4>Address</h4>


                                                                        <div class="form-group">
                                                                            <label>Province</label>
                                                                            <input type="text" class="form-control" name="received_by"  placeholder="Received By Name">
                                                                        </div>


                                                                        <div class="form-group">
                                                                            <label>City</label>
                                                                            <input type="text" class="form-control" name="received_by"  placeholder="Received By Name">
                                                                        </div>


                                                                        <div class="form-group">
                                                                            <label>Barangay</label>
                                                                            <input type="text" class="form-control" name="received_by"  placeholder="Received By Name">
                                                                        </div>


                                                            </div> 

                                                            <div class="col-md-1"></div>

                                                            <div class="col-md-6">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Broiler Heads</label>
                                                                                <input type="text" class="form-control" name="broiler_heads" id="b_heads"  placeholder="Broiler Heads">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Broiler Weight (Kg)</label>
                                                                                <input type="text" class="form-control" name="broiler_weight"  placeholder="Broiler Weight (Kg)">
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Culled Layer Heads</label>
                                                                                <input type="text" class="form-control" name="culled_layer_heads"  placeholder="Culled Layer Heads">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Culled Layer Weight (Kg)</label>
                                                                                <input type="text" class="form-control" name="culled_layer_weight"  placeholder="Culled Layer Weight (Kg)">
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6">
                                                                             <div class="form-group">
                                                                                <label>Native Heads</label>
                                                                                <input type="text" class="form-control" name="native_heads"  placeholder="Native Heads">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label>Native Weight (Kg)</label>
                                                                                <input type="text" class="form-control" name="native_weight"  placeholder="Native Weight (Kg)">
                                                                            </div>
                                                                        </div>


                                                                            <br><br><br><br><br>
                                                                        <div class="col-md-12">
                                                                        <h4>Documentary Requirements</h4>

                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-check">
                                                                                    <label class="form-check-label">
                                                                                        <input type="checkbox" class="form-check-input-styled" data-fouc>
                                                                                        Shipping Permit (SP)
                                                                                    </label>
                                                                                </div>

                                                                                <div class="form-check">
                                                                                    <label class="form-check-label">
                                                                                        <input type="checkbox" class="form-check-input-styled" data-fouc>
                                                                                        Veterinary Health Certificate (VHC)
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6"> 
                                                                                 <div class="form-check">
                                                                                    <label class="form-check-label">
                                                                                        <input type="checkbox" class="form-check-input-styled" data-fouc>
                                                                                        Certificate of Ownership
                                                                                    </label>
                                                                                </div>

                                                                                <div class="form-check">
                                                                                    <label class="form-check-label">
                                                                                        <input type="checkbox" class="form-check-input-styled" data-fouc>
                                                                                        Certificate of Transfer
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        </div>
                                                                </div>
                                                            </div>

														</div>

														
													</div>

													<div class="modal-footer">
														<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
														<button type="submit" name="btn_add_meat_establishment" class="btn bg-primary">Submit </button>
													</div>
												</form>
											</div>
										</div>
									</div>



                                    <table style="width: 100%;" class="table_test ">
                                        <tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
                                            <th>Date & Time</th>
                                            <th>Report Status</th>
                                            <th>Remarks</th>
                                            <th>Action</th>
                                        
                                        </tr>
                                        
										<tr style="padding:10px !important; margin:20px !important; border:1px solid #bdb8b8;">
                                            <td>2022/01/22</td>
                                            <td><span class="badge badge-danger">Rejected</span></td>
                                            <td>For Review</td>
                                            <td>
                                                <a href="drrr.php?id=tetst" class="btn btn-info btn-icon"><i class="icon-eye4"></i></a>
                                            </td>
                                        </tr>

										<tr style="padding:10px !important; margin:20px !important; border:1px solid #bdb8b8;">
                                            <td>2022/01/22</td>
                                            <td><span class="badge badge-danger">Rejected</span></td>
                                            <td>For Review</td>
                                            <td>
                                                <a href="drrr.php?id=tetst" class="btn btn-info btn-icon"><i class="icon-eye4"></i></a>
                                            </td>
                                        </tr>

										<tr style="padding:10px !important; margin:20px !important; border:1px solid #bdb8b8;">
                                            <td>2022/01/22</td>
                                            <td><span class="badge badge-danger">Rejected</span></td>
                                            <td>For Review</td>
                                            <td>
                                                <a href="drrr.php?id=tetst" class="btn btn-info btn-icon"><i class="icon-eye4"></i></a>
                                            </td>
                                        </tr>
                                      
                                    </table>
                                      
                                    </div>


                            </div>
                        </div>
                    </div>
                    <!-- <button type="submit" class="floating-right-bottom-btn"><i class="icon-file-plus" style="font-size:30px; color:white;"></i></button> -->

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
