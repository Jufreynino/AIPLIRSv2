<?php

use PHPMailer\PHPMailer\PHPMailer;

// require_once '../../assets/phpmailer/src/Exception.php';
// require_once '../../assets/phpmailer/src/PHPMailer.php';
// require_once '../../assets/phpmailer/src/SMTP.php';

include 'mailer/PHPMailerAutoload.php';

include '../../config/config.php';

 global $con;
    date_default_timezone_set('Asia/Manila');
    $todays_date = date("m/d/Y h:i:sa");
    $today = strtotime($todays_date);
   



        $employee_code = $_POST['employee_code'];
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $address = $_POST['address'];
        $email = $_POST['email'];
        $contact = $_POST['contact'];
        $region = $_POST['region'];
        $province = $_POST['province'];
        $city = $_POST['city'];
        $barangay = $_POST['barangay'];
        

        $sql = mysqli_query($con, "INSERT INTO employee_tbl (employee_code,firstname,lastname,email,username,password,region, province,city,barangay,address,role,contact)
        VALUES('$employee_code','$firstname','$lastname','$email','$username','$password','$region','$province','$city','$barangay','$address','2','$contact')");

         $last_id = $con->insert_id;

         $mail = new PHPMailer(true);

               $mail = new PHPMailer();
               $mail->isSMTP();  
               $mail->SMTPOptions = array(
                   'ssl' => array(
                       'verify_peer' => false,
                       'verify_peer_name' => false,
                       'allow_self_signed' => true
                   )
               );                                          // Set mailer to use SMTP
               $mail->Host       = 'smtp.gmail.com';  // Specify main and backup SMTP servers
               $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
               $mail->Username   = 'nmis.devops@gmail.com';                     // SMTP username
               $mail->Password   = 'vtdojevqxblcsoao';                              //SMTP password
               $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
               $mail->Port       = 587;  
               $mail->isHTML(true);
               $mail->From = 'admin@noreply.com';  // This HAVE TO be your gmail adress
               $mail->AddEmbeddedImage('../../global_assets/images/download.png', 'Kartka');

               $mail->FromName = 'AIPLIRS Notification'; // This is the from name in the email, you can put anything you like here

               $mail->Subject = 'Successfully Registered';
               $mail->Body ='
            

               <div style=" margin:auto; width:600px;">
               <div style="border:2px solid #c1c1c1; padding:50px; border-radius:15px;">

               <center>

               <img src="cid:Kartka">

               <h1>Good day!</h1>
               </center>

                <p style="text-indent: 100px;">To activate your, email click the button below  <br><br>
                <center>
                 <a href="http://localhost/AIPLIRSnative/pages/auth/email_activated_mio.php?usrid='.$last_id.'" target="_blank" style="font-size:25px; background-color:#0c69f5; color:white; text-decoration:none; padding:10px; border-radius:5px;">Click Here</a>
                </center>
                
                <br><br><br>
                <h4>Department of Agriculture</h4>
                <h3 style="margin-top:-10px;">National Meat Inspection Service</h3>
                <p style="margin-top:-10px;">Plant Operation Standards and Monitoring Division ( POSMD )</p>
            </div>
   </div>';
               $mail->AddAddress($email);

               $mail->send();





 