<style>
a {
  text-decoration: none;
  color: inherit;
}
.description {
  margin: 1em auto 2.25em;
}
ul {
  list-style: none;
  padding: 0;
}
ul .inner {
  padding-left: 1em;
  overflow: hidden;
  display: none;
}
ul .inner.show {
  /*display: block;*/
}
ul li {
  margin: .5em 0;
}
ul li a.toggle {
  width: 100%;
  display: block;
  background: rgba(9, 22, 43, 0.78);
  color: #fff;
  padding: .75em;
  border-radius: 0.15em;
  transition: background .3s ease;
}
ul li a.toggle:hover {
  background: rgba(0, 0, 0, 0.9);
}
</style>

<div id="directives-calendar" class="row" ng-controller="myAttendanceController">
                <legend style="text-align: left; display:block; width:100%; padding:0; margin-bottom:20px; font-size:21px; line-height:inherit; color:#333; border:0; border-bottom:1px solid #e5e5e5">    
                    Student Attendance
                </legend>
    <ul class="accordion"
        style="width: 40%;
            min-width: 300px;
            max-width: 400px;
            margin: 0 auto;
            color: #333">
        <br>
            <li><a class="toggle" href="javascript:void(0);">Semester Gasal 2017/2018</a>
                <!--<ul class="inner">
                    <li>
                        <a href="#" class="toggle">Software Engineering</a>
                        <div class="inner">
                            <table class="table"><br>
                                <thead>
                                    <th>#Meeting</th>
                                    <th>Date</th>
                                    <th>Attendance</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Sept 01, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Sept 08, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Sept 15, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Sept 22, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Sept 29, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Oct 06, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Oct 13, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Nov 3, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>9</td>
                                        <td>Nov 10, 2017</td>
                                        <td><i class="fa fa-times" style="color:red" aria-hidden="true"></td>
                                    <tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Nov 17, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></td>
                                    <tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Nov 24, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></td>
                                    <tr>
                                    <tr>
                                        <td>12</td>
                                        <td>Dec 01, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>13</td>
                                        <td>Dec 08, 2017</td>
                                        <td><i class="fa fa-times" style="color:red" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>14</td>
                                        <td>Dec 15, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>                                                                                                                                                                                                                                                                                                                    
                                </tbody>
                            </table>
                        </div>
                    </li>

                    <li>
                        <a href="#" class="toggle">Object Oriented Programming 2</a>
                        <div class="inner">
                            <table class="table"><br>
                                <thead>
                                    <th>#Meeting</th>
                                    <th>Date</th>
                                    <th>Attendance</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Sept 01, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Sept 08, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Sept 15, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Sept 22, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Sept 29, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Oct 06, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Oct 13, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Nov 3, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>9</td>
                                        <td>Nov 10, 2017</td>
                                        <td><i class="fa fa-times" style="color:red" aria-hidden="true"></td>
                                    <tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Nov 17, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></td>
                                    <tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Nov 24, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></td>
                                    <tr>
                                    <tr>
                                        <td>12</td>
                                        <td>Dec 01, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>13</td>
                                        <td>Dec 08, 2017</td>
                                        <td><i class="fa fa-times" style="color:red" aria-hidden="true"></i></td>
                                    <tr>
                                    <tr>
                                        <td>14</td>
                                        <td>Dec 15, 2017</td>
                                        <td><i class="fa fa-check" aria-hidden="true"></i></td>
                                    <tr>                                                                                                                                                                                                                                                                                                                    
                                </tbody>
                            </table>
                        </div>
                    </li>

                    <li><a href="#" class="toggle">Object Oriented Programming 2 [Lab]</a></li>
                    <li><a href="#" class="toggle">Introduction to Internet Technology</a></li> 
                    <li><a href="#" class="toggle">Introduction to Internet Technology [Lab]</a></li>
                    <li><a href="#" class="toggle">Analysis and Design of Algorithm</a></li>
                    <li><a href="#" class="toggle">Computer Security</a></li>                 
                    <li><a href="#" class="toggle">Advanced Database</a></li>
                    <li><a href="#" class="toggle">Advanced Database [Lab]</a></li>
                    <li><a href="#" class="toggle">English 3</a></li>
                    </ul>
                    </li>
                </ul>        -->
            </li>
        <li><a class="toggle" href="javascript:void(0);">Semester Genap 2016/2017</a></li>
        <li><a class="toggle" href="javascript:void(0);">Semester Gasal 2016/2017</a></li>
        <li><a class="toggle" href="javascript:void(0);">Semester Genap 2015/2016</a></li>
        <li>
            <a class="toggle" href="javascript:void(0);">Semester Gasal 2015/2016</a>
            <ul class="inner">
                <li>
                    <a href="#" class="toggle">Introduction to Multimedia</a>
                    <div class="inner">
                        <table class="table"><br>
                        <thead>
                            <th>#Meeting</th>
                            <th>Date</th>
                            <th>Attendance</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Sept 01, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>2</td>
                                <td>Sept 08, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>3</td>
                                <td>Sept 15, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>4</td>
                                <td>Sept 22, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>5</td>
                                <td>Sept 29, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>6</td>
                                <td>Oct 06, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>7</td>
                                <td>Oct 13, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>8</td>
                                <td>Nov 3, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>9</td>
                                <td>Nov 10, 2015</td>
                                <td><i class="fa fa-times" style="color:red" aria-hidden="true"></td>
                            <tr>
                            <tr>
                                <td>10</td>
                                <td>Nov 17, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></td>
                            <tr>
                            <tr>
                                <td>11</td>
                                <td>Nov 24, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></td>
                            <tr>
                            <tr>
                                <td>12</td>
                                <td>Dec 01, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>13</td>
                                <td>Dec 08, 2015</td>
                                <td><i class="fa fa-times" style="color:red" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>14</td>
                                <td>Dec 15, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>                                                                                                                                                                                                                                                                                                                    
                        </tbody>
                        </table>
                    </div>
                </li>

                <li>
                    <a href="#" class="toggle">Introduction to Multimedia [Lab]</a>
                    <div class="inner">
                        <table class="table"><br>
                        <thead>
                            <th>#Meeting</th>
                            <th>Date</th>
                            <th>Attendance</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Sept 01, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>2</td>
                                <td>Sept 08, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>3</td>
                                <td>Sept 15, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>4</td>
                                <td>Sept 22, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>5</td>
                                <td>Sept 29, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>6</td>
                                <td>Oct 06, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>7</td>
                                <td>Oct 13, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>8</td>
                                <td>Nov 3, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>9</td>
                                <td>Nov 10, 2015</td>
                                <td><i class="fa fa-times" style="color:red" aria-hidden="true"></td>
                            <tr>
                            <tr>
                                <td>10</td>
                                <td>Nov 17, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></td>
                            <tr>
                            <tr>
                                <td>11</td>
                                <td>Nov 24, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></td>
                            <tr>
                            <tr>
                                <td>12</td>
                                <td>Dec 01, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>13</td>
                                <td>Dec 08, 2015</td>
                                <td><i class="fa fa-times" style="color:red" aria-hidden="true"></i></td>
                            <tr>
                            <tr>
                                <td>14</td>
                                <td>Dec 15, 2015</td>
                                <td><i class="fa fa-check" aria-hidden="true"></i></td>
                            <tr>                                                                                                                                                                                                                                                                                                                    
                        </tbody>
                        </table>
                    </div>
                </li>
                <li><a href="#" class="toggle">Programming Logics</a></li>
                <li><a href="#" class="toggle">Discrete Mathematics</a></li> 
                <li><a href="#" class="toggle">Corporate Business Processes</a></li>
                <li><a href="#" class="toggle">English 1</a></li>                 
                <li><a href="#" class="toggle">Religion</a></li>
                <li><a href="#" class="toggle">Pancasila</a></li>
            </ul>
        </li>
    </ul>
</div>

<script>
    $('.toggle').click(function(e) {
        e.preventDefault();
    
        var $this = $(this);
    
        if ($this.next().hasClass('show')) {
            $this.next().removeClass('show');
            $this.next().slideUp(350);
        } else {
            $this.parent().parent().find('li .inner').removeClass('show');
            $this.parent().parent().find('li .inner').slideUp(350);
            $this.next().toggleClass('show');
            $this.next().slideToggle(350);
        }
    });
</script>