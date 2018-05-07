<?php  
	include("../includes/url.php");

	if($dbConn->connect_error) die("Connection failed: ".$dbConn->connect_error);
	$data = json_decode(file_get_contents("php://input"));

	$status = [];
	for($i = 0; $i < count($data) ; $i++){
		// '".$data[]."'
		$userID = $_SESSION['userID'];
		$semester = "SGL1718";
		$subject = $data[$i]->subject;
		$section = $data[$i]->section;
		$day = $data[$i]->day;

		$queryCekAvailable = "SELECT k.available  
				FROM Kelas k, MataKuliah mk 
				WHERE k.matkulID = mk.matkulID  
				AND mk.namaMatkul = '".$subject."' 
				AND k.kodeKelas = '".$section."'";

		$queryCekPraktek = 
			"SELECT mk.praktikum
			FROM MataKuliah mk
			WHERE mk.namaMatkul = '".$subject."'";

		$queryCekJamMulai = "SELECT count(k.jamMulai)
                FROM Kelas k, KRS r
                WHERE r.kelasID = k.kelasID 
                AND r.userID = ".$userID." 
                AND r.term = '".$semester."'
                AND k.hari = '".$day."'";

        $queryCekJamSelesai = "SELECT count(k.jamSelesai)
                FROM Kelas k, KRS r
                WHERE r.kelasID = k.kelasID 
                AND r.userID = ".$userID." 
                AND r.term = '".$semester."'
                AND k.hari = '".$day."'";

		$queryKelasID = 
			"SELECT k.kelasID 
			FROM Kelas k, MataKuliah mk 
			WHERE k.matkulID = mk.matkulID 
			AND mk.namaMatkul = '".$subject."' 
			AND k.kodeKelas = '".$section."'";

		$kelasID = mysqli_fetch_row($dbConn->query($queryKelasID));
		$kelasID = $kelasID[0];

		$queryMatkul = "SELECT count(*)
			FROM MataKuliah mk, Kelas k, KRS r 
			WHERE k.matkulID = mk.matkulID 
			AND mk.namaMatkul = '".$subject."' 
			AND r.kelasID = k.kelasID
			AND r.userID = ".$userID."";

		$queryMulai = 
			"SELECT count(k.jamSelesai)
			FROM Kelas k, MataKuliah mk, KRS r, Kelas k2
			WHERE k.matkulID = mk.matkulID
			AND mk.namaMatkul = '".$subject."' 
			AND k.kodeKelas = '".$section."' 			
			AND r.kelasID = k2.kelasID
			AND r.term = '".$semester."' 
			AND k2.hari = '".$day."' 
			AND r.userID = ".$userID." 
			AND k.jamSelesai <= k2.jamMulai";

		$querySelesai = 
			"SELECT count(k.jamMulai)
			FROM Kelas k, MataKuliah mk, KRS r, Kelas k2
			WHERE k.matkulID = mk.matkulID
			AND mk.namaMatkul = '".$subject."' 
			AND k.kodeKelas = '".$section."' 			
			AND r.kelasID = k2.kelasID
			AND r.term = '".$semester."' 
			AND k2.hari = '".$day."' 
			AND r.userID = ".$userID." 
			AND k.jamMulai >= k2.jamSelesai";

		$queryInsert = "INSERT INTO KRS(term, userID, kelasID)
			values('".$semester."', ".$userID.", ".$kelasID.")";

		$kelasID2 = $kelasID - 1;
		$queryInsert2 = "INSERT INTO KRS(term, userID, kelasID)
			values('".$semester."', ".$userID.", ".$kelasID2.")";

		$queryPenguranganKursi = "
			UPDATE Kelas
			SET available = available - 1
			WHERE kelasID = ".$kelasID."";

		$queryPenguranganKursi2 = "
			UPDATE Kelas
			SET available = available - 1
			WHERE kelasID = ".$kelasID2."";
		

		$resultCekAvailable = mysqli_fetch_row( $dbConn->query($queryCekAvailable));
		$resultCekJamMulai = mysqli_fetch_row( $dbConn->query($queryCekJamMulai));
		$resultCekJamSelesai = mysqli_fetch_row($dbConn->query($queryCekJamSelesai));
		$resultMatkul = mysqli_fetch_row($dbConn->query($queryMatkul));
		$resultMulai = mysqli_fetch_row($dbConn->query($queryMulai));
		$resultSelesai = mysqli_fetch_row($dbConn->query($querySelesai));
		$resultCekPraktek = mysqli_fetch_row($dbConn->query($queryCekPraktek));


		if($resultCekAvailable[0] != 0){
			if ($resultMatkul[0] == 0 || $resultCekPraktek[0] == 1){	
				if($resultMulai[0] == $resultCekJamMulai[0] || $resultSelesai[0] == $resultCekJamSelesai[0]){
					if($resultMatkul[0] == 0){
						$dbConn->query($queryInsert);
						$dbConn->query($queryPenguranganKursi);
						$status[$i] = 1;
					}
					else if($resultMatkul[0] == 1){
						if($status[$i-1] == 1){
						$dbConn->query($queryInsert);
						$dbConn->query($queryPenguranganKursi);
						$status[$i] = 1;
						}
						else
							$status[$i] = 0;
					}
					else
						$status[$i] = 0;
					// echo "success!!!";
				} else {
					// echo "fail:(";
					$status[$i] = 0;
				}
			} else {
				// echo "fail:(";
				$status[$i] = 0;
			}
		} else {
			// echo "fail:(";
			$status[$i] = 0;
		}
	}
	echo json_encode($status);
 ?>
