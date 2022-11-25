<?php

 
	$species = $_POST['species'];
	$md = $_POST['md'];

    $from = $_POST['from'];
    $fromdate = DateTime::createFromFormat('Y-m-d',$from);
    $from_date = $fromdate->format('m/d/Y');


    $to = $_POST['to'];
    $todate = DateTime::createFromFormat('Y-m-d',$to);
    $to_date = $todate->format('m/d/Y');



 	$output = '';
 	$con = mysqli_connect("localhost","root","","aiplirs_2022_db");
 	$sql = "SELECT * FROM ddr_table WHERE drr_date BETWEEN '$from_date' AND '$to_date' AND drr_species='$species'";
 	$results = mysqli_query($con, $sql);
 	$output .='
 					<div class="card-body py-0">



 					<h1>'.$species.'</h1>


                        <h1 class="text-center">I. ANTEMORTEM INSPECTION</h1>
                            <div class="row">
                            
                            		<div class="col-xl-3 col-lg-6" style="padding-left: 5px !important; padding-right: 0;">
                                        <div class="card " style="border:1px solid black;  border-radius: 0px; ">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                                                <div class="mb-4">
                                                    <h6 class="card-title mb-0">Received Live Animals</h6>
                                                </div>
                                                        <table class="table">
                                                            <tbody>
                                                              <tr>
                                                                    <th style="padding: 4px !important; font-size: 13px !important;">Total Number of Animals Received</th>
                                                                    <th style="padding: 4px !important; font-size: 13px !important;">Origin</th>
                                                                </tr>';
												                    while($row = mysqli_fetch_assoc($results))
												 					{
												 				$output .='
                                                                			<tr>
                                                                                <td style="padding: 4px !important; font-size: 13px !important;">'.$row['drr_total_head'].'</td>
                                                                                <td style="padding: 4px !important; font-size: 13px !important;">'.$row['drr_farm_origin'].'</td>
                                                                            </tr>
                                                                        ';
                                                                       }
                                                                $output .='
                                                                    
                                                            </tbody>
                                                        </table>
                                                </div>
                                        </div>
                                    </div>



                                    <div class="col-xl-6 col-lg-6" style="padding-left: 5px !important; padding-right: 0;">
                                        <div class="card " style="border:1px solid black;  border-radius: 0px; ">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                                                <div class="mb-4">
                                                    <h6 class="card-title mb-0">Received Live Animals</h6>
                                                </div>
                                                        <table class="table">
                                                            <tbody>
                                                              <tr>';

												$sqlr = "SELECT * FROM am_table INNER JOIN ddr_table ON am_table.drr_id=ddr_table.drr_id WHERE am_table.am_date BETWEEN '$from_date' AND '$to_date' AND am_table.me_id='$md'  ORDER BY am_table.am_time DESC";
                                                        $resultr = mysqli_query($con, $sqlr); 

                                                             $output .= '
                                                             <th style="padding: 4px !important; font-size: 13px !important;">Cause</th>
                                                                    <th style="padding: 4px !important; font-size: 13px !important;">Total Number of Animals Received</th>
                                                                    <th style="padding: 4px !important; font-size: 13px !important;">Total Weight of Animals Received</th>
                                                                </tr>';
                                                while($rowr = mysqli_fetch_assoc($resultr)){
												 				$output .='
                                                                			<tr>';

                                                            	 			if($rowr['r_cause'] == '0' || $rowr['r_heads'] == '0' || $rowr['r_weight'] == '0' ){
                                                                                    
                                                                                            } else{ 
                                                                $output .='
                                                                                                    
                                                                                                    <td style="font-size:12px !important;">'.$rowr['r_cause'].'</td>
                                                                                                    <td style="font-size:12px !important;">'.$rowr['r_heads'].'</td>
                                                                                                    <td style="font-size:12px !important;">'.$rowr['r_weight'].'</td>';
                                                                                                }
                                                                $output .='
                                                                                        
                                                                                                </tr>
                                                                                                  <tr >';


                                                                                      if($rowr['c_cause'] == '0' || $rowr['c_heads'] == '0' || $rowr['c_weight'] == '0' ){ 
                                                                                    
                                                                                           } else{ 
                                                                $output .= '
                                                                                                    
                                                                                                    <td style="font-size:12px !important;">'.$rowr['c_cause'].'</td>
                                                                                                    <td style="font-size:12px !important;">'.$rowr['c_heads'].'</td>
                                                                                                    <td style="font-size:12px !important;">'.$rowr['c_weight'].'</td>';

                                                                                                   
                                                                                           }
                                                                $output .= ' 
                                                                                        </tr>';
                                                                       
                                                                       }
                                                                $output .='
                                                                    
                                                            </tbody>
                                                        </table>
                                                </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-3 col-lg-6" style="padding-left: 5px !important; padding-right: 0;">
                                        <div class="card " style="border:1px solid black;  border-radius: 0px; ">
                                            <div class="card-statistic-3 p-4">
                                                <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                                                <div class="mb-4">
                                                    <h6 class="card-title mb-0">Received Live Animals</h6>
                                                </div>
                                                        <table class="table">
                                                            <tbody>
                                                              <tr>
                                                                    <th style="padding: 4px !important; font-size: 13px !important;">Total Number of Animals Received</th>
                                                                    <th style="padding: 4px !important; font-size: 13px !important;">Origin</th>
                                                                </tr>';

                                                        		$sqlr = "SELECT * FROM am_table INNER JOIN ddr_table ON am_table.drr_id=ddr_table.drr_id WHERE am_table.am_date BETWEEN '$from_date' AND '$to_date' AND am_table.me_id='$md'  ORDER BY am_table.am_time DESC";
                                               				 	$resultr = mysqli_query($con, $sqlr); 

												                    while($row = mysqli_fetch_assoc($resultr))
												 					{
												 				$output .='
                                                                			<tr>
                                                                                <td style="padding: 4px !important; font-size: 13px !important;">'.$row['drr_total_head'].'</td>
                                                                                <td style="padding: 4px !important; font-size: 13px !important;">'.$row['drr_farm_origin'].'</td>
                                                                            </tr>
                                                                        ';
                                                                       }
                                                                $output .='
                                                                    
                                                            </tbody>
                                                        </table>
                                                </div>
                                        </div>
                                    </div>





 							</div>
                    </div>
 	';
 	
 		
 	echo $output;



