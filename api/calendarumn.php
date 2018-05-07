<?php
	$servername = "localhost";
    $username = "root";
    $server_password = "";
    $dbname = "civao";
    $dbConn = new mysqli($servername, $username, $server_password, $dbname);
    //session_start();
	//$row = mysql_fetch_assoc($result);

	$query1 = "SELECT eventID, tanggalMulai, tanggalSelesai, flag, keterangan FROM event WHERE tanggalSelesai IS NOT NULL AND tanggalMulai IS NOT NULL AND keterangan IS NOT NULL";

	$res    = $dbConn->query($query1);
	$row    = $res->num_rows;
	if($res->num_rows > 0){
		 $outp = "[";

		while($rs1 = $res->fetch_assoc()) {
		   if ($outp != "[") {$outp .= ",";}
		   $outp .= '{"title":"'  . $rs1['keterangan'] . '",';
		   $outp .= '"id":' . $rs1['eventID'] . ',';
		   $outp .= '"flag":' . $rs1['flag'] . ',';
		   $outp .= '"start":"'  . $rs1['tanggalMulai'] . '",';
		   $outp .= '"end":"'  . $rs1['tanggalSelesai'] . '"}';
		}
		$outp .= "]";
		echo $outp;	
		
	}
?>