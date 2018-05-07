<!--Main layout-->
<main ng-init="pageShow = true" ng-show="isStudentSelected()" ng-controller = "shoppingCartController">
    <div class="container-fluid text-center">
        <!-- HOME -->
        <div ng-show="isHomeSelected()">
            <div role="main">
                <div class="row">
                    <section id="directives-calendar">
                        <legend style="text-align:left; display:block; width:100%; padding:0; margin-bottom:20px; font-size:21px; line-height:inherit; color:#333; border:0; border-bottom:1px solid #e5e5e5">    
                            Academic Calendar
                        </legend>
                        <div class="calendarBackground" style="background-color: #f2f2f2" ng-controller="calendarUMNController">
                            <div class="row-fluid">
                                <div class="span12">
                                    <div id="alert" class="alert-success calAlert span12" ng-show="alertMessage1 != undefined && alertMessage1 != '' && alertMessage2 != undefined && alertMessage2 != '' && alertMessage3 != undefined && alertMessage3 != ''">
                                      <h4>{{alertMessage1}}</h4>
                                      <h4>{{alertMessage2 | date: "dd/MM/y"}} - {{alertMessage3 | date: "dd/MM/y"}}</h4>
                                    </div>
                                        
                                    <div id="calendar" class="span11 calendar" calendar="myCalendar1" ng-model="eventSources" ui-calendar="uiConfig.calendar"></div>
                                </div>
                            </div>
                        </div>
                    </section> 
                </div>
            </div>
        </div>

        <!-- SCHEDULE -->
        <div ng-show = "isScheduleSelected()">
            <div role="main">
                <div class="row">
                    <section id="directives-calendar">
                        <legend style="text-align: left; display:block; width:100%; padding:0; margin-bottom:20px; font-size:21px; line-height:inherit; color:#333; border:0; border-bottom:1px solid #e5e5e5">    
                            My Weekly Schedule
                        </legend>
                        <div class="calendarBackground" style="background-color: #f2f2f2" ng-controller="calendarController">
                            <div class="row-fluid">
                                <div class="span12">
                                    <div id="alert" class="alert-success calAlert span12" ng-show="alertMessage1 != undefined && alertMessage1 != '' && alertMessage2 != undefined && alertMessage2 != '' && alertMessage3 != undefined && alertMessage3 != ''">
                                      <h4>{{alertMessage1}}</h4>
                                      <h4>{{alertMessage2}}</h4>
                                      <h4>{{alertMessage3}}</h4>
                                    </div>
                                    
                                    <div id="calendar" class="span11 calendar" calendar="myCalendar1" ng-model="eventSources" ui-calendar="uiConfig.calendar"></div>
                                </div>
                            </div>
                        </div>   
                    </section> 
                </div>
            </div>
        </div>

        <!-- KRS -->
        <div ng-show = "isKRSSelected()">
            <div role="main">
                <div class="row">
                    <section id="directives-calendar">
                        <legend style="text-align: left; display:block; width:100%; padding:0; margin-bottom:20px; font-size:21px; line-height:inherit; color:#333; border:0; border-bottom:1px solid #e5e5e5">    
                            Enroll Class
                        </legend>
                        <div id="mycart" style="position:absolute">
                            <i 
                                class="fa fa-shopping-cart" 
                                ng-init = "myStyle = {'font-size': '60px', 'color':'lightblue', 'text-shadow':'2px 2px 4px #000000', 'z-index' : '2', 'position' : 'fixed', 'margin-left' : '80%', 'margin-top': '35%'}" 
                                ng-style="myStyle" 
                                ng-mouseover = "myStyle = {'font-size': '60px', 'color':'lightgreen', 'text-shadow':'2px 2px 4px #000000', 'z-index' : '2', 'position' : 'fixed', 'margin-left' : '80%', 'margin-top': '35%'}" 
                                ng-mouseleave = "myStyle = {'font-size': '60px', 'color':'lightblue', 'text-shadow':'2px 2px 4px #000000', 'z-index' : '2', 'position' : 'fixed', 'margin-left' : '80%', 'margin-top': '35%'}" 
                                data-toggle="modal" 
                                data-target="#modalShoppingCart">
                            </i>
                        </div>
                        <script>
                            /* MAKE DRAGGABLE */
                            dragElement(document.getElementById(("mycart")));

                            function dragElement(elmnt){
                                var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
                                if(document.getElementById(elmnt.id)){
                                    /* MOVE WITHIN HEADER */
                                    document.getElementById(elmnt.id).onmousedown = dragMouseDown;
                                } 
                                else{
                                    /*MOVE ANYWHERE INSIDE DIV */
                                    elmnt.onmousedown = dragMouseDown;
                                }

                                /* TRIGGER EVENT */
                                function dragMouseDown(e) {
                                    e = e || window.event;
                                    /* GET CURSOR START POSITION */ 
                                    pos3 = e.clientX;
                                    pos4 = e.clientY;
                                    document.onmouseup = closeDragElement;
                                    /* CALL WHEN CURSOR MOVES */
                                    document.onmousemove = elementDrag;
                                }

                                function elementDrag(e) {
                                    e = e || window.event;
                                    /* CALCULATE NEW LOCATION */
                                    pos1 = pos3 - e.clientX;
                                    pos2 = pos4 - e.clientY;
                                    pos3 = e.clientX;
                                    pos4 = e.clientY;
                                    
                                    /* SET NEW LOCATION */
                                    elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
                                    elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
                                }

                                function closeDragElement() {
                                    /* STOP WHEN LEFT-CLICK IS RELEASED */
                                    document.onmouseup = null;
                                    document.onmousemove = null;
                                }
                            }
                        </script>
                        <div style="background-color: #f2f2f2; border-radius: 0px; padding: 0px" class="panel panel-default col-md-12 calendarBackground" style = "z-index = 1;"  ng-init="seedData()">
                            <div class="panel-heading col-md-12" style="background-color: #f2f2f2;">
                                <div style="padding-bottom: 10px"></div>
                                <div class="col-md-4" style="margin-left: 70%; ">
                                    <label>Search Class: </label>
                                    <input ng-model="searchText">   
                                </div>                                   
                            </div>
                            <div class="panel-body" style="background-color: #f2f2f2">
                                <table class="table datatable">
                                    <thead>
                                        <tr>
                                            <th style="background-color: #1c2a48; color: white;">Code</th>
                                            <th style="background-color: #1c2a48; color: white;">Subject</th>
                                            <th style="background-color: #1c2a48; color: white;">Section</th>
                                            <th style="background-color: #1c2a48; color: white;">Day</th>
                                            <th style="background-color: #1c2a48; color: white;">Time</th>
                                            <th style="background-color: #1c2a48; color: white;">Room</th>
                                            <th style="background-color: #1c2a48; color: white;">Available</th>
                                            <th style="background-color: #1c2a48; color: white;">Cap</th>
                                            <th style="background-color: #1c2a48; color: white;">Enroll</th>
                                        </tr>
                                    </thead>
                                    <tbody class="tableKRS" ng-repeat="krsinfo in krsinfos | filter : searchText">
                                        <tr class="krsinfo">
                                            <td style="background-color: rgba(242,242,242,0.5);" id="kode">{{krsinfo.kodeMatkul}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);" id="subject">{{krsinfo.namaMatkul}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);" id="section">{{krsinfo.kodeKelas}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);" id="day">{{krsinfo.hari}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);" id="time">{{krsinfo.jam}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);" id="room">{{krsinfo.ruangKelas}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);" id="available">{{krsinfo.available}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);" id="cap">{{krsinfo.kapasitas}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);"><button ng-disabled = "krsinfo.kodeKelas.length == 2 || krsinfo.clicked == true" 
                                            ng-class = "krsinfo.clicked == true? 'btn-warning' : 'btn-primary'"
                                            id = "btnCart" type="button" class="btn btn-xs btn-add btnAdd" style="height:30px; width:60px; margin:2px; padding:1px;" ng-click = "addCart(krsinfo)">ADD</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>
                </div> 
            </div>       
        </div>

        <div ng-show = "isDropClassSelected()">
            <div role="main">
                <div class="row">
                    <section id="directives-calendar">
                        <legend style="text-align: left; display:block; width:100%; padding:0; margin-bottom:20px; font-size:21px; line-height:inherit; color:#333; border:0; border-bottom:1px solid #e5e5e5">    
                            Drop Class
                        </legend>
                        <div style="background-color: #f2f2f2; border-radius: 0px; padding: 0px" class="panel panel-default col-md-12 calendarBackground" style = "z-index = 1;">
                            <div class="panel-heading col-md-12" style="background-color: #f2f2f2;">
                                <div style="padding-bottom: 10px"></div>
                                <div class="col-md-4" style="margin-left: 70%; ">
                                    <label>Search Class: </label>
                                    <input ng-model="searchTextDrop">   
                                </div>                                   
                            </div>
                            <div class="panel-body" style="background-color: #f2f2f2">
                                <table class="table datatableDrop" ng-controller = "tableDropController" ng-init = "seedDataDrop()">
                                    <thead>
                                        <tr>
                                            <th style="background-color: #1c2a48; color: white;">Subject</th>
                                            <th style="background-color: #1c2a48; color: white;">Section</th>
                                            <th style="background-color: #1c2a48; color: white;">Day</th>
                                            <th style="background-color: #1c2a48; color: white;">Time</th>
                                            <th style="background-color: #1c2a48; color: white;">Drop</th>
                                        </tr>
                                    </thead>
                                    <tbody class = "tableDrop" ng-repeat = "dropinfo in dropinfos | filter :searchTextDrop">
                                        <tr>
                                            <td style="background-color: rgba(242,242,242,0.5);">{{dropinfo.namaMatkul}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);">{{dropinfo.kodeKelas}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);">{{dropinfo.hari}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);">{{dropinfo.jam}}</td>
                                            <td style="background-color: rgba(242,242,242,0.5);"><button style="height:30px; width:60px; margin:2px; padding:1px;" class="btn btn-xs btn-add btnAdd btn-danger" ng-click = "dropClass($index)">Drop</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </section>
                </div> 
            </div> 
        </div>

        <div ng-show = "isMyInformationSelected()" ng-include="'view/myinformation.php'">
                <!-- CONTENT UNTUK My Information -->
        </div>

        <div style="padding-bottom: 40px"></div>
        <div id="directives-calendar" ng-show = "isMyGradesSelected()">
                <!-- CONTENT UNTUK My Grades -->
                <legend style="text-align: left; display:block; width:100%; padding:0; margin-bottom:20px; font-size:21px; line-height:inherit; color:#333; border:0; border-bottom:1px solid #e5e5e5">    
                    My GPA
                </legend>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 text-center">
                        <div ng-controller="donutController">
                            <div
                                donut-chart
                                donut-data="data"
                                donut-colors='["#5790e5","#d85656"]'
                                donut-label-color='"#000000"' 
                                donut-background-color='"#ffffff"' 
                                donut-formater='"numeric"'>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <div ng-show = "isMyAttendanceSelected()" ng-include="'view/myattendance2.php'">
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
                    <i class="fa fa-minus-circle"
                      ng-show = "cart.section.length == 1" 
                      ng-click = "delete(cart, $index)"
                      ng-init = "myStyle = {'font-size': '25px', 'color':'red'}" 
                      ng-style="myStyle" 
                      ng-mouseover = "myStyle = {'font-size': '25px', 'cursor' : 'pointer' , 'color':'red' , 'text-shadow':'.25px .25px .25px #000000'}"
                      ng-mouseleave = "myStyle = {'font-size': '25px', 'color':'red'}"
                    ></i>
                  </td>
                  <td>
                    <i ng-style = "{color : cart.status == 1? 'green' : 'red', 'font-size': '25px'}" 
                    ng-show = "cart.status != 2" 
                    ng-class = "cart.status == 1? 'fa fa-check-circle' : 'fa fa-times-circle'"></i>
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

<main ng-init="pageShow = true" ng-show="isDosenSelected()">
    <div class="container-fluid text-center">
      <div ng-show = "isHomeDosenSelected()">
        <div role="main">
            <div class="row">
               <section id="directives-calendar">
                  <div class="page-header">
                      <h1>Calendar UMN</h1>
                  </div>
                  <div class="calendarBackground" ng-controller="calendarUMNController">
                      <div class="row-fluid">
                          <div class="span12">
                              <!-- <tabset> -->
                                  <!-- <tab select="renderCalendar('myCalendar1');"> -->
                                    <div id="alert" class="alert-success calAlert span12" ng-show="alertMessage1 != undefined && alertMessage1 != '' && alertMessage2 != undefined && alertMessage2 != '' && alertMessage3 != undefined && alertMessage3 != ''">
                                      <h4>{{alertMessage1}}</h4>
                                      <h4>{{alertMessage2 | date: "dd/MM/y"}} - {{alertMessage3 | date: "dd/MM/y"}}</h4>
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
      <div ng-show = "isDosenScheduleSelected()">
        <div role="main">
            <div class="row">
               <section id="directives-calendar">
                  <div class="page-header">
                      <h1>Weekly Schedule</h1>
                  </div>
                  <div class="calendarBackground" ng-controller="calendarDosenController">
                      <div class="row-fluid">
                          <div class="span12">
                              <!-- <tabset> -->
                                  <!-- <tab select="renderCalendar('myCalendar1');"> -->
                                    <div class="alert-success calAlert" ng-show="alertMessage != undefined && alertMessage != ''">
                                      <h4>{{alertMessage}}</h4>
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

      <div ng-show = "isDosenInformationSelected()">
        <div class="row">
          
          
        </div>       
      </div>
      <div ng-show = "isMyClassSelected()">
        <!-- CONTENT UNTUK My Information -->
        <div class="row">
          <br><br><br><br><br>
          Class Selected
        </div>
      </div>
      <div ng-show = "isAttendanceSelected()">
        <!-- CONTENT UNTUK My Attendance -->
        <div class="row">
          <br><br><br><br><br>
          Edit and View Attendance  
        </div>
      </div>

      <div ng-show = "isGradesSelected()">
        <!-- CONTENT UNTUK My Grades -->
        <br><br><br><br><br>
        <div class="row">
          Edit and View Grades
        </div>
        
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

<main ng-init="pageShow = true" ng-show="isAdminSelected()" >
    <div class="container-fluid text-center">
      <div ng-show = "isHomeAdminSelected()">
        <div role="main">
            <div class="row">
               <section id="directives-calendar">
                  <div class="page-header">
                      <h1>Calendar UMN</h1>
                  </div>
                  <div class="calendarBackground" ng-controller="calendarUMNController">
                      <div class="row-fluid">
                          <div class="span12">
                              <!-- <tabset> -->
                                  <!-- <tab select="renderCalendar('myCalendar1');"> -->
                                    <div id="alert" class="alert-success calAlert span12" ng-show="alertMessage1 != undefined && alertMessage1 != '' && alertMessage2 != undefined && alertMessage2 != '' && alertMessage3 != undefined && alertMessage3 != ''">
                                      <h4>{{alertMessage1}}</h4>
                                      <h4>{{alertMessage2 | date: "dd/MM/y"}} - {{alertMessage3 | date: "dd/MM/y"}}</h4>
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
      <div ng-show = "isOpenSelected()">
        <!-- CONTENT UNTUK OPEN everything, such as EVAL, KRS -->
           
      </div>
      <div ng-show = "isAdminInfoSelected()">
                <!-- CONTENT UNTUK Admin Information -->
                HOHO
      </div>
    <!-- /#page-content-wrapper -->
    </div>
    
    <script>
      var userID = <?php  echo $_SESSION['userID'] ?>;
      var nim = <?php echo $_SESSION['nim'] ?>;
      var privilege = <?php echo $_SESSION['priv'] ?>;
    </script>        
</main>
</div>
<!--/Main layout-->
</body>
