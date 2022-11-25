<?php
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

	<script src="../../assets/js/app.js"></script>
	<script src="../../global_assets/js/demo_pages/login.js"></script>

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

			<div class="content d-flex justify-content-center align-items-center">

				<form class="login-form" method="POST" >
					<div class="card mb-0">
						<div class="card-body">
							<div class="text-center mb-3">
								<img class=" text-warning-400 border-warning-400 border-3 rounded-round p-3 mb-3 mt-1 img-circle" style="height:200px; width:200px'" src="../../global_assets/images/download.png"></i>


								<h5 class="mb-0">AIPLIRS</h5>
								<span class="d-block text-muted">Automated In-Plant Line Inspection Reporting System</span>
							</div>

							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="text" class="form-control" placeholder="Username" name="user">
								<div class="form-control-feedback">
									<i class="icon-user text-muted"></i>
								</div>
							</div>

							<div class="form-group form-group-feedback form-group-feedback-left">
								<input type="password" class="form-control" placeholder="Password" name="pass">
								<div class="form-control-feedback">
									<i class="icon-lock2 text-muted"></i>
								</div>
							</div>

							<div class="form-group d-flex align-items-center">
								<div class="form-check mb-0">
									<label class="form-check-label">
										
									</label>
								</div>

								<a href="login_password_recover.html" class="ml-auto">Forgot password?</a>
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block" name="btn_login">Sign in <i class="icon-circle-right2 ml-2"></i></button>
							</div>

                            <?php echo login() ?>
						
						</div>
					</div>
				</form>


			</div>
		</div>
	</div>
</body>
</html>
