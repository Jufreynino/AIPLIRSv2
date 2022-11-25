<?php
session_start();
include '../../function/function.php';
activate_email_account();
?>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Automated In-Plant Line Inspection Reporting System</title>
    <link rel="icon" href="../../global_assets/images/favicon-32x32.png">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="../../global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="../../assets/css/colors.min.css" rel="stylesheet" type="text/css">
	<script src="../../global_assets/js/main/jquery.min.js"></script>
	<script src="../../global_assets/js/main/bootstrap.bundle.min.js"></script>
	<script src="../../global_assets/js/plugins/loaders/blockui.min.js"></script>
	<script src="../../global_assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="../../global_assets/js/jquery.ph-locations.js"></script>
	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/login.js"></script>
	<script src="../../global_assets/js/plugins/notifications/jgrowl.min.js"></script>
	<script src="../../global_assets/js/plugins/notifications/noty.min.js"></script>

	<script src="../../global_assets/js/demo_pages/extra_jgrowl_noty.js"></script>

</head>

<body class="bg-slate-800" style="background-image: url('../../global_assets/images/loginback.jpg'); 

  
  min-height: 500px;

  background-attachment: fixed;

  background-position: center;

  background-repeat: no-repeat;

  background-size: cover;
">

	<div class="page-content">
		<div class="content-wrapper">

			<!-- Content area -->
			<div class="content d-flex justify-content-center align-items-center">

				<!-- Registration form -->
				<form method="POST" class="flex-fill">
					<div class="row">
						<div class="col-lg-6 offset-lg-3">
							<div class="card mb-0">

								<div class="card-body">
									<div class="text-center mb-3">
										<i class="icon-plus3 icon-2x text-success border-success border-3 rounded-round p-3 mb-3 mt-1"></i>
										<h5 class="mb-0">Create account</h5>
										<span class="d-block text-muted">All fields are required</span>
									</div>

									<div class="form-group form-group-feedback form-group-feedback-right">
										<input type="text" class="form-control" id="me_plant_name" name="me_plant_name" placeholder="Meat Establishment Name" required>
										<div class="form-control-feedback">
											<i class="icon-home7 text-muted"></i>
										</div>
									</div>

									

									
                 



								

                  				


                                    
                                    <div class="text-right">
								    	<button type="button" name="btn_add_meat_establishment"  id="butsave" class="btn bg-teal-400 btn-labeled btn-labeled-right"><b><i class="icon-plus3"></i></b> Create account</button>
                                    </div>
                                </div>
							</div>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>
.
