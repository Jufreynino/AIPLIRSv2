<?php




global $con;
   
$sql = "SELECT * FROM disease_tbl WHERE disease_type='SLH' AND disease_category='Antemortem' AND disease_delete_status='0' ORDER BY d_id DESC";
$result = $con->query($sql);
while($row = $result->fetch_assoc()) {
    ?>
            <tr style="padding:10px !important; border:1px solid #bdb8b8;">
                <td class="forcheckox" style="font-size:12px !important;  width:100px;"><?php echo $row['disease_code']?></td>
                <td class="forcheckox" style="font-size:12px !important; padding:2px;"><?php echo $row['disease_description']  ?></td>
                <td class="forcheckox" style="font-size:12px !important; padding:2px;  width:120px;"><?php echo $row['disease_kind_of_meat']  ?></td>





                <td class="forcheckox" style="font-size:12px !important; padding:2px;  width:120px;"><?php echo $row['disease_species']  ?></td>


                
                <?php if($row['disease_notifiable'] == '0') {?>

                <td class="forcheckox" class="text-center"  style="font-size:12px !important; padding:2px; color:red; width:120px;">
                    Notifiable 
                    <?php }else{ ?>
                <td class="forcheckox" class="text-center"  style="font-size:12px !important; padding:2px; color:green; width:120px;">
                    Not Notifiable
                    <?php } ?>
                </td>


                <td  class="text-center forcheckox" style="font-size:12px !important; padding:2px; width:150px;">
                    <button type="button" class="btn bg-info btn-sm" data-toggle="modal" data-target="#update_slh<?php echo $row['d_id'];?>">Edit</button>
                    <button type="button" class="btn bg-danger btn-sm" data-toggle="modal" data-target="#delete_slh<?php echo $row['d_id'];?>">Delete</button>
                </td>





                            <div id="delete_slh<?php echo $row['d_id'];  ?>" class="modal fade  text-center" tabindex="-1" data-backdrop="static">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                       
                                        <div class="modal-body">
                                            <form method="POST">

                                                <input type="hidden" name="d_id" value="<?php echo $row['d_id'];  ?>">
                                                <br>
                                                <p style="font-size:20px;"> Are you sure you want to delete <?php echo $row['disease_code'] ?></b> <?php echo $row['disease_description'] ?>? </p>
                                                
                                                <br>
                                                <br>
                                            <button type="submit" class="btn bg-success" name="btn_delete_slh_disease">Yes</button>
                                            <button type="button" class="btn bg-danger" data-dismiss="modal">No&nbsp;</button>
                                         </div>
                                        <div class="modal-footer">
                                            
                                        </div>
                                    </div>
                                </form>
                                </div>
                            </div>



                            <div id="update_slh<?php echo $row['d_id'];  ?>" class="modal fade" tabindex="-1" data-backdrop="static">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header bg-info">
                                            <h6 class="modal-title"><?php echo $row['disease_description']  ?></h6>
                                        </div>
                                        <div class="modal-body">
                                            <form method="POST">
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <label>Code</label>
                                                            <input type="text" value="<?php echo $row['disease_code'] ?>" name="disease_code" class="form-control" required>
                                                            <input type="hidden" value="<?php echo $row['d_id'] ?>" name="disease_id" class="form-control" required>

                                                        </div>

                                                        <div class="col-sm-5">
                                                            <label>Disease </label>
                                                            <input type="text" value="<?php echo $row['disease_description'] ?>" name="disease_description" class="form-control" required>
                                                        </div>

                                                       
                                                        <div class="col-sm-4">
                                                            <label>Judgement</label>

                                                            <select class="form-control" name="disease_kind_of_meat" required>
                                                                <option value="Suspect">Suspect</option>
                                                                <option value="Rejected">Rejected</option>
                                                                <option value="Condemned">Condemned</option>
                                                            </select>
                                                        </div>
                                                       
                                                    </div>
                                                </div>

                                                
                                                    <div class="row">

                                                    <div class="col-sm-4">
                                                            <label>Species</label>

                                                            <select class="form-control" name="disease_kind_of_species" required>
                                                                <option value="Cattle">Cattle</option>
                                                                <option value="Carabao">Carabao</option>
                                                                <option value="Hog">Hog</option>
                                                                <option value="Goat">Goat</option>
                                                                <option value="Horse">Horse</option>
                                                                <option value="Sheep">Sheep</option>
                                                                <option value="Ostrich">Ostrich</option>
                                                                <option value="Crocodile">Crocodile</option>
                                                                <option value="Rabbit">Rabbit</option>
                                                            </select>
                                                        </div>

                                                        

                                                        <?php if($row['disease_notifiable'] == 0){ ?>



                                                             <div class="col-sm-6">
                                                               <div class="form-group mb-3 mb-md-2">
                                                                    <label class="d-block font-weight-semibold">Disease Status </label>


                                                                    <div class="form-check form-check-inline">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input" name="notifiable" value="0" checked>
                                                                            Notifiable
                                                                        </label>
                                                                    </div>

                                                                    <div class="form-check form-check-inline">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input" name="notifiable" value="1">
                                                                            Not Notifiable
                                                                        </label>
                                                                    </div>

                                                                    

                                                                    
                                                                  
                                                                </div>
                                                            </div>


                                                      
                                                        <?php }else{ ?>
                                                             <div class="col-sm-6">
                                                               <div class="form-group mb-3 mb-md-2">
                                                                    <label class="d-block font-weight-semibold">Disease Status </label>
                                                                    <div class="form-check form-check-inline">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input" name="notifiable" value="0" >
                                                                            Notifiable
                                                                        </label>
                                                                    </div>

                                                                    <div class="form-check form-check-inline">
                                                                        <label class="form-check-label">
                                                                            <input type="radio" class="form-check-input" name="notifiable" value="1" checked>
                                                                            Not Notifiable
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        <?php } ?>

                                                </div>
                                              
                                         </div>
                                         <br>
                                        <div class="text-center">
                                            <button type="submit" class="btn bg-primary" name="btn_update_slh_disease">Save Changes</button>
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                        </div>
                                        <br>
                                    </div>
                                </form>
                                </div>
                            </div>
            </tr>
    <?php
    
    if(isset($_POST['btn_update_slh_disease']))
    {
        $disease_code = mysqli_real_escape_string($con, $_POST['disease_code']);
        $disease_description = mysqli_real_escape_string($con, $_POST['disease_description']);
        $disease_kind_of_species = mysqli_real_escape_string($con, $_POST['disease_kind_of_species']);
        $disease_kind_of_meat = mysqli_real_escape_string($con, $_POST['disease_kind_of_meat']);
        $notifiable = mysqli_real_escape_string($con, $_POST['notifiable']);
        $disease_id = mysqli_real_escape_string($con, $_POST['disease_id']);
        
        
        $sql = mysqli_query($con, "UPDATE disease_tbl SET disease_code='$disease_code',  disease_species= '$disease_kind_of_species',disease_kind_of_meat='$disease_kind_of_meat', disease_description='$disease_description',
        disease_notifiable='$notifiable',
        disease_level='Critical' WHERE d_id ='$disease_id'");


            ?>
            <script type="text/javascript">
                window.location = "antemortem_slh.php";
            </script>
            <?php
    }

    if(isset($_POST['btn_delete_slh_disease']))
    {
        $d_id = mysqli_real_escape_string($con, $_POST['d_id']);
        
        
        $sql = mysqli_query($con, "DELETE FROM disease_tbl WHERE d_id ='$d_id'");

            ?>
            <script type="text/javascript">
                window.location = "antemortem_slh.php";
            </script>
            <?php
    }


}
