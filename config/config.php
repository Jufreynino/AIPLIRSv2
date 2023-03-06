<?php

$server = 'localhost';
$root = 'nmis_aiplirs';
$pass = 'nmis@admin123!';
$db = 'aiplirs_db';
$con = mysqli_connect($server,$root,$pass,$db)or die("Unable to connect with Database"); ;
?>