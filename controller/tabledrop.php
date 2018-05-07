<?php
include("../includes/url.php");


$userID = $_SESSION['userID'];

$query = "SELECT mk.namaMatkul, k.kodeKelas, k.hari, concat(TIME_FORMAT(k.jamMulai, '%H:%i'), ' - ', TIME_FORMAT(k.jamSelesai, '%H:%i')) AS jam 
          FROM MataKuliah mk, Kelas k, KRS r 
          WHERE mk.matkulID = k.matkulID 
          AND k.kelasID = r.kelasID 
          AND r.userID = ".$userID."
          AND r.term = 'SGL1718'";
$res = $dbConn->query($query);
$i = 0;
$result = [];
while($row = $res->fetch_assoc()){
  $result[$i] = $row;
  $i++;
}

echo json_encode($result);
?>