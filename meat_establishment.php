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
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="global_assets/css/custom.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/colors.min.css" rel="stylesheet" type="text/css">
	<script src="global_assets/js/custom.js"></script>
	<script src="global_assets/js/main/jquery.min.js"></script>
	<script src="global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="assets/js/app.js"></script>
	<script src="global_assets/js/demo_pages/dashboard.js"></script>
	<style>
		@import url("https://fonts.googleapis.com/css?family=Inter:400'");
$font: "Inter", sans-serif;
$white: #fff;
$green: #007e90;
html {
  background-color: #1a1a1a;
  overflow: hidden;
}

.middle {
  width: 100%;
  text-align: center;
  h1 {
    font-family: $font;
    color: $white;
  }
  input[type="radio"] {
    display: none;
    &:checked {
      + .box {
        background-color: $green;
        span {
          color: white;
          transform: translateY(70px);
          &:before {
            transform: translateY(0px);
            opacity: 1;
          }
        }
      }
    }
  }
  .box {
    width: 200px;
    height: 200px;
    background-color: $white;
    transition: all 250ms ease;
    will-change: transition;
    display: inline-block;
    text-align: center;
    cursor: pointer;
    position: relative;
    font-family: $font;
    font-weight: 900;
    &:active {
      transform: translateY(10px);
    }
    span {
      position: absolute;
      transform: translate(0, 60px);
      left: 0;
      right: 0;
      transition: all 300ms ease;
      font-size: 1.5em;
      user-select: none;
      color: $green;
      &:before {
        font-size: 1.2em;
        font-family: FontAwesome;
        display: block;
        transform: translateY(-80px);
        opacity: 0;
        transition: all 300ms ease-in-out;
        font-weight: normal;
        color: white;
      }
    }
  }
  .front-end {
    span {
      &:before {
        content: "\f121";
      }
    }
  }
  .back-end {
    span {
      &:before {
        content: "\f0f4";
      }
    }
  }

  /* Made by */
  p {
    color: $white;
    font-family: $font;
    font-weight: 400;
    a {
      text-decoration: underline;
      font-weight: bold;
      color: #fff;
    }
    span {
      &:after {
        content: "\f0e7";
        font-family: FontAwesome;
        color: yellow;
      }
    }
  }
}

	</style>
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
							<a href="meat_establishment.php" class="nav-link active">
								<i class="icon-home7"></i>
								<span>
									Accredited Meat Establishment
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



						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-copy"></i> <span>PDP</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Layouts">
								<li class="nav-item"><a href="drr.php" class="nav-link">Daily Report of Receiving</a></li>
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
					<div class="page-title d-flex" style="padding-left:20px; padding-right:20px;">
                            <div class="col-md-6">
                                    <b>Region : </b> NCR <br>
                                    <b> POSMS Head:</b> DR. EVANGELISTA, KAREN ANGELI DE JESUS<br>
                            </div>

                            <div class="col-md-6">
                                   <b> Name of Establishment:</b> MOCK DRESSING PLANT<br>
                                   <b>  LTO Number:</b> PDP-000-AAA<br>
                                   <b> NMIS Plant Officer:</b> DR. SEBELLO, ARMIE MARIEL MENDOZA
                            </div>
					</div>

					<div class="header-elements d-none">
						
					</div>

				<div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="dashboard.php" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Home</a>
							<span class="breadcrumb-item active">Accredited Meat Establishment</span>
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
								<h6 class="card-title">Accredited Meat Establishment</h6>
								<!-- <div class="header-elements">
									<div class="form-check form-check-right form-check-switchery form-check-switchery-sm">
										<label class="form-check-label">
											Live update:
											<input type="checkbox" class="form-input-switchery" checked data-fouc>
										</label>
									</div>
								</div> -->
							</div>

							<div class="card-body py-0">
								<div class="row">








                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal_form_vertical">Add Meat Establishment </button>
                              


                                <div id="modal_form_vertical" class="modal fade" data-keyboard="false"  data-backdrop="static" tabindex="-1">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header bg-primary">
                                                <h5 class="modal-title">Add Meat Establishment</h5>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>

                                            <form method="POST">
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        <div class="row">
                                                        <?php echo add_meat_establishment() ?>
                                                            <div class="col-sm-4">
                                                                <label>Code</label>
                                                                <input type="text" name="code" placeholder="Code" class="form-control">
                                                            </div>

                                                            <div class="col-sm-8">
                                                                <label>Plant Name</label>
                                                                <input type="text" placeholder="Plant Name" name="plant_name" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="row">
                                                          

                                                            <div class="col-sm-4">
                                                                <label>Type</label>
                                                                <input type="text" placeholder="Type" name="type" class="form-control">
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <label>LTO Number</label>
                                                                <input type="text" placeholder="LTO Number" name="lto_number" class="form-control">
                                                            </div>

                                                            <div class="col-sm-4">
                                                                <label>Certificate Expiration Date</label>
                                                                <input type="text" placeholder="Certificate Expiration Date" name="expiration_date" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="row">
                                                           

                                                            <div class="col-sm-4">
                                                                <label>Region</label>
                                                                <input type="text" placeholder="Region" name="region" class="form-control">
                                                            </div>

                                                            <div class="col-sm-4">
                                                                <label>City</label>
                                                                <input type="text" placeholder="City" name="city" class="form-control">
                                                            </div>

                                                            <div class="col-sm-4">
                                                                <label>Barangay</label>
                                                                <input type="text" placeholder="Barangay" name="barangay" class="form-control">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="row">

                                                            <div class="col-sm-12">
                                                                <label>Address</label>
                                                                <input type="text" placeholder="Address" name="address"  class="form-control">
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


                              


                                <table style="width: 100%; margin-top:20px;" class="table_test ">
                                        <tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
                                            <th>Plant Name</th>
                                            <th>Certificate Expiration</th>
                                            <th>Status</th>
                                            <th>Remarks</th>
                                            <th>Date Registered</th>
                                            <th>Action</th>
                                        
                                        </tr>
                                        
                                            <?php echo show_me() ?>
                                      
                                    </table>
								</div>
                                <br><br><br>
							</div>

							<div class="chart position-relative" id="traffic-sources"></div>
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
