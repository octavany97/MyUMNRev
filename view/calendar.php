<div role="main" ng-controller="calendarController" >
    <div class="container">
         <section id="directives-calendar">
            <div class="page-header">
                <h1>Calendar UMN</h1>
            </div>
            <div class="calendarBackground">
                <div class="row-fluid">
                    <div class="span4">
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
                                        {{e.mulai | date:"MMM dd hh:mm"}} - {{e.selesai | date:"MMM dd HH:mm"}}
                                </div>
                            </li>
                        </ul>

                    </div>

                    <div class="span8">
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
