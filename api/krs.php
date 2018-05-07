<?php
	$servername = "localhost";
    $username = "root";
    $server_password = "";
    $dbname = "civao";
    $dbConn = new mysqli($servername, $username, $server_password, $dbname);

    $nim = $_POST['nim'];

    $query = "SELECT k.kelasID AS kelasID, m.kodeMatkul AS kodeMatkul, m.namaMatkul AS namaMatkul, k.kodeKelas AS kodeKelas, k.hari AS hari, concat(jamMulai, ':00 - ', jamSelesai, ':00') AS jam, k.ruangKelas AS ruangKelas, k.kapasitas AS kapasitas
	    FROM MataKuliah m, Kelas k, Users u, InfoUser i
	    WHERE m.matkulID = k.matkulID AND 
	    AND SUBSTR(m.kodeMatkul, 1, 2) = 'IF'
	    ORDER BY 1, 3";

    $res = $dbConn->query($query);
    $krs = mysqli_fetch_array($res);
    echo json_encode($krs);
?>