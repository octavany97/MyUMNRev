<?php
	$servername = "localhost";
    $username = "root";
    $server_password = "";
    $dbname = "civao";
    $dbConn = new mysqli($servername, $username, $server_password, $dbname);

    $idStudent = $_POST["id"];

    // $query1 = "SELECT SUM((CASE WHEN n.grade = 'A' THEN 4
    //                        WHEN n.grade = 'A-' THEN 3.7
    //                        WHEN n.grade = 'B+' THEN 3.3
    //                        WHEN n.grade = 'B' THEN 3
    //                        WHEN n.grade = 'B-' THEN 2.7
    //                        WHEN n.grade = 'C+' THEN 2.3
    //                        WHEN n.grade = 'C' THEN 2
    //                        WHEN n.grade = 'D' THEN 1
    //                        WHEN n.grade = 'E' THEN 0
    //                        WHEN n.grade = 'F' THEN 0 END) * m.sks) / SUM(m.sks) AS gpa
    //            FROM nilai n, matakuliah m, kelas k
    //            WHERE k.matkulID = m.matkulID AND k.kelasID = n.kelasID AND n.userID=".$_POST['id']."
    //            GROUP BY n.userID";

    $query1 = "SELECT SUM((CASE WHEN n.grade = 'A' THEN 4
                           WHEN n.grade = 'A-' THEN 3.7
                           WHEN n.grade = 'B+' THEN 3.3
                           WHEN n.grade = 'B' THEN 3
                           WHEN n.grade = 'B-' THEN 2.7
                           WHEN n.grade = 'C+' THEN 2.3
                           WHEN n.grade = 'C' THEN 2
                           WHEN n.grade = 'D' THEN 1
                           WHEN n.grade = 'E' THEN 0
                           WHEN n.grade = 'F' THEN 0 END) * m.sks) / SUM(m.sks) AS gpa
               FROM nilai n, matakuliah m, kelas k
               WHERE k.matkulID = m.matkulID AND k.kelasID = n.kelasID AND n.userID=29
               GROUP BY n.userID";

	$res    = $dbConn->query($query1);
	$row    = $res->num_rows;
	$flag   = false;
	if($res->num_rows > 0){
		$outp = "[";

		while($rs1 = $res->fetch_assoc()) {
		   if ($outp != "[") {$outp .= ",";}
		   // $rs1['gpa']
		   $outp .= '{"label":"GPA", "value":'. $rs1['gpa'] . '}';
		   if($rs1['gpa'] == 4.0){
		   	 $flag = true;
		   	
		   }
		   else{
		   	$gpa = $rs1['gpa'];
		   }
		}
		if($flag == false){
			$outp .= ',{"label":"","value":' . floatval(4-$gpa) . '}';
		}
		$outp .= "]";
		echo $outp;
	}	

?>