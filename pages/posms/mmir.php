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

	<script type="text/javascript">
		$(document).ready(function(){
			$('.view_data').click(function(){
				var species = $(this).attr("id");
				$.ajax({
					url: "../../ajax/mmir.php",
					method:"POST",
					data:{species:species},
					success:function(data)
					{
						$('#employee_detail').html(data);
						$('#dataModal').modal('show');
					}
				});
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
		    $("form#myform").submit(function(event) {
		        event.preventDefault();
		        var species = $("#species").val();
		        var from = $("#from").val();
		        var to = $("#to").val();
		        var md = $("#md").val();

		        $.ajax({
		            type: "POST",
		            url: "../../ajax/mmir.php",
		            data: {species:species, from : from, to : to, md:md},
		            success: function(data){
		            	$('#employee_detail').html(data);
						$('#dataModal').modal('show');
		        }
		    });
		});
		});
	</script>


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
						

							<div class="media-body">
								<div class="media-title font-weight-semibold"></div>
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


						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-users4"></i> <span>Meat Inspection Report </span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								<li class="nav-item">
									<a href="by_me_mmir.php" class="nav-link">By Meat Establishment 
									</a>
								</li>
								<li class="nav-item">
									<a href="by_city_mmir.php" class="nav-link">By City 
									</a>
								</li>
								<li class="nav-item">
									<a href="by_province_mmir.php" class="nav-link">By Province
										<!-- <span class="badge bg-danger align-self-center ml-auto">2</span> -->
									</a>
								</li>

								<li class="nav-item">
									<a href="by_region_mmir.php" class="nav-link">By Region
										<!-- <span class="badge bg-danger align-self-center ml-auto">2</span> -->
									</a>
								</li>
							</ul>
						</li>

					
					</ul>
				</div>
			</div>
		</div> 
		<div class="content-wrapper">
		
			

			<div class="content">
				<div class="row">


					<div class="col-xl-12 col-sm-6 col-12">
                        <div class="card" style="background-color:#ffffff;">
                        	<div class="card-content">
                            	<div class="card-body py-0">
                            		<div class="card-header header-elements-inline">
                                				<h2>Monthly Meat Inspection Report</h2>
                                	</div>	

                                				<div class="col-md-12" style=" color:white;">
                                					<div class="row">
                                				 		
                                				 			<?php echo view_mmir() ?>
                                				  	</div>
                            				  	</div>
                        		</div>
                    		</div>
                		</div>
            		</div>



					
					
				
				
				</div>








			
					<!--echo mmir_mio() ?> -->
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


	<div id="dataModal" class="modal fade">
		<div class="modal-dialog modal-full">
			<div class="modal-content">
				<div class="modal-header bg-success">
					<h5 class="modal-title">Monthly Meat Inspection Report</h5>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<div class="modal-body" id="employee_detail">
					
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					
				</div>

			</div>
			
		</div>
		
	</div>

	
</body>
</html>
