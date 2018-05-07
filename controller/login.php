<?php
	if(isset($_POST['login'])){
		$email = filter_var($_POST['email'],FILTER_SANITIZE_STRING);
		$pass  = filter_var($_POST['password'],FILTER_SANITIZE_STRING);

		if($dbConn->connect_error) die("Connection failed: ".$dbConn->connect_error);

		$hash = sha1($pass);
		$query = "SELECT u.userID AS userID, i.nim AS nimUser, u.privilege AS privilege FROM users u, infouser i WHERE i.infoID = u.infoID AND u.email='".$email."' AND u.password='".$hash."'";
		$res = $dbConn->query($query);
		echo $query;
		$users = mysqli_fetch_array($res);

		if($res->num_rows == 1){
			$_SESSION['login'] = 1;
			$_SESSION['email'] = $email;
			$_SESSION['userID'] = $users['userID'];
			$_SESSION['nim'] = $users['nimUser'];
			$_SESSION['priv'] = $users['privilege'];
			header("Location: ".BASE_URL."jadwal");
			//include "main.html";
		}
		else header("Location: ".BASE_URL."login");
	}
?>