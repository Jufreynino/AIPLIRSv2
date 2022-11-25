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
						<span><?php echo $_SESSION['me_plant_name']?></span>
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
								<div class="media-title font-weight-semibold"><?php echo $_SESSION['me_plant_name']?></div>
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
							<a href="dashboard.php" class="nav-link ">
								<i class="icon-home4"></i>
								<span>
									Dashboard
								</span>
							</a>
						</li>

						<li class="nav-item nav-item-submenu nav-item-expanded nav-item-open" >
							<a href="#" class="nav-link"  style=""><i class="icon-file-check"></i> <span>DRR & Meat Inspection Status </span></a>
							<ul class="nav nav-group-sub" data-submenu-title="Pickers">
								<li class="nav-item"><a href="select_species.php" class="nav-link active">Add New Transaction</a></li>
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

                    <div class="col-md-1"></div>
                        <div class="col-md-10">

                            <div class="card">



								<div class="card-header header-elements-inline" style="background-color:#26a69a; color:white;">
									<h4 class="card-title" style="font-weight:bold;">Add New Transaction</h4>

								</div>
								<br>
								<br>
                         
									<h1>SELECT SPECIES</h1>
                                <div class="card-body py-0">
                                    <div class="row">

								
       <?php if($_SESSION['me_type'] == 'PDP') { ?>
										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Chicken" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://www.freeiconspng.com/thumbs/chicken-png/noble-young-chicken-png-3.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Chicken</p>
															<input type="hidden" id="fname" name="fname" value="Chicken">
														</div>
												</div>
											</div>
											</a>
										</div>


											<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Duck" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://toppng.com/uploads/preview/duck-115244013619fahj8jcpu.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Duck</p>
															<input type="hidden" id="fname" name="fname" value="Duck">
														</div>
												</div>
											</div>
											</a>
										</div>



											<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Pigeon" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://purepng.com/public/uploads/large/91507988902qsmhbb4ndcufzqp4r0dz0xx7oenowkkpugtzczmwbrb0uo2yr1xiq1b5u3y51mvtumqdnb9uwcrgz6g9doepudhv20yzbwxlowgf.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Pigeon</p>
															<input type="hidden" id="fname" name="fname" value="Pigeon">
														</div>
												</div>
											</div>
											</a>
										</div>



											



									<?php } else { ?>




										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Hog" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://starpng.com/public/uploads/preview/pig-png-free-clipart-7-11582315178nknkz5dkvd.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Hog</p>
															<input type="hidden" id="fname" name="fname" value="Hog">
														</div>
												</div>
											</div>
											</a>
										</div>

										
										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Cattle" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://img.favpng.com/14/17/12/simmental-cattle-limousin-cattle-qurbani-goat-ongole-cattle-png-favpng-sdyA1yGJSpLnZBVNXDwhbRJm6.jpg" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Cattle</p>
															<input type="hidden" id="fname" name="fname" value="Cattle">
														</div>
												</div>
											</div>
											</a>
										</div>


										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Carabao" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://i.dlpng.com/static/png/6938676_preview.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Carabao</p>
															<input type="hidden" id="fname" name="fname" value="Carabao">
														</div>
												</div>
											</div>
											</a>
										</div>

										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Goat" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://previews.123rf.com/images/mihtiander/mihtiander1603/mihtiander160300521/53524005-goat-isolated-on-a-white-background-transparent-png-file-available.jpg" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Goat</p>
															<input type="hidden" id="fname" name="fname" value="Goat">
														</div>
												</div>
											</div>
											</a>
										</div>

										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Sheep" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://www.citypng.com/public/uploads/preview/hd-sheep-animal-transparent-background-31625260992wrvijutxyv.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Sheep</p>
															<input type="hidden" id="fname" name="fname" value="Sheep">
														</div>
												</div>
											</div>
											</a>
										</div>



										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Horse" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://www.nicepng.com/png/detail/138-1386409_horse-big-img1-horse-png-images-hd.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Horse</p>
															<input type="hidden" id="fname" name="fname" value="Horse">
														</div>
												</div>
											</div>
											</a>
										</div>

										

										

										<div class="col-md-3" style="padding:20px;">
												<a href="add_drr.php?spcs=Ostrich" >
														<div style="border:2px solid black; ">
															<div>
																	<img src="https://www.pngmart.com/files/5/Ostrich-PNG-File.png" style="height:170px; width:100%; padding-top:10px;">
																	<div style="padding:5px; background-color:#000000; text-align:center;">
																		<p style="color:white; padding-top:10px; font-size:20px;">Ostrich</p>
																		<input type="hidden" id="fname" name="fname" value="Ostrich">
																	</div>
															</div>
														</div>
												</a>
										</div>

										



										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Rabbit" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://i.pinimg.com/originals/5c/7d/78/5c7d78f837a36c40b2dd0e28dff2cc43.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Rabbit</p>
															<input type="hidden" id="fname" name="fname" value="Rabbit">
														</div>
												</div>
											</div>
											</a>
										</div>






										<div class="col-md-3" style="padding:20px;">
											<a href="add_drr.php?spcs=Crocodile" >
											<div style="border:2px solid black; ">
												<div>
														<img src="https://e7.pngegg.com/pngimages/654/770/png-clipart-crocodile-alligator-graphy-xchng-wild-crocodile-animals-fauna.png" style="height:170px; width:100%; padding-top:10px;">
														<div style="padding:5px; background-color:#000000; text-align:center;">
															<p style="color:white; padding-top:10px; font-size:20px;">Crocodile</p>
															<input type="hidden" id="fname" name="fname" value="Crocodile">
														</div>
												</div>
											</div>
											</a>
										</div>




									



										

									<br>
									<br>
									<br>
									<br>
									<br>

									
                                                 <?php } ?>          



                                                                                                                                    
                                    </div>
                                </div>

                                <div class="chart position-relative" id="traffic-sources"></div>
                            </div>
                        </div>
                    <div class="col-md-1"></div>




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
   		 </script>

		<script type="text/javascript">
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



</body>
</html>
