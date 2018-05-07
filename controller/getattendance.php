<?php
    if (isset($_GET['id'])) {
        include('../includes/url.php');

        $id = $_GET['id'];
        $result = array(
            "terms" => array()
        );
        $sql1 = "SELECT DISTINCT term from krs WHERE userID = " . $id;
        $krs = $dbConn->query($sql1)->fetch_all();
        foreach($krs as $val) {
            $result['terms'][] = $val[0];
            $sql2 = "SELECT mk.namamatkul, krs.krsID
                    FROM krs, kelas k, matakuliah mk
                    WHERE krs.UserID = " . $id . "
                    AND k.matkulID = mk.matkulID
                    AND krs.kelasID = k.kelasID
                    AND krs.term = '" . $val[0] . "';";
            $matkul = $dbConn->query($sql2)->fetch_all();
            $result['terms']['matkul'] = array();
            
            foreach($matkul as $val2) {
                $result['terms']['matkul'][] = $matkul;
                $sql3 = "SELECT krs.week1, krs.week2, krs.week3, krs.week4, krs.week5, krs.week6, krs.week7, krs.week8, krs.week9, krs.week10, krs.week11, krs.week12, krs.week13, krs.week14
                        FROM krs, kelas k, matakuliah mk
                        WHERE krs.UserID = " . $id . "
                        AND k.matkulID = mk.matkulID
                        AND krs.kelasID = k.kelasID AND krs.krsID = " . $val2[1] . ";";
                $attendance = $dbConn->query($sql3)->fetch_all();
                
                $result[$val[0]][$val2[1]] = $attendance;
            }
        }        
        
        echo json_encode($result);
    }
?>