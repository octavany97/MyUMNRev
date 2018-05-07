<!DOCTYPE html>
<html ng-app = "myApp">
<head>
  <meta charset="UTF-8">
  <title>MY UMN</title>

  <style>

    body {
        margin: 40px 10px;
        padding: 0;
        font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
        font-size: 14px;
    }

    #calendar {
        max-width: 900px;
        margin: 0 auto;
    }

  </style>
</head>

<body style="background-color: white;">
      <div id="wrapper"  ng-controller = "contentController" ng-init = "indexSelected = 1">
        <div class="overlay"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand">
                <a href="#">
                   MYUMN
                </a>
            </li>
            <!-- SIDEBAR USERPIC -->
            <div class="profile-userpic">
                <img src="images/Octavany.jpg" class="img-responsive" alt="">
            </div>
            <!-- END SIDEBAR USERPIC -->
            <!-- SIDEBAR USER TITLE -->
            <div class="profile-usertitle">
                <div class="profile-usertitle-name">
                    Octavany
                </div>
                <div class="profile-usertitle-job">
                    <?php

                    ?>
                    Student
                </div>
            </div>
            <li ng-click = "indexSelected = 1">
                <a href="#" ><i class="fa fa-fw fa-home" ></i> Home</a>
            </li>
            <li ng-click = "indexSelected = 2">
                <a href="#" ><i class="fa fa-fw fa-calendar" ></i> Schedule</a>
            </li>
            <li ng-click = "indexSelected = 3">
                <a href="#" ><i class="fa fa-fw fa-shopping-cart" ></i> KRS</a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-user"></i> Student Information <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <!-- <li class="dropdown-header">Student Information</li> -->
                <li ng-click = "indexSelected = 4"><a href="#" >View my Information</a></li>
                <li ng-click = "indexSelected = 5"><a href="#" >View my Grades</a></li>
                <li ng-click = "indexSelected = 6"><a href="#" >View my Attendance</a></li>
              </ul>
            </li>
            <li>
                <a href="<?php BASE_URL ?>logout"><i class="fa fa-fw fa-arrow-left"></i> Logout</a>
            </li>
        </ul>
    </nav>
        <!-- /#sidebar-wrapper -->

        
        <!-- hamburger -->
        <div id="page-content-wrapper">
          <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
        <!-- Page Content --> 
          <!-- <div class="container-fluid" style="background-color: white;">
          
            <div id='calendar'></div>
          </div> -->
          <div ng-show = "isHomeSelected()">
                    <!-- CONTENT UNTUK HOME -->
                    HAHA
          </div>
          <div ng-show = "isScheduleSelected()">
                    <!-- CONTENT UNTUK SCHEDULE -->
                    HIHI
          </div>
          <div ng-show = "isKRSSelected()">
                    <!-- CONTENT UNTUK KRS -->
                    HUHU
                    
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
        <!-- /hamburger -->

    </div>

    <!-- /#wrapper -->
</body>
</html>