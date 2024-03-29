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
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
	<link href="../../assets/css/colors.min.css" rel="stylesheet" type="text/css">

	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfobject/2.2.12/pdfobject.min.js"></script>
	<script src="../../global_assets/js/main/jquery.min.js"></script>
	
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/dashboard.js"></script>
	<script type="text/javascript" src="../../global_assets/js/jquery.ph-locations.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	
	<script src="../../global_assets/js/plugins/tables/datatables/datatables.min.js"></script>
	<script src="../../global_assets/js/plugins/tables/datatables/extensions/responsive.min.js"></script>
	<script src="../../global_assets/js/plugins/notifications/jgrowl.min.js"></script>
	<script src="../../global_assets/js/plugins/notifications/noty.min.js"></script>

	<script src="../../global_assets/js/demo_pages/extra_jgrowl_noty.js"></script>
	<script src="../../global_assets/js/demo_pages/datatables_responsive.js"></script>

	<style>
		.tables {
			display:table;
			width:100% !important;
			height:100%;
		}
		.cell {
			display:table-cell;
			width:50%;
			padding:10px;
		}
		.row {
			display:table-row;
		}
		.cell {
			background:red;
			color:white;
		}
		.merged{
			display:table-cell;
			width:100%;

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
			

		<!-- 		<li class="nav-item dropdown">
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

					<div class="col-md-12">

						<div class="card">

							<div class="card-header header-elements-inline" style="background-color:#26a69a; color:white;">
								<h4 class="card-title" style="font-weight:bold;">
							DRR & Meat Inspection Status 
							</h4>

							</div>
							

						<br>
						<br>
							<div class="card-body">
								<div class="row">
									<div class="wrapper">
										
										<table style="margin-top:20px; widht:auto !important;" class="table table-striped table-bordered datatable-responsive">
											<thead>
												<tr style="padding:10px !important; height:20px !important; margin:20px !important; background-color:#1d2328; color:white;">
													<th style="font-weight:bold" class="text-center" style="width: 100px;">Date & Time</th>
													<th style="font-weight:bold" class="text-center">Meat Establishment</th>
													<th style="font-weight:bold" class="text-center">Name of Meat Dealer</th>
													<th style="font-weight:bold" class="text-center">Species</th>
													<th style="font-weight:bold" class="text-center">Head Count</th>
													<th style="font-weight:bold" class="text-center" style="width: 100px;"> Details of DRR</th>
													<th style="font-weight:bold" class="text-center" style="width: 100px;">DRR Status</th>
													<th style="font-weight:bold"  class="text-center"style="width: 100px;">Meat Inspection Report Status</th>
												</tr>
											</thead>
											<?php echo show_mio_drr() ?>
										
											</table>
 						
									</div></div>
                        </div>
                        </div>
                    </div>




					</div>
			</div>
				</div>
				
			
		</div>





		<div id="dataModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Daily Receiving Details</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" id="employee_details">

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>


		<script>
			$(document).ready(function(){
			
				$('.view_data').click(function(){
					var drr_id = $(this).attr("id");
					var employee_id = <?php echo $_SESSION['employee_id'] ?>;

					
					var view_daily_mio = '1';
					var btn_add_am_disease_slh = '0';
					var btn_add_am_disease_pdp = '0';

					var btn_add_pm_disease_pdp = '0';
					var btn_add_pm_disease_slh = '0';
					var btn_add_mio = '0';
					var btn_add_meat_establishment  = '0';
					var btn_add_posms  = '0';
					$.ajax({
						url: "../../pages/ajax/ajax.php",
						method: "POST",
						data : {employee_id:employee_id,view_daily_mio:view_daily_mio,

							 drr_id :drr_id,
							 btn_add_am_disease_slh :btn_add_am_disease_slh,
							btn_add_am_disease_pdp:btn_add_am_disease_pdp,

							btn_add_pm_disease_pdp:btn_add_pm_disease_pdp,
							btn_add_pm_disease_slh:btn_add_pm_disease_slh,
							btn_add_mio:btn_add_mio,
							btn_add_meat_establishment:btn_add_meat_establishment,
							btn_add_posms:btn_add_posms,
						
						
						
						
						},
						success: function(data){
							$('#employee_details').html(data);
						}
					})

					$('#dataModal').modal("show");

				});


			});

		</script>
	
		  <script type="text/javascript">
				$(document).ready(function() {
					calculateSum();

					$(".txt").on("keydown keyup", function() {
						calculateSum();
					});
				});
				function calculateSum() {
					var sum = 0;
					//iterate through each textboxes and add the values
					$(".txt").each(function() {
						//add only if the value is number
						if (!isNaN(this.value) && this.value.length != 0) {
							sum += parseFloat(this.value);
							$(this).css("background-color", "#FEFFB0");
						}
						else if (this.value.length != 0){
							$(this).css("background-color", "red");
						}
					});
				
					$("input#sum1").val(sum);
				}

				$(document).ready(function() {
					calculateSum1();

					$(".txt1").on("keydown keyup", function() {
						calculateSum1();
					});
				});
				function calculateSum1() {
					var sum = 0;
					//iterate through each textboxes and add the values
					$(".txt1").each(function() {
						//add only if the value is number
						if (!isNaN(this.value) && this.value.length != 0) {
							sum += parseFloat(this.value);
							$(this).css("background-color", "#FEFFB0");
						}
						else if (this.value.length != 0){
							$(this).css("background-color", "red");
						}
					});
				
					$("input#sum2").val(sum.toFixed(2));
				}
   		 
			


					$(".calculate").on("keyup keydown change", function(e) {
						var sum1 = parseFloat($("#sum1").val()) || 0;
						var sum2 = parseFloat($("#sum2").val()) || 0;

						var value = sum2 / sum1;

						if (!isNaN(value) && value !== Infinity) {
							$("#quotient").val(value);
						}
					});
			</script>
			
	<script type="text/javascript">
		$(document).ready(function()
{
  $("tbody  > td:odd").css({
    "background-color":"#d7d7d7",
    "color":"#100f0f"});
});
	</script>
	<script>
		$('.datatable-responsive').dataTable( {
			"order": [],
		} );
	</script>

</body>
</html>
