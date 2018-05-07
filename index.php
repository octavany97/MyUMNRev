<?php
  	require_once('includes/url.php');

  	if(isset($_GET['page']) && $_GET['page'] != 'login' && $_GET['page'] != 'changepassword' && $_GET['page'] != 'logout') include 'view/include/header.php';

	//echo $_GET['page']." ".$_GET['email']." ".$_GET['password'];
	
	switch($_GET['page']){
		case 'login':
		  	if(!isset($_SESSION['login'])){
				if(!isset($_POST["login"])) include 'view/login.php';
				else include 'controller/login.php';  
			}
		  	else if($_SESSION['login'] == 1){
				header("Location: ".BASE_URL."jadwal");
				include 'view/main4.php';
		  	}
		  	break;
		
		case 'jadwal':
		  	if($_SESSION['login'] == 1){
				include 'view/main4.php';
				//header("Location: ".BASE_URL."jadwal");
		  	}
		  	else include 'view/login.php';
		  	break;
		
		case 'main':
		  	if(!isset($_POST["submit"])) include 'view/main4.php';
		  	else include 'controller/main.php';
		  	break;
		
		case 'changepassword':
		  	include 'view/changepassword.php';
		  	break;
		
		case 'logout':
			include 'controller/logout.php';
			//session_unset("login");
			//header("Location: ".BASE_URL."login");
			break;

		case 'krs':
		 	include 'view/krs.php';
		  	break;
		
	}

  	if(isset($_GET['page']) && $_GET['page'] != 'login' && $_GET['page'] != 'changepassword' && $_GET['page'] != 'logout') include 'view/include/footer.php';
?>