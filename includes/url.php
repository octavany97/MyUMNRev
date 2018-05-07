<?php
	define('BASE_URL','http://localhost/uaspti/');
	$url1=$_SERVER['REQUEST_URI'];
	header("Refresh: 3600; URL=$url1");

	$username = "root";
	$pass = "";
	$host = "localhost";
	$db_name = "civao";

	$dbConn = mysqli_connect($host, $username, $pass, $db_name);
	session_start();
	//$_SESSION['login'] = 0;
?>