<?php

use PHPMailer\PHPMailer\PHPMailer;

require_once '../../assets/phpmailer/src/Exception.php';
require_once '../../assets/phpmailer/src/PHPMailer.php';
require_once '../../assets/phpmailer/src/SMTP.php';


include '../../config/config.php';

 global $con;
    date_default_timezone_set('Asia/Manila');
    $todays_date = date("m/d/Y h:i:sa");
    $today = strtotime($todays_date);
   
        $code = rand(1111,9999).'-NMIS-'.rand(1111,9999);



        $me_classification = mysqli_real_escape_string($con, $_POST['me_classification']);
        $me_plant_name = mysqli_real_escape_string($con, $_POST['me_plant_name']);
        $me_category = mysqli_real_escape_string($con, $_POST['me_category']);
        $me_lto = mysqli_real_escape_string($con, $_POST['me_lto']);
        $me_expiration_date = mysqli_real_escape_string($con, $_POST['me_expiration_date']);
        $me_region = mysqli_real_escape_string($con, $_POST['region']);
        $me_province = mysqli_real_escape_string($con, $_POST['province']);
        $me_city = mysqli_real_escape_string($con, $_POST['city']);
        $me_barangay = mysqli_real_escape_string($con, $_POST['barangay']);
        $me_address = mysqli_real_escape_string($con, $_POST['me_address']);
        $me_email = mysqli_real_escape_string($con, $_POST['me_email']);
        $me_contact = mysqli_real_escape_string($con, $_POST['me_contact']);
        $me_username = mysqli_real_escape_string($con, $_POST['me_username']);
        $me_password = mysqli_real_escape_string($con, $_POST['me_password']);
        

        $sql = mysqli_query($con, "INSERT INTO meat_establishment_tbl (me_code,me_plant_name,me_type,me_classification,me_lto_number,me_region_code,me_province_code, me_city_code,me_barangay_code,me_address,me_date_created,me_expiry,me_username,me_password,me_contact,me_email)
        VALUES('$code','$me_plant_name','$me_category','$me_classification','$me_lto','$me_region','$me_province','$me_city','$me_barangay','$me_address','$todays_date','$me_expiration_date','$me_username','$me_password','$me_contact','$me_email')");

         $last_id = $con->insert_id;

         $mail = new PHPMailer(true);

          try{
             $mail->isSMTP();
             $mail->Host = 'smtp.gmail.com';
             $mail->SMTPAuth = true;
             $mail->Username = 'nmis.devops@gmail.com';
             $mail->Password = 'M3@ts@f3ty';
             $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
             $mail->port ='587';


             $mail->setFrom('nmis.devops@gmail.com');
             $mail->addAddress($me_email);
             

             $mail->isHTML(true);
             $mail->Subject ='Message Received';
             $mail->Body ='
            

<div style=" margin:auto; width:600px;">
<div style="border:2px solid #c1c1c1; padding:50px; border-radius:15px;">

<center>

<img src="cid:Kartka">

<h1>Good day!</h1>
</center>

                <p style="text-indent: 100px;">To activate your email click the button below  <br><br>
                <center>
                 <a href="http://localhost/AIPLIRSnative/pages/auth/login_activated.php?me_id='.$last_id.'" target="_blank" style="font-size:25px; background-color:#0c69f5; color:white; text-decoration:none; padding:10px; border-radius:5px;">Click Here</a>
                </center>
                
                <br><br><br>
                <h4>Department of Agriculture</h4>
                <h3 style="margin-top:-10px;">National Meat Inspection Service</h3>
                <p style="margin-top:-10px;">Plant Operation Standards and Monitoring Division ( POSMD )</p>
            </div>
   </div>';
             $mail->send();
          } catch(Exception $e)
          {

          }





 