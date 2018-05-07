<?php  
	include("../includes/url.php");

	if($dbConn->connect_error) die("Connection failed: ".$dbConn->connect_error);
  
	$query = "SELECT * FROM users WHERE email='".$_SESSION['email']."'";

	$res = $dbConn->query($query);
	$users = mysqli_fetch_array($res);

	// vio edit (tambahin email dr tabel users)
	$infoID = $users['infoID'];
	$query = "SELECT infouser.*, users.email 
			FROM infouser, users 
			WHERE users.infoID = infouser.infoID 
			AND users.infoID='".$infoID."'";
	$res = $dbConn->query($query);
	
	$users1 = mysqli_fetch_array($res);
	$nama = $users1['namaDepan'].' '.$users1['namaBelakang'];
	$nim = $users1['nim'];
	$users1['tanggalLahir'] = date('F jS  Y', strtotime($users1['tanggalLahir'])); // vio edit (ubah date format dr database)

	$output = '{"nama" : "'.$nama.'", "nim" : "'.$nim.'""}'; //{"nama" : "Christopher Reinaldo", "nim" : "00000010755"}
	
	echo json_encode($users1);
 ?>