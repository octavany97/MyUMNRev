<?php 
	include("../includes/url.php");
   	$email = $dbConn->escape_string(file_get_contents("php://input"));
    $result = $dbConn->query("SELECT * FROM users WHERE email='$email'");

    if($result->num_rows == 0){
    }
    else{
		require '../includes/class.phpmailer.php';
		require '../includes/class.pop3.php';
		require '../includes/class.smtp.php';

	    $user = $result->fetch_assoc();
	    $email = $user['email'];
	    $password = $user['password'];
	    $infoID = $user['infoID'];
	    
	    $result1 = $dbConn->query("SELECT * FROM infouser WHERE infoID='$infoID'");
	    $user1 = $result1->fetch_assoc();
	    $first_name = $user1['namaDepan'];
		$to = $email;

	    $mail = new PHPMailer();
	    $mail->IsSMTP(); 
	    $mail->SMTPDebug = 2; //1 = errors and messages, 2 = messages only
	    $mail->SMTPAuth = true; 
	    $mail->SMTPSecure = 'ssl'; //untuk gmail
	    $mail->Host = "smtp.gmail.com";
	    $mail->Port = 465; //atau 587
	    $mail->IsHTML(true);
	    $mail->SetFrom("dev.civao@gmail.com");
	    $mail->Password = "civao123";
	    $mail->Username = "dev.civao@gmail.com";
	      
	    $mail->FromName = "CIVAO ADMIN";
	    $mail->AddAddress($to);
	    $mail->wordwrap = 100;
	      
	    $mail->Subject = "Password Reset Link (CIVAO TEAM)";
	    $mail->Body = "Hello $first_name,

	    You have requested password reset on My UMN!

	    Please click this link if you want to change password immediately:

	    http://localhost/changepassword/$email/$password";

	    if($mail->Send()) echo "Reset link has been sent to your email.";
	}
?>