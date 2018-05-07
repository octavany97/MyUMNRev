<?php 
	require_once( '../includes/url.php');

	if( isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['password']) && !empty($_GET['password']) )
	{
	    $email = $dbConn->escape_string($_GET['email']); 
	    $password = $dbConn->escape_string($_GET['password']); 

	    // Make sure user email with matching hash exist
	    $result = $dbConn->query("SELECT * FROM users WHERE email='$email' AND password='$password'");

	    if ( $result->num_rows == 0 )
	    { 
	        die();
	    }
	}
	else {
		die();
	}	

	if ($_SERVER['REQUEST_METHOD'] == 'POST') 
      {
          if (isset($_POST['changepassword'])) { //user logging in

              require '../controller/updatepassword.php';
              
          }
      }
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->
    <link rel="stylesheet" type="text/css" href="../../main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<body>
	<div class="row modal fade" id="modalChangePassword" tabindex="-1" role="dialog" aria-labelldeby = "myModalLabel" aria-hidden="true">
	    <div class="login">
	      <div class="login-triangle"></div>
	      
	      <h2 class="login-header">Change Password</h2>

	      <form class="login-container" method="POST" role="form">
	        <p><input type="password" name='newpassword' placeholder="New Password"></p>
			<p><input type="password" name='confirmpassword' placeholder="Confirm Password"></p>
			<input type="hidden" name="email" value="<?= $email ?>">
         	<input type="hidden" name="hash" value="<?= $password ?>"> 
	        <p><input type="submit" name="changepassword" value="Change Password"></p>
	      </form>
	    </div>
	</div>
</body>
<!-- script -->
 <script>
	$(document).ready(function(){
	    $("#modalChangePassword").modal("show");
	});
// </script>
</html>