INNER JOIN assigment_tbl ON meat_establishment_tbl.me_id = assigment_tbl.me_id 
AND assigment_tbl.employee_id='".$_SESSION['employee_id']."'  GROUP BY meat_establishment_tbl.me_id ORDER BY drr_region_code"
AND meat_establishment_tbl.me_id='$me'

        $start_dates = $_POST['from'];
        $startddate = DateTime::createFromFormat('Y-m-d',$start_dates);
        $start_date = $startddate->format('m/d/Y');

        $end_dates = $_POST['to'];
        $enddate = DateTime::createFromFormat('Y-m-d',$end_dates);
        $end_date = $enddate->format('m/d/Y');

        $me = $_POST['meat_establishment'];




        if(isset($_POST['disease_antemortem_filter']))
   {


    $sql = "SELECT *, CONCAT(s_cause, r_cause,c_cause) AS column_name,
            SUM(s_weight) AS s_weight, 
            SUM(r_weight) AS r_weight, 
            SUM(c_weight) AS c_weight, 
            SUM(s_heads) AS s_heads, 

            SUM(r_heads) AS r_heads, 


            SUM(c_heads) AS c_heads
            
            
                FROM am_table INNER JOIN assigment_tbl ON am_table.me_id = assigment_tbl.me_id WHERE am_table.am_date BETWEEN '$start_date' AND '$end_date' AND assigment_tbl.employee_id='".$_SESSION['employee_id']."' GROUP BY column_name";
                $result = $con->query($sql);
                while($row = $result->fetch_assoc()) {

                $total_weight = $row['s_weight'] + $row['r_weight'] + $row['c_weight'];
                $total_heads = $row['s_heads'] + $row['r_heads'] + $row['c_heads'];

                $sqls = "SELECT * FROM disease_tbl WHERE d_id='".$row['column_name']."'";
                $results = $con->query($sqls);
                while($rows = $results->fetch_assoc()) {

                    ?>
                    <tr>
                        <td style="width:100px;"><?php echo $rows['disease_code'] ?></td>
                        <td style="width:100px;" ><b> <?php echo $rows['disease_description'] ?></b></td>
                        <td style="width:100px;" ><b> <?php echo $rows['disease_species'] ?></b></td>
                        <td><?php echo date('F d, Y', strtotime($start_date)); ?>- <?php echo date('F d, Y', strtotime($end_dates)); ?></td>
                        <td style="color:blue;"><?php echo number_format($total_heads); ?></td>
                        <td style="color:red;"><?php echo number_format($total_weight,2); ?> </td>
                    </tr>
                <?php
                    }
                }