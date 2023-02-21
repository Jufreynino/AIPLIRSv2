<?php 


require_once('../../config/config.php');
include '../../vendor/mailer/PHPMailerAutoload.php';


if($_POST['btn_add_meat_establishment'] == 1){

    date_default_timezone_set('Asia/Manila');
    $today = date("m/d/Y h:i:sa");
    $todays_date = date("m/d/Y");
    $time = date("h:i:sa");



    $code = 'sadsas';
    $me_plant_name = mysqli_real_escape_string($con, $_POST['me_plant_name']);
    $me_category = mysqli_real_escape_string($con, $_POST['me_category']);
    $me_expiration_date = mysqli_real_escape_string($con, $_POST['me_expiration_date']);
    $me_classification = mysqli_real_escape_string($con, $_POST['me_classification']);
    $me_email = mysqli_real_escape_string($con, $_POST['me_email']);
    $me_lto = mysqli_real_escape_string($con, $_POST['me_lto']);
    $me_contact = mysqli_real_escape_string($con, $_POST['me_contact']);
    $region_content = mysqli_real_escape_string($con, $_POST['region_content']);
    $province = mysqli_real_escape_string($con, $_POST['text_content']);
    $city = mysqli_real_escape_string($con, $_POST['city_text']);
    $barangay = mysqli_real_escape_string($con, $_POST['barangay_text']);
    $me_address = mysqli_real_escape_string($con, $_POST['me_address']);
    $me_username = mysqli_real_escape_string($con, $_POST['me_username']);
    $me_password = mysqli_real_escape_string($con, $_POST['me_password']);
    $me_confirm_password = mysqli_real_escape_string($con, $_POST['me_confirm_password']);
    $me_owner = mysqli_real_escape_string($con, $_POST['me_owner']);
    $region_code = mysqli_real_escape_string($con, $_POST['region_code']);
    
    $_me_lto = $me_category.'-'.$me_lto.'-'.$me_classification;

    if(empty($me_plant_name))
    {
     $response = '
                                    Meat Establishment is required!
                                    ';
    }
    else if(empty($me_category))
    {
     $response = '
                                    Category is required!';
    }

    else if(empty($me_classification))
    {
     $response = '
                                    Classification is required!';
    }

    else if(empty($me_lto))
    {
     $response = '
                                    License to Operate is required!';
    }
    else if(empty($me_expiration_date))
    {
     $response = '
                                    LTO Expiration date is required!
        ';
    }
    else if(empty($me_contact))
    {
     $response = '
                                    Contact Number required!
        ';
    }

    else if(strlen($me_contact) != 10)
    {
     $response = '
     Invalid mobile number format, use this format (9XXXXXXXXX)
        ';
    }

    else if(empty($me_email)) 
    {


                         $response = "
                                Email is required!";
    }

    else if(!filter_var($me_email, FILTER_VALIDATE_EMAIL)) 
    {


                         $response = "
                                Invalid email format";
    }
    


     else if(empty($me_username))
    {
     $response = '
                                    Username is required
        ';
    }


     else if(empty($me_password))
    {
     $response = '
                                    Password is required
        ';
    }
    else if(empty($me_confirm_password))
    {
     $response = '
                                    Cofirm password is required
        ';
    }

    else if($me_confirm_password != $me_password)
    {
     $response = '
                                    Password and Cofirm password not match
        ';
    }
    
    else if(empty($region_content))
    {
     $response = '
                                    Region is required
        ';
    }

     else if(empty($province))
    {
     $response = '
                                    Province is required
        ';
    }

     else if(empty($city))
    {
     $response = '
                                    City is required
        ';
    }


     else if(empty($barangay))
    {
     $response = '
                                    Barangay is required
        ';
    }
    else if(empty($me_address))
    {
     $response = '
                                    Address is required';
    }

    else

    {

       
        $check_emp_username = "SELECT * FROM employee_tbl WHERE username='$me_username'";
        $check_username_emp_data = mysqli_query($con, $check_emp_username);
        $check_username_emp_result = mysqli_fetch_assoc($check_username_emp_data);

        if($check_username_emp_result > 0)
        {
         $response = '
            Username is already exists!';
         
        }

        else{
            $check_username = "SELECT * FROM meat_establishment_tbl WHERE me_username='$me_username'";
            $check_username_data = mysqli_query($con, $check_username);
            $check_username_result = mysqli_fetch_assoc($check_username_data);

            if($check_username_result > 0)
            {
                 $response = '
                                      Username is already exists!';
            }
            else
            {

              $check_meat_establishment_name = "SELECT * FROM meat_establishment_tbl WHERE me_plant_name='$me_plant_name'";
              $check_meat_establishment_name_data = mysqli_query($con, $check_meat_establishment_name);
              $check_meat_establishment_name_result = mysqli_fetch_assoc($check_meat_establishment_name_data);
              if($check_meat_establishment_name_result > 0 )
              {
                         $response = '
                                     Meat Establishment  already exists!';
              }
              else
              {
                    $check_meat_establishment_lto = "SELECT * FROM meat_establishment_tbl WHERE me_lto_number='$_me_lto'";
                    $check_meat_establishment_lto_data = mysqli_query($con, $check_meat_establishment_lto);
                    $check_meat_establishment_lto_result = mysqli_fetch_assoc($check_meat_establishment_lto_data);
                    if($check_meat_establishment_lto_result > 0 )
                    {
                            $response = 'License to Operate Number is already exists!';
                    }
                    else
                    {
                        $response = 'success';

                        $sql = mysqli_query($con, "INSERT INTO meat_establishment_tbl (me_code,me_plant_name,me_type,me_classification,me_lto_number,me_region_code,me_province_code,me_city_code,me_barangay_code,me_address,me_status,me_date_created,me_expiry,me_remarks,me_username,me_password,me_setup_account,me_contact,me_email, me_owner,region_code)
                            VALUES('$code','$me_plant_name','$me_category','$me_classification','$me_category-$me_lto-$me_classification','$region_content','$province','$city','$barangay','$me_address','Pending','$todays_date','$me_expiration_date','no','$me_username','$me_password','test','$me_contact','$me_email','$me_owner','$region_code')");

                            $last_id = $con->insert_id;
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
                            $mail->Username   = 'jufreyninsbayog@gmail.com';                     // SMTP username
                            $mail->Password   = 'crryguqkfqzlstnz';                              //SMTP password
                            $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
                            $mail->Port       = 587;  
                            $mail->isHTML(true);
                            $mail->From = 'admin@noreply.com';  // This HAVE TO be your gmail adress
                            $mail->AddEmbeddedImage('../../global_assets/images/download.png', 'Kartka');

                            $mail->FromName = 'AIPLIRS Notification'; // This is the from name in the email, you can put anything you like here

                            $mail->Subject = 'Successfully Registered';

                            $mail->Body = ' <div style=" margin:auto; width:600px;">
                                    <div style="border:2px solid #c1c1c1; padding:50px; border-radius:15px;">

                                        <center>

                                        <img src="cid:Kartka">

                                        <h1>Good day! </h1>
                                        </center>

                                        <p style="text-indent: 100px; font-size:15px;">To activate your email,  Please click the button below.<br><br>
                                        <center>
                                        <a href="https://iplirs.nmis.gov.ph/pages/auth/login_activated.php?me_id='.$last_id.'" target="_blank" style="font-size:15px; background-color:#0c69f5; color:white; text-decoration:none; padding:10px; border-radius:5px;">Click Here</a>
                                        </center>
                                        
                                        <br><br><br>
                                        
                                        <b>Department of Agriculture</b> <br>
                                        <b style="font-size:15px;">National Meat Inspection Service</b><br>
                                        Plant Operation Standards and Monitoring Section ( POSMS )
                                    </div>
                                </div>';
                            $mail->AddAddress($me_email);
                            $mail->send();
                            
                    }
                        
              }
            }
        }
    }
    echo $response;
    
     // <script type="text/javascript"> -->
     //     window.location = "meat_establishment.php"; -->
     // </script> -->
}

else if($_POST['btn_add_mio'] == 1){


            date_default_timezone_set('Asia/Manila');
            $todays_date = date("m/d/Y h:i:sa");
            $today = strtotime($todays_date);

            if(isset($_POST['btn_add_mio'])){


                $employee_code = $_POST['employee_code'];
                $region_code = $_POST['region_code'];
                $firstname = $_POST['firstname'];
                $lastname = $_POST['lastname'];
                $username = $_POST['username'];
                $password = $_POST['password'];
                $confirm_password = $_POST['c_password'];
                $email = $_POST['email'];
                $contact = $_POST['contact'];
                $region = $_POST['text_content'];


                if(empty($employee_code))
                {
                                                $response = 'Employee is required!';
                }
                else if(empty($firstname))
                {
                                                $response = 'Firstname is required!';
                }

                else if(empty($lastname))
                {
                                                $response = 'Lastname is required!';
                }
                else if(empty($username))
                {
                                                $response = 'Username is required! ';
                }
                else if(empty($email))
                {
                                                $response = ' Email is required!';
                }

                else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) 
                {


                                                $response = "Invalid email format";
                }

                else if(empty($contact))
                {
                                                $response = ' Contact is required!';
                }

                else if(strlen($contact) != 10)
                {
                $response = '
                    Invalid mobile number format, use this format (9XXXXXXXXX)

                    ';
                }



                else if(empty($username))
                {
                                                $response = ' Username is required!';
                }
                else if(empty($password))
                {
                                                $response = 'Password is required!';
                }
                else if(empty($confirm_password))
                {
                                                $response = 'Confirm password is required!';
                }

                else if($password != $confirm_password)
                {
                                                $response = ' Password and Cofirm password not match!';
                }
                
                else if(empty($region))
                {
                                                $response = 'Region is required!';
                }

                else

                {

                

                    $check_username = "SELECT * FROM employee_tbl WHERE username='$username'";
                    $check_username_data = mysqli_query($con, $check_username);
                    $check_username_result = mysqli_fetch_assoc($check_username_data);

                    if($check_username_result > 0)
                    {
                                                $response = 'Username is already exists!';
                    }
                    else
                    {

                        
                            $sql = mysqli_query($con, "INSERT INTO employee_tbl (employee_code,firstname,lastname,email,username,password,region, role,account_status,contact,assign,region_code)
                                        VALUES('$employee_code','$firstname','$lastname','$email','$username','$password','$region','2','Pending','$contact','0','$region_code')");

                                        $last_id = $con->insert_id;


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
                                            $mail->Username   = 'jufreyninsbayog@gmail.com';                     // SMTP username
                                            $mail->Password   = 'crryguqkfqzlstnz';                              //SMTP password
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
                                            <b>'.$firstname.'</b>
                                            </center>

                                                <p style="text-indent: 100px;">To activate your, email click the button below  <br><br>
                                                <center>
                                                <a href="https://iplirs.nmis.gov.ph/pages/auth/email_activated_mio.php?usrid='.$last_id.'" target="_blank" style="font-size:25px; background-color:#0c69f5; color:white; text-decoration:none; padding:10px; border-radius:5px;">Click Here</a>
                                                </center>
                                                
                                                <br><br><br>
                                                <h4>Department of Agriculture</h4>
                                                <h3 style="margin-top:-10px;">National Meat Inspection Service</h3>
                                                <p style="margin-top:-10px;">Plant Operation Standards and Monitoring Division ( POSMD )</p>
                                            </div>
                                </div>';
                                            $mail->AddAddress($email);

                                            $mail->send();

                                    $response = 'success';
                
                    
                    }
                }




                

            
            }
    echo $response;

        }


        else if($_POST['btn_add_posms'] == 1){


            date_default_timezone_set('Asia/Manila');
            $todays_date = date("m/d/Y h:i:sa");
            $today = strtotime($todays_date);

            if(isset($_POST['btn_add_posms'])){


                $employee_code = $_POST['employee_code'];
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $confirm_password = $_POST['c_password'];
        
        $email = $_POST['email'];
        $contact = $_POST['contact'];
        $region = $_POST['region_content'];
        $region_code = mysqli_real_escape_string($con, $_POST['region_code']);


         if(empty($employee_code))
        {
            $response = '
                                      Employee is required!
                                        ';
        }
        else if(empty($firstname))
        {
            $response = '
                                      Firstname is required!';
        }

        else if(empty($lastname))
        {
            $response = '
                                      Lastname is required!';
        }
        else if(empty($username))
        {
            $response = '
                                      Username is required!
            ';
        }
        else if(empty($email))
        {
            $response = '
                                      Email is required!
            ';
        }

        else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) 
        {


                                $response = "
                                   Invalid email format";
        }
        


         else if(empty($contact))
        {
            $response = '
                                      Contact is required!
            ';
        }

        else if(strlen($contact) != 10)
        {
        $response = '
                                       
     Invalid mobile number format, use this format (9XXXXXXXXX)
        
            ';
        }



         else if(empty($username))
        {
            $response = '
                                      Username is required!
            ';
        }
        else if(empty($password))
        {
            $response = '
                                      Password is required!
            ';
        }
        else if(empty($confirm_password))
        {
            $response = '
                                      Confirm password is required!
            ';
        }

        else if($password != $confirm_password)
        {
            $response = '
                                      Password and Cofirm password not match!
            ';
        }
        
        else if(empty($region))
        {
            $response = '
                                      Region is required!
            ';
        }


        else

        {

           

              $check_username = "SELECT * FROM employee_tbl WHERE username='$username'";
              $check_username_data = mysqli_query($con, $check_username);
              $check_username_result = mysqli_fetch_assoc($check_username_data);

              if($check_username_result > 0)
              {
                    $response = '
                                      Username is already exists!';
              }
              else
              {

                
                     $sql = mysqli_query($con, "INSERT INTO employee_tbl (employee_code,firstname,lastname,email,username,password,region,role,account_status,contact,assign,region_code)
                                VALUES('$employee_code','$firstname','$lastname','$email','$username','$password','$region','1','Pending','$contact','0','$region_code')");

                                 $last_id = $con->insert_id;


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
                                       $mail->Username   = 'jufreyninsbayog@gmail.com';                     // SMTP username
                                       $mail->Password   = 'crryguqkfqzlstnz';                              //SMTP password
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
                                         <a href="https://iplirs.nmis.gov.ph/pages/auth/email_activated_mio.php?usrid='.$last_id.'" target="_blank" style="font-size:25px; background-color:#0c69f5; color:white; text-decoration:none; padding:10px; border-radius:5px;">Click Here</a>
                                        </center>
                                        
                                        <br><br><br>
                                        <h4>Department of Agriculture</h4>
                                        <h3 style="margin-top:-10px;">National Meat Inspection Service</h3>
                                        <p style="margin-top:-10px;">Plant Operation Standards and Monitoring Division ( POSMD )</p>
                                    </div>
                           </div>';
                                       $mail->AddAddress($email);

                                       $mail->send();

                            $response = 'success';
        
              }
        }
       
}
    echo $response;

}











































else if($_POST['btn_add_am_disease_pdp'] == 1){

    date_default_timezone_set('Asia/Manila');
    $today = date("m/d/Y h:i:sa");
    $date = date("m/d/Y");
    $time = date("h:i:sa");

        $disease_code = ucwords($_POST['disease_code']);
        $disease_description = ucwords($_POST['disease_description']);
        $disease_kind_of_meat = $_POST['disease_kind_of_meat'];
        $disease_category = $_POST['disease_category'];

        $notifiable = $_POST['notifiable'];
        $disease_kind_of_species = $_POST['disease_kind_of_species'];

    $query = '';

    $speciesExistingData=array();


  
            for($count = 0; $count<count($disease_kind_of_species); $count++)
            {
                $code_clean = mysqli_real_escape_string($con, $disease_code);
                $disease_category_clean = mysqli_real_escape_string($con, $disease_category);
                $disease_description_clean = mysqli_real_escape_string($con, $disease_description);
                $disease_kind_of_meat_clean = mysqli_real_escape_string($con, $disease_kind_of_meat);
                $notifiable_clean = mysqli_real_escape_string($con, $notifiable);


                $species_clean = mysqli_real_escape_string($con, $disease_kind_of_species[$count]);
                if($code_clean == '' && $species_clean == '' )
                {
                   
                }
                else
                {
                    $species_sql = "SELECT * FROM disease_tbl WHERE disease_code='$code_clean' AND disease_species='$species_clean'";
                    $species_sql_data = mysqli_query($con, $species_sql);
                    $coundData= mysqli_num_rows($species_sql_data);


                        if($coundData  > 0)
                        {
                            // while($species_sql_result = mysqli_fetch_object($species_sql_data)){
                                // }
                                $speciesRow = mysqli_fetch_object($species_sql_data);
                                array_push($speciesExistingData, $speciesRow->disease_species);
                        }
                        else{
                            $query .= 'INSERT INTO disease_tbl (disease_code,disease_description,disease_level,disease_status,disease_type,disease_category,disease_date,disease_time,disease_notifiable,disease_kind_of_meat,disease_species) 
                            VALUES ("'.$code_clean.'","'.$disease_description_clean.'","Critical","Active","PDP","'.$disease_category_clean.'","'.$date.'","'.$time.'","'.$notifiable_clean.'","'.$disease_kind_of_meat_clean.'","'.$species_clean.'");';




                        }
                }
            }


            if (count($speciesExistingData) > 0) {

                $response['theme'] = 'alert bg-info text-white alert-styled-left p-0';
                $response['title'] = "Already Exist! ";
                $response['icon'] = "icon-spam";
                $response['msg'] =  join(', ',$speciesExistingData);
                $response['alert'] = 'info';
                echo json_encode($response);

                
            }
            else
            {
                // continue to inster other data if not existing

                        $response['theme'] = 'alert bg-success text-white alert-styled-left p-0';
                        $response['title'] = "Successfully Added ";
                        $response['icon'] = "icon-checkmark4";
                        $response['msg'] =  join(', ',$speciesExistingData);
                        $response['alert'] = 'success';

                        mysqli_multi_query($con, $query);

                        echo json_encode($response);
            
            }
        }



        else if($_POST['btn_add_am_disease_slh'] == 1){

            date_default_timezone_set('Asia/Manila');
            $today = date("m/d/Y h:i:sa");
            $date = date("m/d/Y");
            $time = date("h:i:sa");
        
                $disease_code = ucwords($_POST['disease_code']);
                $disease_description = ucwords($_POST['disease_description']);
                $disease_kind_of_meat = $_POST['disease_kind_of_meat'];
                $disease_category = $_POST['disease_category'];
        
                $notifiable = $_POST['notifiable'];
                $disease_kind_of_species = $_POST['disease_kind_of_species'];
        
            $query = '';
        
            $speciesExistingData=array();
        
        
          
                    for($count = 0; $count<count($disease_kind_of_species); $count++)
                    {
                        $code_clean = mysqli_real_escape_string($con, $disease_code);
                        $disease_category_clean = mysqli_real_escape_string($con, $disease_category);
                        $disease_description_clean = mysqli_real_escape_string($con, $disease_description);
                        $disease_kind_of_meat_clean = mysqli_real_escape_string($con, $disease_kind_of_meat);
                        $notifiable_clean = mysqli_real_escape_string($con, $notifiable);
        
        
                        $species_clean = mysqli_real_escape_string($con, $disease_kind_of_species[$count]);
                        if($code_clean == '' && $species_clean == '' )
                        {
                           
                        }
                        else
                        {
                            $species_sql = "SELECT * FROM disease_tbl WHERE disease_code='$code_clean' AND disease_species='$species_clean'";
                            $species_sql_data = mysqli_query($con, $species_sql);
                            $coundData= mysqli_num_rows($species_sql_data);
        
        
                                if($coundData  > 0)
                                {
                                    // while($species_sql_result = mysqli_fetch_object($species_sql_data)){
                                        // }
                                        $speciesRow = mysqli_fetch_object($species_sql_data);
                                        array_push($speciesExistingData, $speciesRow->disease_species);
                                }
                                else{
                                    $query .= 'INSERT INTO disease_tbl (disease_code,disease_description,disease_level,disease_status,disease_type,disease_category,disease_date,disease_time,disease_notifiable,disease_kind_of_meat,disease_species) 
                                    VALUES ("'.$code_clean.'","'.$disease_description_clean.'","Critical","Active","SLH","'.$disease_category_clean.'","'.$date.'","'.$time.'","'.$notifiable_clean.'","'.$disease_kind_of_meat_clean.'","'.$species_clean.'");';
        
                                }
                        }
                    }
        
        
                    if (count($speciesExistingData) > 0) {
        
                        $response['theme'] = 'alert bg-info text-white alert-styled-left p-0';
                        $response['title'] = "Already Exist! ";
                        $response['icon'] = "icon-spam";
                        $response['msg'] =  join(', ',$speciesExistingData);
                        $response['alert'] = 'info';
                        echo json_encode($response);
        
                        
                    }
                    else
                    {
                        // continue to inster other data if not existing
        
                                $response['theme'] = 'alert bg-success text-white alert-styled-left p-0';
                                $response['title'] = "Successfully Added ";
                                $response['icon'] = "icon-checkmark4";
                                $response['msg'] =  join(', ',$speciesExistingData);
                                $response['alert'] = 'success';
        
                                mysqli_multi_query($con, $query);
        
                                echo json_encode($response);
                    
                    }
                }



































else if($_POST['btn_add_pm_disease_slh'] == 1){


    // $arr1=array("32,45,67,89");
    // $arr2=array("5,3,2,1");

    // foreach($arr1 as $key => $val){
    //     $val2 = $arr2[$key];
    //     echo $val2;
    // }

    date_default_timezone_set('Asia/Manila');
    $today = date("m/d/Y h:i:sa");
    $date = date("m/d/Y");
    $time = date("h:i:sa");
    
    $judgement = $_POST['judgement'];
    $disease_code = $_POST['disease_code'];
    $disease_description = $_POST['disease_description'];
    $notifiable = $_POST['notifiable'];

    $disease_kind_of_meat = $_POST['disease_kind_of_meat'];
    $disease_kind_of_species = $_POST['disease_kind_of_species'];


    $query = '';
        
    $speciesExistingData=array();

     for($count = 0; $count<count($disease_kind_of_species); $count++)
     {
        for ($r = 0 ; $r < count($disease_kind_of_meat); $r++) {
            $code_clean = mysqli_real_escape_string($con, $disease_code);
            $disease_description_clean = mysqli_real_escape_string($con, $disease_description);
            $disease_kind_of_meat_clean = mysqli_real_escape_string($con, $disease_kind_of_meat[$r]);
            $notifiable_clean = mysqli_real_escape_string($con, $notifiable);
            $judgement_clean = mysqli_real_escape_string($con, $judgement);


            $species_clean = mysqli_real_escape_string($con, $disease_kind_of_species[$count]);
            
            if($code_clean == '' && $species_clean == '')
            {
            
            }
            else
            {
                $species_sql = "SELECT * FROM disease_tbl WHERE disease_code='$code_clean' AND disease_species='$species_clean' AND disease_kind_of_meat='$disease_kind_of_meat_clean'";
                $species_sql_data = mysqli_query($con, $species_sql);
                $coundData= mysqli_num_rows($species_sql_data);


                    if($coundData  > 0)
                    {
                        // while($species_sql_result = mysqli_fetch_object($species_sql_data)){
                            // }
                            $speciesRow = mysqli_fetch_object($species_sql_data);
                            array_push($speciesExistingData, $speciesRow->disease_species);
                            $speciesExistingDatatset = array_unique($speciesExistingData, SORT_REGULAR);

                    }
                    else{
                        $query .= 'INSERT INTO disease_tbl (disease_code,disease_description,disease_level,disease_status,disease_type,disease_category,disease_date,disease_time,disease_notifiable,disease_kind_of_meat,disease_species, disease_judgement) 
                        VALUES ("'.$code_clean.'","'.$disease_description_clean.'","Critical","Active","SLH","Postmortem","'.$date.'","'.$time.'","'.$notifiable_clean.'","'.$disease_kind_of_meat_clean.'","'.$species_clean.'","'.$judgement_clean.'");';
                    }
            }
        }
     }

     if (count($speciesExistingData) > 0) {

        $response['theme'] = 'alert bg-info text-white alert-styled-left p-0';
        $response['title'] = "Already Exist! ";
        $response['icon'] = "icon-spam";
        $response['msg'] =  str_replace(array('&quot;','[',']',','), '<p style="margin-bottom:-5px !important">', htmlspecialchars(json_encode(array_values($speciesExistingDatatset))));
        $response['alert'] = 'info';
        echo json_encode($response);
    }
    else
    {
        // continue to inster other data if not existing

                $response['theme'] = 'alert bg-success text-white alert-styled-left p-0';
                $response['title'] = "Successfully Added ";
                $response['icon'] = "icon-checkmark4";
                $response['msg'] =  join($speciesExistingData);
                $response['alert'] = 'success';

                mysqli_multi_query($con, $query);

                echo json_encode($response);
    
    }
        // die();

    // for($count = 0; $count<count($disease_kind_of_species); $count++)
    // {
        
    //     echo json_encode($disease_kind_of_species);die;

    // }


    // $array[array($disease_kind_of_meat)] =  array($disease_kind_of_species);
    //     $disease_kind_of_meat_clean = mysqli_real_escape_string($con, $disease_kind_of_meat);


    //     $species_clean = mysqli_real_escape_string($con, $disease_kind_of_species[$count]);

    //     for($count = 0; $count<count($disease_kind_of_meat); $count++)
    //     {
    //         echo json_encode($disease_kind_of_meat);die;

    //     }

    //     $array = array();

        //
            
           
        // }

    }



else if($_POST['btn_add_pm_disease_pdp'] == 1){


    date_default_timezone_set('Asia/Manila');
    $today = date("m/d/Y h:i:sa");
    $date = date("m/d/Y");
    $time = date("h:i:sa");
    
    $judgement = $_POST['judgement'];
    $disease_code = $_POST['disease_code'];
    $disease_description = $_POST['disease_description'];
    $notifiable = $_POST['notifiable'];
    
    $disease_kind_of_meat = $_POST['disease_kind_of_meat'];
    $disease_kind_of_species = $_POST['disease_kind_of_species'];
    

    $query = '';
        
    $speciesExistingData=array();

     for($count = 0; $count<count($disease_kind_of_species); $count++)
     {
        for ($r = 0 ; $r < count($disease_kind_of_meat); $r++) {
            $code_clean = mysqli_real_escape_string($con, $disease_code);
            $disease_description_clean = mysqli_real_escape_string($con, $disease_description);
            $disease_kind_of_meat_clean = mysqli_real_escape_string($con, $disease_kind_of_meat[$r]);
            $notifiable_clean = mysqli_real_escape_string($con, $notifiable);
            $judgement_clean = mysqli_real_escape_string($con, $judgement);


            $species_clean = mysqli_real_escape_string($con, $disease_kind_of_species[$count]);
            
            if($code_clean == '' && $species_clean == '')
            {
            
            }
            else
            {
                $species_sql = "SELECT * FROM disease_tbl WHERE disease_code='$code_clean' AND disease_species='$species_clean' AND disease_kind_of_meat='$disease_kind_of_meat_clean'";
                $species_sql_data = mysqli_query($con, $species_sql);
                $coundData= mysqli_num_rows($species_sql_data);


                    if($coundData  > 0)
                    {
                        // while($species_sql_result = mysqli_fetch_object($species_sql_data)){
                            // }
                            $speciesRow = mysqli_fetch_object($species_sql_data);
                            array_push($speciesExistingData, $speciesRow->disease_species);
                            $speciesExistingDatatset = array_unique($speciesExistingData, SORT_REGULAR);

                    }
                    else{
                        $query .= 'INSERT INTO disease_tbl (disease_code,disease_description,disease_level,disease_status,disease_type,disease_category,disease_date,disease_time,disease_notifiable,disease_kind_of_meat,disease_species, disease_judgement) 
                        VALUES ("'.$code_clean.'","'.$disease_description_clean.'","Critical","Active","PDP","Postmortem","'.$date.'","'.$time.'","'.$notifiable_clean.'","'.$disease_kind_of_meat_clean.'","'.$species_clean.'","'.$judgement_clean.'");';
                    }
            }
        }
     }

     if (count($speciesExistingData) > 0) {

        $response['theme'] = 'alert bg-info text-white alert-styled-left p-0';
        $response['title'] = "Already Exist! ";
        $response['icon'] = "icon-spam";
        $response['msg'] =  str_replace(array('&quot;','[',']',','), '<p style="margin-bottom:-5px !important">', htmlspecialchars(json_encode(array_values($speciesExistingDatatset))));
        $response['alert'] = 'info';
        echo json_encode($response);
    }
    else
    {
        // continue to inster other data if not existing

                $response['theme'] = 'alert bg-success text-white alert-styled-left p-0';
                $response['title'] = "Successfully Added ";
                $response['icon'] = "icon-checkmark4";
                $response['msg'] =  join($speciesExistingData);
                $response['alert'] = 'success';

                mysqli_multi_query($con, $query);

                echo json_encode($response);
    
    }
    }


    
    

        

?>