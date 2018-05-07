
    <!--Main layout-->
    <main ng-init="pageShow = true"  ng-controller = "shoppingCartController">
        <div class="container-fluid text-center">
          <div ng-show = "isHomeSelected()">
            <div role="main">
                <div class="row">
                   <section id="directives-calendar">
                      <div class="page-header">
                          <h1>Calendar UMN</h1>
                      </div>
                      <div class="calendarBackground" ng-controller="calendarController">
                          <div class="row-fluid">
                              <!-- <div class="span4">
                                  <div class="btn-group calTools">
                                    <button class="btn" ng-click="addRemoveEventSource(eventSources,eventSource)">
                                      Toggle Source
                                    </button>
                                    <button type="button" class="btn btn-primary" ng-click="addEvent()">
                                      Add Event
                                    </button>
                                  </div>

                                  <ul class="unstyled">
                                      <li ng-repeat="e in events">
                                          <div class="alert alert-info">
                                              <a class="close" ng-click="remove($index)"><i class="glyphicon glyphicon-remove"></i></a>
                                              <b> <input ng-model="e.title"></b> 
                                              <!-- OCTA UBAH DISINI BAGIAN DATE FILTERNYA MUNCULIN JAM -->
          
                                              
             <!--                              </div>
                                      </li>
                                  </ul>

                              </div> -->

                              <div class="span12">
                                  <!-- <tabset> -->
                                      <!-- <tab select="renderCalendar('myCalendar1');"> -->
                                        <div id="alert" class="alert-success calAlert span12" ng-show="alertMessage1 != undefined && alertMessage1 != '' && alertMessage2 != undefined && alertMessage2 != '' && alertMessage3 != undefined && alertMessage3 != ''">
                                          <h4>{{alertMessage1}}</h4>
                                          <h4>{{alertMessage2}}</h4>
                                          <h4>{{alertMessage3}}</h4>
                                        </div>
                                        
                                      <div id="calendar" class="span11 calendar" calendar="myCalendar1" ng-model="eventSources" ui-calendar="uiConfig.calendar"></div>
                                     <!-- </tab> -->

                                  <!-- </tabset> -->
                              </div>
                          </div>
                      </div>
                      
                  </section> 
                  
              </div>
            </div>
          </div>
          <div ng-show = "isScheduleSelected()">
            <!-- CONTENT UNTUK SCHEDULE -->
               
          </div>
          <div ng-show = "isKRSSelected()">
            <div class="row">
              <div class="span1">
                <i class="fa fa-shopping-cart" 
                ng-init = "myStyle = {'font-size': '60px', 'color':'lightblue', 'text-shadow':'2px 2px 4px #000000', 'z-index' : '2', 'position' : 'relative', 'right':'0'}" 
                ng-style="myStyle" 
                ng-mouseover = "myStyle = {'font-size': '60px', 'color':'lightgreen', 'text-shadow':'2px 2px 4px #000000', 'z-index' : '2', 'position' : 'relative', 'right':'0'}"
                ng-mouseleave = "myStyle = {'font-size': '60px', 'color':'lightblue', 'text-shadow':'2px 2px 4px #000000', 'z-index' : '2', 'position' : 'relative', 'right':'0'}"
                data-toggle="modal" 
                data-target="#modalShoppingCart"
                ></i>
              </div>
              <!-- CONTENT UNTUK KRS -->
              <div class="span11">
                <div class="panel panel-default" style = "z-index: 1;">
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
                                          <td><button type="button" class="btn btn-primary btn-xs btn-add btnAdd" ng-click = "addCart($event)">ADD</button></td>
                                      </tr>
                              <?php
                                  }
                              ?>
                          </tbody>
                      </table>
                  </div>
              </div>
              </div>
              
            </div>       
          </div>
          <div ng-show = "isMyInformationSelected()">
                    <!-- CONTENT UNTUK My Information -->
                    HOHO
          </div>
          <div ng-show = "isMyGradesSelected()">
                    <!-- CONTENT UNTUK My Grades -->
                    HEHE
          </div>
          <div ng-show = "isMyAttendanceSelected()">
                    <!-- CONTENT UNTUK My Attendance -->
          </div>
        <!-- /#page-content-wrapper -->
        </div>
        
        <script>
          var userID = <?php  echo $_SESSION['userID'] ?>;
          var nim = <?php echo $_SESSION['nim'] ?>;
          var privilege = <?php echo $_SESSION['priv'] ?>;
        </script>
        <!-- shoppingcart modal -->
        <div class="modal fade" id="modalShoppingCart" role="dialog">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Shopping Cart</h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <td style = "text-align: center">
                        Subject
                      </td>
                      <td style = "text-align: center">
                        Section
                      </td>
                      <td style = "text-align: center">
                        Day
                      </td>
                      <td style = "text-align: center">
                        Time
                      </td>
                    </tr>
                  </thead>
                  <tbody id = "tableShoppingCartBody" ng-repeat = "cart in cartlist track by $index">
                    <tr>
                      <td style = "text-align: center">
                        {{cart.subject}}
                      </td>
                      <td style = "text-align: center">
                        {{cart.section}}
                      </td>
                      <td style = "text-align: center">
                        {{cart.day}}
                      </td>
                      <td style = "text-align: center">
                        {{cart.time}}
                      </td>
                      <td>
                        <i class="fa fa-minus-circle" ng-click = "delete(cart)"
                          ng-init = "myStyle = {'font-size': '25px', 'color':'red'}" 
                          ng-style="myStyle" 
                          ng-mouseover = "myStyle = {'font-size': '25px', 'color':'green', 'text-shadow':'.25px .25px .25px #000000'}"
                          ng-mouseleave = "myStyle = {'font-size': '25px', 'color':'red'}"
                        ></i>
                      </td>
                    </tr>
                  </tbody>
                </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-success" ng-click = "enrollCart()">Enroll</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
        </div>
        
    </main>
    <!--/Main layout-->
</body>
 