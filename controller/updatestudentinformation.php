<?php
    include('../includes/url.php');
    if (isset($_POST['save'])) {
        $infoId = $_POST['info'];
        $noTelp = $_POST['noTelp'];
        $domisili = $_POST['domisili'];

        $dbConn->begin_transaction();
        $sql = 'UPDATE infouser SET noTelp = "' . $noTelp . '" WHERE infoID = ' . $infoId;
        if ($dbConn->query($sql)) {
            $sql2 = 'UPDATE infouser SET domisili = "' . $domisili . '" WHERE infoID = ' . $infoId;
            if ($dbConn->query($sql2)) {
                $dbConn->commit();
                echo 'SUCCESS';
            } else {
                $dbConn->rollback();
                echo 'FAILED';
            }
        } else {
            $dbConn->rollback();
            echo 'FAILED';
        }
    }
?>