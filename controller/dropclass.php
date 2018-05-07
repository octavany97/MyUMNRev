<?php  
	include("../includes/url.php");

	if($dbConn->connect_error) die("Connection failed: ".$dbConn->connect_error);
	$data = json_decode(file_get_contents("php://input"));

	for($i = 0; $i < count($data) ; $i++){
		$userID = $_SESSION['userID'];
		$semester = "SGL1718";
		$subject = $data[$i]->subject;
		$section = $data[$i]->section;

		$queryKelasID = 
			"SELECT k.kelasID 
			FROM Kelas k, MataKuliah mk 
			WHERE k.matkulID = mk.matkulID 
			AND mk.namaMatkul = '".$subject."' 
			AND k.kodeKelas = '".$section."'";

		$kelasID = mysqli_fetch_row($dbConn->query($queryKelasID));
		$kelasID = $kelasID[0];

		$querykrsID = "SELECT r.krsID 
		    FROM KRS r, Kelas k, MataKuliah mk 
		    WHERE mk.matkulID = k.matkulID 
		    AND k.kelasID = r.kelasID 
		    AND r.userID = ".$userID."
		    AND mk.namaMatkul = '".$subject."'
		    AND k.kodeKelas = '".$section."'";

		$krsID = mysqli_fetch_row($dbConn->query($querykrsID));
		$krsID = $krsID[0];

		$queryDeleteKrs = "DELETE FROM KRS 
			WHERE krsID = ".$krsID."";

		$queryPenambahanKursi = "
			UPDATE Kelas
			SET available = available + 1
			WHERE kelasID = ".$kelasID."";

		$dbConn->query($queryDeleteKrs);
		$dbConn->query($queryPenambahanKursi);

	}
 ?>