<div class="panel panel-default col-md-12" style = "z-index = 1;">
    <div class="panel-heading">                                
        <h3 class="panel-title">KRS</h3>                             
    </div>
    <div class="panel-body">
        <table class="table datatable">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Subject</th>
                    <th>Section</th>
                    <th>Day</th>
                    <th>Time</th>
                    <th>Room</th>
                    <th>Available</th>
                    <th>Cap</th>
                    <th>Enroll</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $query = "SELECT k.kelasID AS kelasID, m.kodeMatkul AS kodeMatkul, m.namaMatkul AS namaMatkul, k.kodeKelas AS kodeKelas, k.hari AS hari, concat(jamMulai, ':00 - ', jamSelesai, ':00') AS jam, k.ruangKelas AS ruangKelas, k.kapasitas AS kapasitas
                        FROM MataKuliah m, Kelas k
                        WHERE m.matkulID = k.matkulID
                        AND SUBSTR(m.kodeMatkul, 1, 2) = 'IF'
                        ORDER BY 1, 3";
                    $res = $dbConn->query($query);

                    while($row = $res->fetch_assoc()){
                        //$query = "SELECT kodeMatkul, namaMatkul, semester, praktikum FROM matakuliah WHERE kodeMatkul='".$row['kodeMatkul']."'";
                        //$res2 = $dbConn->query($query);
                        //$matkul = mysqli_fetch_array($res2);
                        $available[$row['kelasID']] = $row['kapasitas'];
                ?>
                        <tr class = "krsinfo">
                            <td id = "kode"><?php echo $row['kodeMatkul'];?></td>
                            <td id = "subject"><?php echo $row['namaMatkul'];?></td>
                            <td id = "section"><?php echo $row['kodeKelas'];?></td>
                            <td id = "day"><?php echo $row['hari'];?></td>
                            <td id = "time"><?php echo $row['jam'];?></td>
                            <td id = "room"><?php echo $row['ruangKelas'];?></td>
                            <td id = "available"><?php echo $available[$row['kelasID']];?></td>
                            <td id = "cap"><?php echo $row['kapasitas'];?></td>
                            <td><button type="button" class="btn btn-primary btn-xs btn-add btnAdd" ng-click = "refresh()">ADD</button></td>
                        </tr>
                <?php
                    }
                ?>
            </tbody>
        </table>
    </div>
</div>