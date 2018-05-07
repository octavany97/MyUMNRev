<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <title>MY UMN REVISION</title>

        <!-- START METADATA -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- END METADATA -->

        <!-- START CSS -->
            <!-- BASE -->
            <link rel="stylesheet" href="css/jquery2.min.css">
            
            <!-- ICON -->
            <link rel="stylesheet" href="css/fontawesome/font-awesome.min.css">
            
            <!-- DATATABLES -->
            <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
            <link rel="stylesheet" href="css/datatables/buttons.dataTables.min.css">>
                 
            <!-- MODAL -->
            <link rel="stylesheet" href="js/plugins/sweetalert2/dist/sweetalert2.min.css">

            <!-- CALENDAR -->
            <link rel="stylesheet" href="css/bootstrap/bootstrap-responsive.min.css">
            <link rel="stylesheet" href="css/fullcalendar/fullcalendar.min.css">
            <link rel="stylesheet" href="css/calendar/calendarDemo.css"/>
            
            <!-- CHART -->
            <link rel="stylesheet" href="css/morris/morris.css">
            <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.css">

            <!-- GENERAL -->
            <link rel="stylesheet" href="css/style.css">

        <!-- END CSS -->

        <!-- START SCRIPT -->
            <!-- JQUERY -->
            <script src="js/plugins/jquery/jquery2.min.js"></script>
            <script src='js/plugins/jquery/bootstrap/bootstrap.min.js'></script>

            <!-- DATATABLES -->
            <script src='js/plugins/jquery/datatables/jquery.dataTables.min.js'></script>
            <script src="js/settings/datatables.js"></script>

            <!-- ANGULAR -->
            <script src="js/plugins/angular/angular.min.js"></script>
            <script src="js/plugins/angular/UI/ui-bootstrap-tpls-0.13.0.js"></script>
            <script src="js/settings/angular.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-resource/1.6.7/angular-resource.min.js"></script>

            <!-- CHART -->
            <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
            <script src="js/plugins/morris/angular-morris-chart.min.js"></script>
            
            <!-- MODAL -->
            <script src="js/plugins/sweetalert2/dist/sweetalert2.all.min.js"></script> 

            <!-- CALENDAR -->
            <script src="js/plugins/moment/moment.js"></script>
            <script src="js/plugins/fullcalendar/calendar.js"></script>
            <script src="js/plugins/fullcalendar/fullcalendar.min.js"></script>
            <script src="js/plugins/fullcalendar/gcal.min.js"></script>
        <!-- END SCRIPT -->
        
    </head>

    <body class="fixed-sn mdb-skin" ng-controller="contentController">
        <header>
            <div id="slide-out" class="side-nav sn-bg-4 fixed mdb-sidenav">
                <ul class="custom-scrollbar list-unstyled" style="max-height:100vh;">
                    <!-- Logo -->
                    <div style="padding: 10px">
                        <img src="img/umn3.png" class="img-fluid">
                    </div>
                    <div style="padding: 10px">
                        <img src="img/divider.png" class="img-fluid">
                    </div>
                    <!--/. Logo -->
                    <!-- Side navigation links -->
                    <li ng-show = "isStudentSelected()">
                        <ul class="collapsible collapsible-accordion">
                            <li ng-click = "indexSelected = 1">
                                <a href="#" ><i class="fa fa-fw fa-home"></i> Home</a>
                            </li>
                            <li ng-click = "indexSelected = 2">
                                <a href="#" ><i class="fa fa-fw fa-calendar"></i> Schedule</a>
                            </li>
                            <li><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-fw fa-shopping-cart"></i> KRS <i class="fa fa-angle-down rotate-icon"></i></a>
                               <div class="collapsible-body">
                                  <ul>
                                    <li ng-click = "indexSelected = 3"><a href="#" >Add Class</a></li>
                                    <li ng-click = "indexSelected = 7"><a href="#" >Drop Class</a></li>
                                  </ul>
                               </div>
                            </li>
                            <li><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-fw fa-user"></i> Student Information <i class="fa fa-angle-down rotate-icon"></i></a>
                               <div class="collapsible-body">
                                  <ul>
                                    <li ng-click = "indexSelected = 4"><a href="#" >View My Information</a></li>
                                    <li ng-click = "indexSelected = 5"><a href="#" >View My Grades</a></li>
                                    <li ng-click = "indexSelected = 6"><a href="#" >View My Attendance</a></li>
                                  </ul>
                               </div>
                            </li>
                        </ul>
                    </li>
                    <li ng-show = "isDosenSelected()">
                        <ul class="collapsible collapsible-accordion">
                            <li ng-click = "indexDosenSelected = 1">
                                <a href="#" ><i class="fa fa-fw fa-home"></i> Home</a>
                            </li>
                            <li ng-click = "indexDosenSelected = 2">
                                <a href="#" ><i class="fa fa-fw fa-calendar"></i> Schedule</a>
                            </li>
                            <!-- <li ng-click = "indexDosenSelected = 3">
                                <a href="#" ><i class="fa fa-fw fa-shopping-cart"></i> Scoring</a>
                            </li> -->
                            <li><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-fw fa-user"></i> Lecturer Information <i class="fa fa-angle-down rotate-icon"></i></a>
                               <div class="collapsible-body">
                                  <ul>
                                    <li ng-click = "indexDosenSelected = 3"><a href="#" >View My Information</a></li>
                                    <li ng-click = "indexDosenSelected = 4"><a href="#" >View My Class</a></li>
                                    <li ng-click = "indexDosenSelected = 5"><a href="#" >View Student Attendance</a></li>
                                  </ul>
                               </div>
                            </li>
                        </ul>
                    </li>
                    <li ng-show = "isAdminSelected()">
                        <ul class="collapsible collapsible-accordion">
                            <li ng-click = "indexAdminSelected = 1">
                                <a href="#" ><i class="fa fa-fw fa-home"></i> Home</a>
                            </li>
                            <li ng-click = "indexAdminSelected = 2">
                                <a href="#" ><i class="fa fa-fw fa-flag"></i> Open</a>
                            </li>
                            <li ng-click = "indexAdminSelected = 3">
                                <a href="#" ><i class="fa fa-fw fa-user"></i> View Admin Information</a>
                            </li>
                            <!-- <li><a class="collapsible-header waves-effect arrow-r"><i class="fa fa-fw fa-user"></i> Admin Information <i class="fa fa-angle-down rotate-icon"></i></a>
                               <div class="collapsible-body">
                                  <ul>
                                    <li ng-click = "indexAdminSelected = 3"><a href="#" >View My Information</a></li>
                                    <li ng-click = "indexAdminSelected = 4"><a href="#" >View My Grades</a></li>
                                    <li ng-click = "indexAdminSelected = 5"><a href="#" >View My Attendance</a></li>
                                  </ul>
                               </div>
                            </li> -->
                        </ul>
                    </li>
                    <!--/. Side navigation links -->
                </ul>
                <div class="sidenav-bg mask-strong"></div>
            </div>
            <!--/. Sidebar navigation -->
            <!-- Navbar -->
            <nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav">
                <!-- SideNav slide-out button -->
                <div class="float-left">
                    <a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a>
                </div>
                <!-- Breadcrumb-->
                <div class="breadcrumb-dn mr-auto">
                    <p>MY UMN</p>
                </div>
                <ul class="nav navbar-nav nav-flex-icons ml-auto">
                    <!-- <li class="nav-item">
                        <a class="nav-link"><i class="fa fa-user"></i> <span class="clearfix d-none d-sm-inline-block">Account</span></a>
                    </li> -->
                    <!-- <li class="nav-item dropdown" ng-controller = "headerProfileController">
                        <a class="nav-link dropdown-toggle" href="#" style="z-index: 2;" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Octavany (0000001157)
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profileList" aria-labelledby="navbarDropdownMenuLink">
                            <ul>
                                <img style = "width: 100px; height: 100px;" ng-src="img/Octavany.jpg">
                                <a>Change Password</a>
                                <a href="<?php echo BASE_URL;?>logout">Log Out</a>
                            </ul>
                        </div>
                    </li> -->
                    <li class="nav-item dropdown" ng-controller="headerProfileController">
                        <a class="nav-link dropdown-toggle" href="#" style="z-index: 2;" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{loginuser.data['namaBelakang'] == null ? loginuser.data['namaDepan'] : loginuser.data['namaDepan'] + ' ' + loginuser.data['namaBelakang']}} ({{loginuser.data['nim']}})
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profileList" aria-labelledby="navbarDropdownMenuLink">
                            <ul>
                                <img style = "width: 100px; height: 100px;" ng-src="img/{{loginuser.data['nim']}}.jpg">
                                <a>Change Password</a>
                                <a href="<?php echo BASE_URL;?>logout">Log Out</a>
                            </ul>
                        </div>
                    </li>
                    <!-- <li class = "profileList" style = "z-index : 2; position: absolute; right: 30px;">Christopher Reinaldo (00000010755)
                        <ul>
                            <li><img style = "width: 100px; height: 100px; opacity: 1;" src="https://drive.google.com/file/d/0BxojunJmJ3eoV1hIZ3NWSFUxbEU/view?usp=sharing"></li>
                            <li><a>Change Password</a></li>
                            <li><a>Log Out</a></li>
                        </ul>
                    </li> -->
                </ul>
            </nav>
        </header>