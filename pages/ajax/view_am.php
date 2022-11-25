<?php

$server = 'localhost';
$root = 'root';
$pass = '';
$db = 'aiplirs_2022_db';

$con = new mysqli($server,$root,$pass,$db);


$sql = "SELECT *  FROM am_table";
$result = $conn->query($sql);

  while($row = $result->fetch_assoc()) {
    $output .= '
   id:  '.$row["drr_id"].' " - Name: "  '.$row["drr_id"].'" " '.$row["drr_id"].' "<br>";
       
       
       
    ';
  }
 echo 'test';


?>