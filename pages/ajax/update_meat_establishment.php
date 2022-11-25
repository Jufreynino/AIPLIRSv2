<?php
include '../../config/config.php';

 global $con;
 if(isset($_POST['btn_update_meat_establishment']))
    {
        $me_plant_name = $_POST['me_plant_name'];
        $me_category = $_POST['me_category'];
        $me_lto = $_POST['me_lto'];
        $me_expiration_date = $_POST['me_expiration_date'];
        $me_classification = $_POST['me_classification'];
        $me_region = $_POST['me_region'];
        $me_province = $_POST['me_province'];
        $me_city = $_POST['me_city'];
        $me_barangay = $_POST['me_barangay'];
        $me_address = $_POST['me_address'];
        $me_email = $_POST['me_email'];
        $me_contact = $_POST['me_contact'];

        $sql = mysqli_query($con, "UPDATE meat_establishment_tbl SET

            me_plant_name ='$me_plant_name',
            me_type ='$me_category',
            me_lto_number ='$me_lto',
            me_expiry ='$me_expiration_date',
            me_classification ='$me_classification',
            me_region_code ='$me_region',
            me_province_code ='$me_province',
            me_city_code ='$me_city',
            me_barangay_code ='$me_barangay',
            me_address ='$me_address',
            me_email ='$me_email',
            me_contact ='$me_contact',
            me_status ='Pending'




        WHERE me_id='".$_SESSION['me_id']."' ");

    }