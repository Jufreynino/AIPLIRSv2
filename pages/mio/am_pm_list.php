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
			
<!-- 
				<li class="nav-item dropdown">
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
                                Daily Report of Receiving
								</span>
							</a>
						</li>

						<li class="nav-item">
							<a href="report.php" class="nav-link">
								<i class="icon-paw"></i>
								<span>
                                Reports
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
				<div class="page-header-content header-elements-md-inline" style="margin-top: 20px;">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-4">
								<table>
									<tr>
										<th><b>Region:</b> </th>
										<td><?php echo $_SESSION['region'] ?></td>
									</tr>
								</table>
							</div>

							
						</div>
					</div>
				</div>


				<div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="dashboard.php" class="breadcrumb-item"><i class="icon-home2 mr-2"></i> Home</a>
							<span class="breadcrumb-item active">Daily Report of Receiving</span>
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
								<center><h6 class="" >I. Conduct of Antemortem Inspection</h6></center>
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

                                            
                                            <table style="width: 100%; margin-top:20px;" class="table_test ">
                                                <tr style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
                                                    <th>Time</th>
                                                    <th>Meat Dealer</th>
                                                    <th>Species</th>
                                                    <th>Origin</th>
                                                    <th> Attachments</th>
                                                    <th> Inspection Status</th>
                                                    <th>Action</th>
                                                
                                                </tr>
                                                    <?php echo show_md_drr_mio() ?>
                                                
                                            </table>


									<br>
									<br>
									<br>
									<br>
									<br>

                                                                                                                                    
                                    </div>
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



	<div id="modal_theme_success" class="modal fade" tabindex="-1" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Document track list</h5>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">
                  <table border="1" style="width: 100%; ">
                    <thead>
                      <tr>
                        <th style="padding: 10px; text-align:center;  background-color:#5c77fb !important; color:white;" colspan="4">Proccess</th>
                      </tr>
                    </thead>
                    <tbody id="listRecords">
                    </tbody>
                  </table>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn" style="background-color: #565252; color:#fff;" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
        </div>
		<script src="../../global_assets/js/main/jquery.min.js"></script>
	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="../../assets/js/app.js"></script>
	<script src="../../assets/js/ajax.js"></script>
	<script src="../../global_assets/js/demo_pages/dashboard.js"></script>
<script>
	$('.item-detail').on('click', function(){
    
    var siteid = $(this).attr('data');
    $('#modal_theme_success').modal('show');
       $.ajax({
           type: 'ajax',
           method: 'POST',
           url: '../ajax/view_am.php',
           data: {siteid: siteid},
           async: false,
           dataType: 'json',
           success: function(data){
			console.log(data);
			//    var html = '';
        //    var i;
        //      for(var i =0; i<data.length;i++){
        //          html += '<tr id="'+data[i].tracking+'">'+
        //              '<td style="padding: 10px; text-align:center;">'+data[i].from_doc+'</td>'+
        //              '<td style="padding: 10px; text-align:center;">'+data[i].to_doc+'</td>'+
        //              '<td style="padding: 10px; text-align:center;">'+data[i].date_rec+'</td>'+
                     
        //        '</tr>';
		
           }
                   
       });
       });
</script>

</body>
</html>
