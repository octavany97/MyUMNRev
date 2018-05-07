<?php
include("../includes/url.php");

$query = "SELECT k.kelasID AS kelasID, m.kodeMatkul AS kodeMatkul, m.namaMatkul AS namaMatkul, k.kodeKelas AS kodeKelas, k.hari AS hari, concat(TIME_FORMAT(jamMulai, '%H:%i'), ' - ', TIME_FORMAT(jamSelesai, '%H:%i')) AS jam, k.ruangKelas AS ruangKelas, k.kapasitas AS kapasitas, k.available AS available
          FROM MataKuliah m, Kelas k
          WHERE m.matkulID = k.matkulID
          AND (SUBSTR(m.kodeMatkul, 1, 2) = 'IF'
          OR SUBSTR(m.kodeMatkul, 1, 2) = 'CE'
          OR SUBSTR(m.kodeMatkul, 1, 2) = 'IS'
          OR SUBSTR(m.kodeMatkul, 1, 2) = 'UM'
          )
          ORDER BY 1, 3";
$res = $dbConn->query($query);
$i = 0;
$result = [];
while($row = $res->fetch_assoc()){
  $result[$i] = $row;
  $i++;
}

echo json_encode($result);
?>