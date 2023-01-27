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

	elseif($_SESSION['role'] == 1){
		// POSMS Role page redirection
		header('location: ../../pages/posms/dashboard.php');
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
	<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">

	


	<script src="../../global_assets/js/main/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>

	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>
	

	<script src="../../global_assets/js/plugins/loaders/blockui.min.js"></script>


    <script src="../../global_assets/js/plugins/tables/datatables/datatables.min.js"></script>  
	<script src="../../global_assets/js/plugins/tables/datatables/extensions/responsive.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/selects/select2.min.js"></script>
	<script src="../../global_assets/js/demo_pages/datatables_disesase.js"></script>


	

	
    <script src="../../global_assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/styling/switch.min.js"></script>

	<script src="../../global_assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script src="../../global_assets/js/demo_pages/form_checkboxes_radios.js"></script>

	<script src="../../global_assets/js/demo_pages/form_multiselect.js"></script>

	<script src="../../global_assets/js/demo_pages/form_checkboxes_radios.js"></script>

	<script src="../../global_assets/js/plugins/notifications/pnotify.min.js"></script>

	<script src="../../assets/js/app.js"></script>


	<script src="../../global_assets/js/demo_pages/extra_pnotify.js"></script>

		
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
									<div class="media-body">
										<div class="media-title">
											<a href="critical_level.php">
												<span style="font-size: 15px;">Critical Level Disease Reported</span>
											</a>
										</div>
										<span class="float-right text-muted" style="font-size:20px; margin-top: -10px; color:#f56161 !important;"><?php echo count_critical_level() ?></span>
									</div>
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
							<a href="posms_account.php" class="nav-link ">
								<i class="icon-user"></i>
								<span>
								POSMS Accounts
								</span>
								<span class="badge badge-pill bg-warning-400 ml-auto"><?php echo count_pending_accounts() ?></span>
							</a>
						</li>


						<li class="nav-item">
							<a href="mio_account.php" class="nav-link ">
								<i class="icon-user"></i>
								<span>
								Meat Inspection Officer Accounts
								</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="meat_establishment.php" class="nav-link ">
								<i class="icon-office"></i>
								<span>
								Meat Establishment Accounts
								</span>
							</a>
						</li>
							
								
						<li class="nav-item nav-item-submenu  nav-item-expanded nav-item-open">
							<a href="#" class="nav-link"><i class="icon-file-check2"></i> <span>Diseases or Conditions</span></a>
							<ul class="nav nav-group-sub" data-submenu-title="Menu levels">


								<li class="nav-item nav-item-submenu  nav-item-expanded nav-item-open">
									<a href="#" class="nav-link"><i class="icon-home7"></i> Slaughterhouse</a>
									<ul class="nav nav-group-sub">
										
										<li class="nav-item"><a href="antemortem_slh.php" class="nav-link active"><i class="icon-files-empty"></i>Antemortem</a></li>
										<li class="nav-item"><a href="postmortem_slh.php" class="nav-link"><i class="icon-files-empty"></i>Postmortem</a></li>
									</ul>
								</li>

								
								<li class="nav-item nav-item-submenu">
									<a href="#" class="nav-link"><i class="icon-home7"></i> Poultry Dressing Plant</a>
									<ul class="nav nav-group-sub">
										<li class="nav-item"><a href="antemortem_pdp.php" class="nav-link"><i class="icon-files-empty"></i>Antemortem</a></li>
										<li class="nav-item"><a href="postmortem_pdp.php" class="nav-link"><i class="icon-files-empty"></i>Postmortem</a></li>
										
									</ul>
								</li>
							</ul>
						</li>
<br>
						<br>

						<li class="nav-item-header text-center" style="background-color:#833737;"><div class="text-uppercase font-size-xs line-height-xs " style="font-size: 15px; color:white;">Meat Inspection Report</div> <i class="icon-menu" title="Data visualization"></i></li>
						
<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Receiving of  Animals</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
							<li class="nav-item">
									<a href="by_national_receiving_report.php" class="nav-link">National Data
									</a>
								</li>

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
									<a href="by_national_fit_report.php" class="nav-link">National Data
									</a>
								</li>

								
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
									<a href="by_national_fhc_report.php" class="nav-link">National Data
									</a>
								</li>
								
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

						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link"><i class="icon-file-text3"></i> <span>Meat Inspection Report Summary</span>
							</a>
							<ul class="nav nav-group-sub" data-submenu-title="Form components">
								<li class="nav-item">
									<a href="by_national_summary_report.php" class="nav-link">National Data
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
					<div class="col-xl-12">
						<div class="card">


							<div class="card-header header-elements-inline" style="background-color:#26a69a; color: #ffffff;">
								<h5 class="card-title" style=" font-weight:bold !important;">Diseases and Conditions during Antemortem Inspection in Slaughterhouse </h5>
								
							</div>


							<div class="card-body py-0">	
								<br>
								<div class="text-right">
									<button type="button" class="btn bg-primary-600 " data-toggle="modal" data-target="#modal_theme_primary">Add Disease or Condition </button>
									</div>
								<div class="row">	
								<?php echo add_antemortem_slaughter_disease() ?>




<div id="modal_theme_primary" class="modal fade" data-backdrop="static" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h6 class="modal-title">Add Disease or Condition</h6>
					
				</div>
				
				<div class="modal-body">
						<form method="POST" id="contact_form">
								<div class="form-group">
									<div class="row">
										<div class="col-sm-3">
											<label>Code</label>
											<input type="text" placeholder="code" name="disease_code" id="disease_code"  class="form-control  text-capitalize-css" >
											
											<input type="hidden" value="SLH" name="disease_type" id="disease_type" class="form-control" >
											
											<input type="hidden" value="Antemortem" name="disease_category" id="disease_category" class="form-control" >
												
										</div>

										<div class="col-sm-5">
											<label>Disease / Condition</label>
											<input type="text" placeholder="Disease" name="disease_description" id="disease_description" class=" error form-control text-capitalize-css" >

										</div>
										<div class="col-sm-4">
											<label>Judgement</label>
												<select class="form-control" name="disease_kind_of_meat" id="disease_kind_of_meat" >
													<option value="Suspect">Suspect</option>
													<option value="Rejected">Rejected</option>
													<option value="Condemned">Condemned</option>
												</select>
										</div>
										
										


									</div>
								</div>
								
								<div class="form-group error">
									<div class="row">


									<div class="col-sm-6">
											<label>Species</label>
													<select class="form-control multiselect-select-all-filtering" id="disease_kind_of_species" multiple="multiple" name="disease_kind_of_species[]" data-fouc>
														<option value="Hog">Hog</option>
														<option value="Cattle">Cattle</option>
														<option value="Carabao">Carabao</option>
														<option value="Horse">Horse</option>
														<option value="Goat">Goat</option>
														<option value="Sheep">Sheep</option>
														<option value="Crocodile">Crocodile</option>
														<option value="Rabbit">Rabbit</option>
														<option value="Ostrich">Ostrich</option>
													</select>
										</div>

											<div class="col-sm-6">

												<!-- <div class="form-group mb-3 mb-md-2">
													<label class="d-block font-weight-semibold">Disease Status</label>
													<div>
														<input type="radio" class="custom-control-input "  name="notifiable" value="0" id="notifiable" checked>
														<label class="custom-control-label position-static"  for="custom_radio_inline_right_checked">Notifiable</label>
													</div>

													<div>
														<input type="radio" class="custom-control-input" value="1" name="notifiable" id="notifiable">
														<label class="custom-control-label position-static" for="custom_radio_inline_right_unchecked">Not Notifiable</label>
													</div>
												</div> -->



												<div class="form-group">
													<label class="d-block font-weight-semibold">Disease Status</label>
													<div class="form-check form-check-inline">
														<label class="form-check-label">
															<input type="radio" name="notifiable" id="notifiable" value="0" class="form-check-input" name="radio-unstyled-inline-left" checked>
															Notifiable
														</label>
													</div>

													<div class="form-check form-check-inline">
														<label class="form-check-label">
															<input type="radio" name="notifiable" id="notifiable" value="1" class="form-check-input" name="radio-unstyled-inline-left">
															Not Notifiable
														</label>
													</div>
												</div>
											</div>


								</div>
							</div>
					</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
					<button type="button" name="btn_add_slaughter" id="save" class="btn bg-primary">Submit</button>
				</div>
			</div>
			</form><br><br><br><br><br><br>
		</div>
</div>

                                
                                            <div class="col-md-12">
											<div class="card-body py-0">
                                                <div class="wrapper">
                                                <div class="wrapper">
                                        	


														
																
<br>


													<table class="table table-bordered table-striped  datatable-disease" >
														<thead style="padding:10px !important; height:20px !important; margin:20px !important; border:1px solid #bdb8b8; background-color:#1d2328; color:white;">
															<tr >
																<th style=" font-weight:bold !important;" class="text-center">Code</th>
																<th style=" font-weight:bold !important;" class="text-center">Disease / Condition</th>
																<th style=" font-weight:bold !important;" class="text-center">Judgement</th>
																<th style=" font-weight:bold !important;" class="text-center">Species</th>
																<th style=" font-weight:bold !important;" class="text-center">Disease Status</th>
																<th style=" font-weight:bold !important;" class="text-center">Action</th>
															</tr>
														</thead>
														<tbody>
															<?php echo show_slh_disease_antemortem() ?>
														</tbody>
														
													</table>

																
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        </div>
                            <!-- /colored tabs -->
								



								

								
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


	<script>
		$(document).ready(function(){
				$('#purpose').on('change', function() {
				if ( this.value == '1')
				{
					$("#business").html();
				}
				else
				{
					$("#business").html();
				}
				});
			});
	</script>


 <script>

function cbDropdown(column) {
  return $('<ul>', {
	'class': 'cb-dropdown'
  }).appendTo($('<div>', {
	'class': 'cb-dropdown-wrap'
  }).appendTo(column));
}
 </script>




<!-- 

<script>
	$(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            disease_code: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please supply your first name'
                    }
                }
            },
             last_name: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please supply your last name'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your email address'
                    },
                    emailAddress: {
                        message: 'Please supply a valid email address'
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your phone number'
                    },
                    phone: {
                        country: 'US',
                        message: 'Please supply a vaild phone number with area code'
                    }
                }
            },
            address: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Please supply your street address'
                    }
                }
            },
            city: {
                validators: {
                     stringLength: {
                        min: 4,
                    },
                    notEmpty: {
                        message: 'Please supply your city'
                    }
                }
            },
            state: {
                validators: {
                    notEmpty: {
                        message: 'Please select your state'
                    }
                }
            },
            zip: {
                validators: {
                    notEmpty: {
                        message: 'Please supply your zip code'
                    },
                    zipCode: {
                        country: 'US',
                        message: 'Please supply a vaild zip code'
                    }
                }
            },
            comment: {
                validators: {
                      stringLength: {
                        min: 10,
                        max: 200,
                        message:'Please enter at least 10 characters and no more than 200'
                    },
                    notEmpty: {
                        message: 'Please supply a description of your project'
                    }
                    }
                }
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});


</script> -->



<script>

		$('#save').click(function(){
			var code = $('#code').val();
			var disease_code = $('#disease_code').val();
			var disease_type = $('#disease_type').val();
			var disease_description = $('#disease_description').val();
			var disease_kind_of_species = $('#disease_kind_of_species').val();
			var disease_kind_of_meat = $('#disease_kind_of_meat').val();
			var disease_category = $('#disease_category').val();
			var notifiable = $('#notifiable').val();


			
			var btn_add_am_disease_slh = '1';
			var btn_add_mio = '0';
			var btn_add_meat_establishment  = '0';
			var btn_add_am_disease_pdp = '0';
			var btn_add_posms  = '0';


			// if(disease_code == '')
			// {
			// 	$('#disease_code').css('border-color', '#ff0000');
			// 	$('#error_code').text('Required');

			// }
			// else
			// {
				$.ajax({
						url: "../../pages/ajax/ajax.php",
						method: "POST",
						dataType : 'json',
						data:{
							disease_code:disease_code,
							disease_description:disease_description,
							disease_kind_of_meat: disease_kind_of_meat,
							disease_category: disease_category,
							notifiable: notifiable,
							disease_kind_of_species:disease_kind_of_species,

							btn_add_am_disease_slh: btn_add_am_disease_slh,
							btn_add_am_disease_pdp: btn_add_am_disease_pdp,
							
							btn_add_posms: btn_add_posms,
							btn_add_mio: btn_add_mio,
							btn_add_meat_establishment:btn_add_meat_establishment, 

						},
						success:function(data)
						{
							console.log(data);
							// new PNotify({
							// 	title: data.title,
							// 	text: data.msg,
							// 	icon: data.icon,
							// 	type: data.alert
							// });
							
							
						},
						error:function(response)
						{
							console.log(response);
						}
						
					});
		});

</script>
<!-- <script>
	$(document).ready( function (){
						new PNotify({
							title: 'Success notice',
							text: 'Check me out! I\'m a notice.',
							icon: 'icon-checkmark3',
							type: 'success'
						});
	});
	</script> -->
</body>
</html>
