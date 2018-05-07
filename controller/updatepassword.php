<?php
    if($_SERVER['REQUEST_METHOD'] == 'POST'){ 
        if($_POST['newpassword'] == $_POST['confirmpassword']){ 
            $new_password = $_POST['newpassword'];
            $hash = sha1($new_password);
            $email = $dbConn->escape_string($_POST['email']);
            $password = $dbConn->escape_string($_POST['password']);
            
            $sql = "UPDATE users SET password='$hash' WHERE email='$email'";

            if($dbConn->query($sql)) header("Location: ../../login");
        }
        else{
            //jika password tidak match
        }
    }
?>