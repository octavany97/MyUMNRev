<?php
	$servername = "localhost";
    $username = "root";
    $server_password = "";
    $dbname = "civao";
    $dbConn = new mysqli($servername, $username, $server_password, $dbname);
    //session_start();
	//$row = mysql_fetch_assoc($result);
	$nim = $_POST["nim"];
	$term = 'SGL1718';

	if($nim != ""){
		$query1 = "SELECT k.kelasID AS ki, u.userID AS userid FROM users u, InfoUser i, krs k, kelas kls WHERE i.nim = '$nim' AND i.infoID = u.infoID AND u.userID = k.userID AND k.userID = u.userID AND k.kelasID = kls.kelasID AND k.term='$term' ORDER BY CASE
	          WHEN kls.hari = 'Sunday' THEN 1
	          WHEN kls.hari = 'Monday' THEN 2
	          WHEN kls.hari = 'Tuesday' THEN 3
	          WHEN kls.hari = 'Wednesday' THEN 4
	          WHEN kls.hari = 'Thursday' THEN 5
	          WHEN kls.hari = 'Friday' THEN 6
	          WHEN kls.hari = 'Saturday' THEN 7
     		END ASC";

		$res    = $dbConn->query($query1);
		$row = $res->num_rows;
		if($res->num_rows > 0){
			 $outp = "[";

			while($rs = $res->fetch_assoc()) {
			   $sql = "SELECT k.kodeKelas AS kk, k.ruangKelas AS rk, k.hari AS h, k.jamMulai AS jm, k.jamSelesai AS js, m.kodeMatkul AS km, m.namaMatkul AS nm , IFNULL((SELECT CONCAT(i.namaDepan, ' ', i.namaBelakang)  
                                   FROM InfoUser i, Users u, Kelas k  
                                   WHERE i.infoID = u.infoID 
                                   AND u.userID = k.dosenID 
                                   AND k.kelasID = ". $rs['ki'] . "), 'n/a') 'namaDosen' 
				FROM kelas k, matakuliah m 
				WHERE k.kelasID = " . $rs['ki'] . "
				AND k.matkulID = m.matkulID";
			   
			   $res1 = $dbConn->query($sql);
			   
			   $rs1 = mysqli_fetch_array($res1);
			   //date_default_timezone_set('Asia/Jakarta');
			   //hari ini
			   $hariIni = date('l');
			   //yg ada di db
			   $namaHari = $rs1['h'];
			   
			   if($namaHari != ''){
			   		$dayList = array(
						'Sunday' => 6,
						'Monday' => 0,
						'Tuesday' => 1,
						'Wednesday' => 2,
						'Thursday' => 3,
						'Friday' => 4,
						'Saturday' => 5
				   );
				   //untuk tanggal hari ini
	   			   $urutan1 = $dayList[$hariIni];
	   			   
	   			   //untuk tanggal yang ada di db
	   			   $urutan2 = $dayList[$namaHari];
	   			   // kalo minus berarti tgl di db lebih kecil, kalo plus berarti tgl di db lebih besar
	   			   $urutan  = $urutan2-$urutan1;
	   			   
	   			   if($urutan < 0){
	   			   	 $dt = strtotime("last ".$namaHari);
	   			   	 $date = date("j-m-Y-D", $dt);
	   			   }
	   			   else if($urutan > 0){
	   			   	 $dt = strtotime("next ".$namaHari);
	   			   	 $date = date("j-m-Y-D", $dt);
	   			   }
	   			   else{
	   			   	 $date = date('j-m-Y-D');
	   			   	 
	   			   }
	   			   $explodeDate = explode('-',$date);
	   			   
	   			   
				   //$diff = date_diff();
				   //date_sub($date,date_interval_create_from_date_string("'$urutan' days"));
				   //echo $date;
			   	   $week= $explodeDate[3];
				   $d   = $explodeDate[0];
				   $m   = $explodeDate[1]-1;
				   $y   = $explodeDate[2];  

				   $explodeStart = explode(':',$rs1['jm']);
				   $st =  intval($explodeStart[0]);

				   $explodeEnd = explode(':', $rs1['js']);
				   $en = intval($explodeEnd[0]);

				   if ($outp != "[") {$outp .= ",";}
				   $outp .= '{"title":"'  . $rs1['km'] . " " . $rs1['nm'] . " - " . $rs1['kk']  . '",';
				   $outp .= '"namaDosen":"' . $rs1['namaDosen'] . '",';
				   $outp .= '"ruangKelas":"' . $rs1['rk'] . '",';
				   $outp .= '"y":' . $y . ',';
				   $outp .= '"m":' . $m . ',';
				   $outp .= '"d":' . $d . ',';
				   $outp .= '"jamMulai":' . $st . ',';
				   $outp .= '"jamSelesai":' . $en . '}';
			   }
			}
			$outp .= "]";
			echo $outp;	
   			   
		}
	}
?>