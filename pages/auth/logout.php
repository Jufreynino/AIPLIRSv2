<?php
    session_start(); //to ensure you are using same session
    session_destroy(); //destroy the session
    unset($_SESSION['employee_id']);
    header("location: ../../pages/auth/index.php"); //to redirect back to "index.php" after logging out


?>