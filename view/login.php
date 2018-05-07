<!DOCTYPE html>
<html>
    <head>
        <title>MY UMN REVISION</title>
        
        <!-- START METADATA -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- END METADATA -->

        <!-- START CSS -->
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/fontawesome/font-awesome.min.css">
        <!-- END CSS -->

        <!-- START SCRIPT -->
        <script src="js/plugins/jquery/jquery3.min.js"></script>
        <script src="js/plugins/jquery/bootstrap/bootstrap.min.js"></script>
        <script src="js/plugins/angular/angular.min.js"></script>
        <script src="js/settings/angular.js"></script>
        <!-- END SCRIPT -->

        <?php 
          if($_SERVER['REQUEST_METHOD'] == 'POST'){
              if(isset($_POST['forgotpassword']))
                  require 'controller/forgotpassword.php';       
          }
        ?>
    </head>
    <header style="color: white; background-color: #1c2a48; color:rgba(255,255,255,.6); text-align: center">
        <img src="img/logo.png" style="width: 50%; height: 50%">
    </header>
    <body ng-app = "loginApp">
        <!-- START CAROUSEL -->
        <section class="col-md-8 margin-top" style="padding: 10px;">
            <div class="container">
                <legend>Upcoming Events</legend>
                <!-- START CAROUSEL SLIDESHOW -->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- START INDICATOR -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <!-- END INDICATOR -->
                    
                    <!-- START SLIDES -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="http://www.umn.ac.id/event/sibernasional/"><img src="img/agenda/agenda1.png" alt="..."></a>
                            <div class="carousel-caption">
                                <h1>Seminar: Memperkuat Keamanan Siber Nasional</h1>
                            </div>
                        </div>
                        <div class="item">
                            <a href="http://www.umn.ac.id/event/openhouse2017/"><img src="img/agenda/agenda2.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                 <h1>Open House 2017</h1>
                            </div>
                        </div>
                        <div class="item">
                            <a href="http://www.umn.ac.id/event/festival-budaya-nusantara/"><img src="img/agenda/agenda3.jpg" alt="..."></a>
                            <div class="carousel-caption">
                                <h1>Festival Budaya Nusantara</h1>
                            </div>
                        </div>
                    </div>
                    <!-- END SLIDES -->

                    <!-- START CONTROL -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                    <!-- END CONTROL -->            
                </div>
                <!-- END CAROUSEL SLIDESHOW -->
            </div>
        </section>
        <!-- END CAROUSEL -->

        <!-- START LOGIN -->
        <section class="col-md-4 margin-top" style="padding:10px;">
            <div style="padding-left: 10px;">
                <legend>
                    User Login
                </legend>
                <div style="text-align: center;">
                    <img src="img/umn.png" style="width: 60%; height: 60%">
                    <button class="btn btn-primary center btn-block" style="padding:10px;" type="submit" data-toggle="modal" data-target="#modalLogin" id="btnLogin">Login</button>
                    <div class="margin-15">
                        <a style="color:black; cursor: pointer;" data-toggle="modal" data-target="#modalForgotPassword"> 
                            Forgot Password?
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- END LOGIN -->

        <section class="col-md-4 margin-top" style="margin-bottom: 20px"></section>

        <!-- START AFFILIATIONS -->
        <section class="col-md-4 margin-top">
            <div style="padding-left: 10px;">
                <legend>
                    Affiliations
                </legend>
                <div style="text-align: center;">
                    <div class="iconbox col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="iconcircle">
                            <a href="http://library.umn.ac.id/"><i class="fa fa-book" style="font-size: 50px; color: #1c2a48"></i></a>
                        </div>                 
                        <div class="iconbox-content">
                            <h4>UMN Library</h4>
                        </div>
                    </div>
                    <div class="iconbox col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="iconcircle">
                            <a href="http://cdc.umn.ac.id/"><i class="fa fa-suitcase" style="font-size: 50px; color: #1c2a48"></i></a>
                        </div>
                        <div class="iconbox-content">
                            <h4>UMN CDC</h4>
                        </div>
                    </div>
                    <div class="iconbox col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="iconcircle">
                            <a href="http://ejournals.umn.ac.id/"><i class="fa fa-file-text" style="font-size: 50px; color: #1c2a48"></i></a>
                        </div>
                        <div class="iconbox-content">
                            <h4>UMN E-Journals</h4>
                        </div>
                    </div>
                    <div class="iconbox col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="iconcircle">
                            <a href="http://elearning.umn.ac.id/"><i class="fa fa-database" style="font-size: 50px; color: #1c2a48"></i></a>
                        </div>
                        <div class="iconbox-content">
                            <h4>UMN E-Learning</h4>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END AFFILIATIONS -->

        <!-- START MODAL LOGIN -->
        <div class="row modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelldeby = "myModalLabel" aria-hidden="true">
            <div class="login">
                <form class="login-container" method="POST" role="form" action="<?php echo BASE_URL?>login">   
                    <div style="text-align: center;">
                        <img src="img/umn.png" style="width: 60%; height: 60%; text-align: center;">
                    </div>
                    <p><input type="email" name='email' placeholder="Email" required></p>
                    <p><input type="password" name='password' placeholder="Password" required></p>
                    <p><input type="submit" name="login" value="Login"></p>
                </form>
            </div>
        </div>
        <!-- END MODAL LOGIN -->

        <!-- START MODAL FORGOT PASSWORD -->
        <div class="row modal fade" id="modalForgotPassword" tabindex="-1" role="dialog" aria-labelldeby = "myModalLabel" aria-hidden="true" ng-controller = "messageController">
            <div class="login">
                <form class="login-container" method="POST" role="form">
                    <div style="text-align: center;">
                        <img src="img/umn.png" style="width: 60%; height: 60%; text-align: center;">
                    </div>
                    <p><input type="email" name='email' placeholder="Email" ng-model="email" required></p>
                    <p><input type="submit" name="forgotpassword" value="Reset Password" ng-click="forgotpassword()"></p>
                    <p ng-show="showMessage == true" class="text-warning">{{message}}</p>
                </form>
            </div>
        </div>
        <!-- END MODAL FORGOT PASSWORD -->

    </body>
    <footer class="page-footer center-on-small-only">
        <div class="footer-copyright">
            <div class="container-fluid">
                © 2017 CIVAO. All rights reserved.
            </div>
        </div>
    </footer>
</html>