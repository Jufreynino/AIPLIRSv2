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

	<style>
		.test {
		border-collapse: collapse;
		border-spacing: 0;
		width: 100%;
		border: 1px solid #ddd;
		}

		.th, .td {
		text-align: left;
		padding: 16px;
		}

		.tr:nth-child(even) {
		background-color: #f2f2f2;
		}

		
		.column {
		flex: 50%;
		padding: 5px;
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
				</li>
 -->
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
		<!-- <div class="sidebar sidebar-dark sidebar-main sidebar-expand-md">
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
								<div class="media-title font-weight-semibold"></div>
								<div class="font-size-xs opacity-50">
                                   
                                    if($_SESSION['role'] == 3)
                                    {
                                        ?> Meat Establishment
                                    }
                                    elseif($_SESSION['role'] == 2)
                                    {
                                        ?>Meat Inspector Officer
                                    }
                                    elseif($_SESSION['role'] == 1)
                                    {
                                        ?> POSMS
                                    }
                                    elseif($_SESSION['role'] == 0)
                                    {
                                        ?>POSMD
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
							<a href="drr.php" class="nav-link active">
								<i class="icon-paw"></i>
								<span>
                                Daily Report of Receiving
								</span>
							</a>
						</li>

						<li class="nav-item">
							<a href="disease.php" class="nav-link ">
								<i class="icon-paw"></i>
								<span>
                                Diseases
								</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div> -->
		<div class="content-wrapper">
			<div class="page-header page-header-light">
				
			<?php echo plant_information_mio() ?>
				
			<div class="col-md-6">
						<table class="padding_table" style="padding:-10px !important;">
                            <tr>
                                <th style="width:320px; "><b>Meat Inspection Officer:</b> </th>
                                <td>
							<?php echo mio_listed() ?>
			
							</td>
                            </tr>
						</table>
					</div>
            </div>
    </div>
			</div>

			<br>


			</div>
			
			

			<div class="content">
				<div class="row">

					<!-- <div class="col-xl-3 col-sm-6 col-12">
						<div class="card" style="background-color:#a12121; color:white">
						<div class="card-content">
							<div class="card-body">
							<div class="media d-flex">
								<div class="align-self-center">
								<i class="icon-pencil7 success font-large-2 float-left" style="color:#f0fa121217f4; font-size:40px;"></i>
								</div>
								<div class="media-body text-right">
										<p style="font-size:12px;">Heads | Weight</p> 
											<h3 style="margin-top:-10px;"><?php echo count_daily_receive_animals_heads() ?> | <?php echo count_daily_receive_animals_weight() ?></h3> 
												<span>Daily Receive Live Animals</span>
								</div>
							</div>
							</div>
						</div>
						</div>
					</div>


					<div class="col-xl-3 col-sm-6 col-12"> 
						<div class="card" style="background-color:#3d8b4a; color:white">
						<div class="card-content">
							<div class="card-body">
							<div class="media d-flex">
								<div class="align-self-center">
								<i class="icon-hammer font-large-2 float-left" style="color:#f0f7f4; font-size:40px;"></i>
								</div>
								<div class="media-body text-right">
									<p style="font-size:12px;">Heads | Weight</p> 
										<h3 style="margin-top:-10px;"><?php echo count_daily_receive_fit_for_slaughter_heads() ?> | <?php echo count_daily_receive_fit_for_slaughter_weight() ?></h3> 
									<span>Food Animals Fit for Slaughter</span>
								</div>
							</div>
							</div>
						</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card" style="background-color:#3254b3; color:white">
						<div class="card-content">
							<div class="card-body">
							<div class="media d-flex">
								<div class="align-self-center">
									<img src="../../global_assets/images/logo.png" style="height:80px; width: 80px;" class="img-responsive font-large-2 float-left">
								</div>
								<div class="media-body text-right">
									<p style="font-size:12px;">Heads | Weight</p> 
										<h3 style="margin-top:-10px;"><?php echo count_daily_receive_fit_for_hc_heads() ?> | <?php echo count_daily_receive_fit_for_hc_weight() ?></h3> 
								<span>Fit for Human Consumption</span>
								</div>
							</div>
							</div>
						</div>
						</div>
					</div>
				 -->
				
				</div>


			
					<?php echo dmir_mio() ?>
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
