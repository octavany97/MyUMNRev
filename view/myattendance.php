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
  background: rgba(0, 0, 0, 0.78);
  color: #fefefe;
  padding: .75em;
  border-radius: 0.15em;
  transition: background .3s ease;
}
ul li a.toggle:hover {
  background: rgba(0, 0, 0, 0.9);
}
</style>

<div id="directives-calendar" class="row" ng-controller="myAttendanceController">

    <ul class="accordion"
        style="width: 40%;
            min-width: 300px;
            max-width: 400px;
            margin: 0 auto;
            color: #333">
            <br>
        <li>
        <?php
            $idx = 0;
            ?>
            <a class="toggle" href="javascript:void(0);" ng-repeat="i in data.data.terms track by $index">{{i}}</a>
            <ul class="inner">
                <li>
                    <a href="#" class="toggle" ng-repeat="j in i.matkul">{{j}}</a>
                    <div class="inner">
                        <table class="table"><br>
                        <thead>
                            <th>#Meeting</th>
                            <th>Date</th>
                            <th>Attendance</th>
                        </thead>
                        <tbody>
                            <tr ng>
                                <td>1st</td>
                                <td></td>
                                <td></td>
                            <tr>
                        </tbody>
                        </table>
                    </div>
                </li>

                <li>
                    <a href="#" class="toggle">Introduction to Internet Technology</a>
                    <div class="inner">
                        <p>
                            Uhuk berapa kali bolos nich
                        </p>
                    </div>
                </li>
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