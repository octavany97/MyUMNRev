$(document).ready(function(){
    $('[data-toggle="offcanvas"]').click(function(){
        $('#wrapper').toggleClass('toggled');
    });  
     
    // $('#calendar').fullCalendar({
    //     header: {
    //         left: 'prev,next today',
    //         center: 'title',
    //         right: 'month,agendaWeek,agendaDay,listWeek'
    //     },
    //     defaultDate: '2017-11-12',
    //     navLinks: true, 
    //     editable: true,
    //     eventLimit: true, 
    //     events: [
    //         {
    //             title: 'All Day Event',
    //             start: '2017-11-01',
    //         },
    //         {
    //             title: 'Long Event',
    //             start: '2017-11-07',
    //             end: '2017-11-10'
    //         },
    //         {
    //             id: 999,
    //             title: 'Repeating Event',
    //             start: '2017-11-09T16:00:00'
    //         },
    //         {
    //             id: 999,
    //             title: 'Repeating Event',
    //             start: '2017-11-16T16:00:00'
    //         },
    //         {
    //             title: 'Conference',
    //             start: '2017-11-11',
    //             end: '2017-11-13'
    //         },
    //         {
    //             title: 'Meeting',
    //             start: '2017-11-12T10:30:00',
    //             end: '2017-11-12T12:30:00'
    //         },
    //         {
    //             title: 'Lunch',
    //             start: '2017-11-12T12:00:00'
    //         },
    //         {
    //             title: 'Meeting',
    //             start: '2017-11-12T14:30:00'
    //         },
    //         {
    //             title: 'Happy Hour',
    //             start: '2017-11-12T17:30:00'
    //         },
    //         {
    //             title: 'Dinner',
    //             start: '2017-11-12T20:00:00'
    //         },
    //         {
    //             title: 'Birthday Party',
    //             start: '2017-11-13T07:00:00'
    //         },
    //         {
    //             title: 'Click for Google',
    //             url: 'http://google.com/',
    //             start: '2017-11-28'
    //         }
    //     ]
    // });
});


/* START APP MODULE */
let app = angular.module("myApp", ['ui.calendar','ui.bootstrap','ngResource','angular.morris-chart'])
    /* START CONTENT CONTROLLER */
    app.controller("contentController", function($scope){
        $scope.indexSelected = 1;
        $scope.pageShow = true;
        $scope.indexDosenSelected = 1;
        $scope.indexAdminSelected = 1;
        $scope.userSelected = privilege;

        $scope.isStudentSelected = function(){
            if($scope.userSelected == 1){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isDosenSelected = function(){
            if($scope.userSelected == 2){
                return true;
            } 
            else{
                return false;
            }  
        }
        $scope.isAdminSelected = function(){
            if($scope.userSelected == 3){
                return true;
            } 
            else{
                return false;
            }
        }
        // navbar student
        $scope.isHomeSelected = function(){
            if($scope.indexSelected == 1){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isScheduleSelected = function(){
            if($scope.indexSelected == 2){
                return true;
            }
            else{
                return false;
            }
        }
        $scope.isKRSSelected = function(){
            if($scope.indexSelected == 3){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isMyInformationSelected = function(){
            if($scope.indexSelected == 4){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isMyGradesSelected = function(){
            if($scope.indexSelected == 5){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isMyAttendanceSelected = function(){
            if($scope.indexSelected == 6){
                return true;
            }
            else{
                return false;
            }
        }

        $scope.isDropClassSelected = function(){
            if($scope.indexSelected == 7){
                return true;
            } 
            else{
                return false;
            }
        }
        // navbar dosen/lecturer
        $scope.isHomeDosenSelected = function(){
            if($scope.indexDosenSelected == 1){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isDosenScheduleSelected = function(){
            if($scope.indexDosenSelected == 2){
                return true;
            }
            else{
                return false;
            }
        }
        
        $scope.isDosenInformationSelected = function(){
            if($scope.indexSelected == 3){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isMyClassSelected = function(){
            if($scope.indexSelected == 4){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isAttendanceSelected = function(){
            if($scope.indexSelected == 5){
                return true;
            } 
            else{
                return false;
            }
        }
        $scope.isGradesSelected = function(){
            if($scope.indexDosenSelected == 6){
                return true;
            } 
            else{
                return false;
            }
        }
        // navbar admin
        $scope.isHomeAdminSelected = function(){
            if($scope.indexAdminSelected == 1){
                return true;
            }
            else{
                return false;
            }
        }
        $scope.isOpenSelected = function(){
            if($scope.indexAdminSelected == 2){
                return true;
            }
            else{
                return false;
            }
        }
        // $scope.isOpenKRSSelected = function(){
        //     if($scope.indexAdminSelected == 3){
        //         return true;
        //     }
        //     else{
        //         return false;
        //     }
        // }
        $scope.isAdminInfoSelected = function(){
            if($scope.indexAdminSelected == 3){
                return true;
            }
            else{
                return false;
            }
        }

        $scope.isLoginSuccess = function(){
            if($scope.pageShow == 1){
                return true;
            } 
            else{
                return false;
            }
        }
        
    })
    /* END CONTENT CONTROLLER */

    /* START INFO USER SERVICE */
    app.service('myService', function(){
      var _infoUser = {};
      this.addInfo = function(info){
        _infoUser = info;
      }
      this.getInfo = function(){
        return _infoUser.data;
      }
      this.getInfo = function(idx){
        return _infoUser.data[idx];
      }
    })
    /* END INFO USER SERVICE */

    /* START CALENDAR SERVICE */
    app.service('CalendarService',function(myService, $http){
      var ev = [], obj = [], len, event = [];
      this.renderEvent = function(event2){
        this.event = event2
       }
       this.getEvent = function(){
        console.log(this.event)
        return this.event
       }
       this.getEventObj = function(){
        console.log(this.ev)
        return this.ev
       }
    })
    /* END CALENDAR SERVICE */

    /* START FACTORY */
    app.factory('EventFactory', function($resource){
        return $resource('api/calendarweek.php/:nim',{nim: "@nim"});
    })
    /* END FACTORY */

    /* START HEADER PROFILE CONTROLLER */
    app.controller("headerProfileController", function($scope, $http, myService){
        $http.get('controller/loginuser.php').then(successCallback, errorCallback);
        
        function successCallback(result){
            myService.addInfo(result)
            console.log(result.data[1])
            $scope.loginuser = result
        }

        function errorCallback(result){
            die("cannot call loginuser.php")
        }
    });
    /* END HEADER PROFILE CONTROLLER */

    /* START SHOPPING CART CONTROLLER */
    app.controller("shoppingCartController", function($scope, $http, $rootScope){
        if(localStorage.getItem(userID) != null){
            let cartlist = localStorage.getItem(userID);
            $scope.cartlist = JSON.parse(cartlist);  
        } 
        else{
          $scope.cartlist = [];
        }

        /* START FIND SIBLINGS */
        function prevOf(yourElement){
            var parent = yourElement.parent();
            var children = parent.children();
            var prev;

            for (var i = 1; i < children.length; i++){
                if (children[i] === yourElement[0]){
                    prev = children[i-1];
                }
            }

            return prev;
        }

        function nextOf(yourElement){
          var parent = yourElement.parent();
          var children = parent.children();
          var next;

          for (var i = 1; i < children.length; i++){
                if (children[i] === yourElement[0]){
                    next = children[i+1];
                }
          }

          return next;
        }
        /* END FIND SIBLINGS */

        /* START CART */
        $scope.addCart = function(krsinfo){
            let krslist = localStorage.getItem(userID)
            if(krslist === null){
                krslist = []
            }
            else{
                krslist = JSON.parse(krslist);
            }

            let subject1 = krsinfo.namaMatkul;
            let section1 = krsinfo.kodeKelas;
            let day1 = krsinfo.hari;
            let time1 = krsinfo.jam;

            let input = {subject : subject1, section : section1, day : day1, time : time1, status : 2};
            krslist.push(input);

            krsinfo.clicked = true;

            for(var i = 0; i < $scope.krsinfos.length; i++){
                if($scope.krsinfos[i].namaMatkul == subject1 && $scope.krsinfos[i].kodeKelas[0] == section1 && $scope.krsinfos[i].kodeKelas[1] == 'L'){
                    krsinfoLab = $scope.krsinfos[i];
                    let input1 = {subject : $scope.krsinfos[i].namaMatkul, section : $scope.krsinfos[i].kodeKelas, day : $scope.krsinfos[i].hari, time : $scope.krsinfos[i].jam, status : 2};
                    krslist.push(input1);
                    $scope.krsinfos[i].clicked = true;
                }
            }

            $scope.cartlist = krslist;
            localStorage.setItem(userID, JSON.stringify(krslist))
        }

        $scope.delete = function(cart, $index){
            for(var i = 0; i < $scope.krsinfos.length; i++){
                if($scope.krsinfos[i].namaMatkul == cart.subject && $scope.krsinfos[i].kodeKelas[0] == cart.section[0]){
                    $scope.krsinfos[i].clicked = false;
                }
            }
            for(var i = 0; i < $scope.cartlist.length; i++){
                console.log("loop ke " + i + ' ' + $scope.cartlist[i].section[0] + ' ' + $scope.cartlist[i].subject);
                if($scope.cartlist[i].subject == cart.subject && $scope.cartlist[i].section[0] == cart.section[0]){
                    if(i != $scope.cartlist.length - 1){
                        if($scope.cartlist[i+1].subject == cart.subject && $scope.cartlist[i+1].section[0] == cart.section[0]){
                            $scope.cartlist.splice(i, 2);
                        }
                        else {
                            $scope.cartlist.splice(i, 1);
                        }
                    } else {
                        $scope.cartlist.splice(i, 1);
                    }
                }
            }
            // if($index != 0){
            //     if($scope.cartlist[$index + 1].subject == $scope.cartlist[$index].subject){
            //         $scope.cartlist.splice($index, 2);
            //     } else if($scope.cartlist[$index - 1].subject == $scope.cartlist[$index].subject){
            //         $scope.cartlist.splice($index - 1, 2);
            //     } else {
            //         $scope.cartlist.splice($index, 1);
            //     }
            // } else if($scope.cartlist.length > 1){
            //     if($scope.cartlist[$index + 1].subject == $scope.cartlist[$index].subject){
            //         $scope.cartlist.splice($index, 2);
            //     } else {
            //         $scope.cartlist.splice($index, 1);
            //     }
            // } else {
            //     $scope.cartlist.splice($index, 1);
            // }
            localStorage.setItem(userID, JSON.stringify($scope.cartlist));
        }

        //DISINI YANG BARUUU 14-12-2017
        $scope.enrollCart = function(){
            $http({
                url : 'controller/enrollcart.php',
                method : 'POST',
                data : $scope.cartlist,
            }).then(successEnrollCallback, errorEnrollCallback);

            function successEnrollCallback(result){
                /* EDIT NEEDED */
                var hasil = result.data;
                for(var i = 0; i < $scope.cartlist.length; i++){
                    $scope.cartlist[i].status = hasil[i];
                }
                $scope.seedData();
                $rootScope.$emit("UPDATEDATA");
            }
            function errorEnrollCallback(result){
              die("cannot call enrollcart.php")
            }
        }
        $rootScope.$on("UPDATEDATA", function(){
            $scope.seedData();
        })
        //SAMPAI SINI YANG BARUUU 14-12-2017
        $scope.seedData = function(){
            $scope.krsinfos = [];
            $http({
                url : 'controller/tablekrs.php',
                method : 'GET',
            }).then(successCallback, errorCallback);
            function successCallback(result){
                $scope.krsinfos = result.data;
                for(var i = 0; i < result.data.length; i++){
                    $scope.krsinfos[i].clicked = false;
                    for(var y = 0; y < $scope.cartlist.length; y++){
                        if($scope.krsinfos[i].namaMatkul == $scope.cartlist[y].subject && $scope.krsinfos[i].kodeKelas[0] == $scope.cartlist[y].section[0]  ){
                            $scope.krsinfos[i].clicked = true;
                        }
                    }
                }
            }
            function errorCallback(result){
                console.log("failed to load tablekrs.php")
            }
        }
        /* END CART */
    });
    /* END SHOPPING CART CONTROLLER */
    //THIS IS NEWWWWW 14-12-2017
    app.controller("tableDropController", function($scope, $http, $rootScope){
        $scope.seedDataDrop = function(){
            $scope.dropinfos = [];
            $http({
                url : 'controller/tabledrop.php',
                method : 'GET',
            }).then(successCallback, errorCallback);
            function successCallback(result){
                $scope.dropinfos = result.data;
                console.log($scope.dropinfos);
                // for(var i = 0; i < result.data.length; i++){
                //     $scope.krsinfos[i].clicked = false;
                //     for(var y = 0; y < $scope.cartlist.length; y++){
                //         if($scope.krsinfos[i].namaMatkul == $scope.cartlist[y].subject){
                //             $scope.krsinfos[i].clicked = true;
                //         }
                //     }
                // }
            }
            function errorCallback(result){
                console.log("failed to load tablekrs.php")
            }
        }

        $scope.dropClass = function($index){
            var namaMatkul = $scope.dropinfos[$index].namaMatkul;
            var kodeKelas = $scope.dropinfos[$index].kodeKelas;
            var data = [];
            data.push({subject : namaMatkul, section : kodeKelas});
            var message = namaMatkul + ' - ' + kodeKelas + '\n';
            if($index != $scope.dropinfos.length - 1){
                if($scope.dropinfos[$index].namaMatkul == $scope.dropinfos[$index + 1].namaMatkul && $scope.dropinfos[$index].kodeKelas + "L" == $scope.dropinfos[$index + 1].kodeKelas){
                    var namaMatkul1 = $scope.dropinfos[$index + 1].namaMatkul;
                    var kodeKelas1 = $scope.dropinfos[$index + 1].kodeKelas;
                    data.push({subject : namaMatkul1, section : kodeKelas1});
                    message += namaMatkul1 + ' - ' + kodeKelas1 + '\n';
                }
            }
            var confirmation = confirm(message + "Will be deleted, you sure?");
            if(confirmation){
                $http({
                    url : 'controller/dropclass.php',
                    method : 'POST',
                    data : data
                }).then(successDropCallback, errorDropCallback);
                function successDropCallback(result){
                    console.log(result);
                    $scope.seedDataDrop();
                    $rootScope.$emit("UPDATEDATA");
                }
                function errorDropCallback(result){
                    console.log("failed to load dropclass.php");
                }
            }
        }
        $rootScope.$on("UPDATEDATA", function(){
            $scope.seedDataDrop();
        })
    });
    //SAMPE SINI NEWWW NYAAAA 14-12-2017
        
    // attendance

    app.controller("myAttendanceController",function($scope,$http){
        $http.get('controller/loginuser.php').then(successCallback, errorCallback);

        function successCallback(result){
            $scope.loginuser = result;
            console.log($scope.loginuser);

            $http.get('controller/getattendance.php?id=' + $scope.loginuser.data['infoID']).then(
                function(result){ // success
                    console.log(result);
                    $scope.data = result;
                    console.log('Data: ' + $scope.data);
                },
                function(result){ // failed
                    die("cannot call getattendance.php");
                });
        }
        
        function errorCallback(result){
            die("cannot call getattendance.php")
        }
    })
    /* START CALENDAR CONTROLLER */
    app.controller('calendarController',
   function($scope, $compile, $timeout, uiCalendarConfig, $http) {
    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    var data = $.param({'nim': '000000'+nim})

      var config = {headers : {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'}}
      $http.post('api/calendarweek.php', data,config).then(successCallback, errorCallback);
      function successCallback(result){
        var ev = [], obj = [], len, event = [];
        obj = result.data
        len = obj.length
        
        ev = ''
        for(let i = 0;i<len;i++){
          ev = {id: (i+1), title: obj[i].title ,start: new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamMulai) , end: new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamSelesai), mulai: Date.parse(new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamMulai)), selesai: Date.parse(new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamSelesai)), namaDosen: obj[i].namaDosen, ruangKelas: obj[i].ruangKelas};
          $scope.events.push(ev); 
        }
        // console.log(event);
      }
      function errorCallback(result){

      }

    $scope.changeTo = 'Hungarian';
    /* event source that pulls from google.com */
    $scope.eventSource = {
            url: "http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic",
            className: 'gcal-event',           // an option!
            currentTimezone: 'America/Chicago' // an option!
    };
    /* event source that contains custom events on the scope */
    $scope.events = [];
    console.log($scope.events);
    /* event source that calls a function on every view switch */
    $scope.eventsF = function (start, end, timezone, callback) {
      var s = new Date(start).getTime() / 1000;
      var e = new Date(end).getTime() / 1000;
      var m = new Date(start).getMonth();
      var events = [{title: 'Feed Me ' + m,start: s + (50000),end: s + (100000),allDay: false, className: ['customFeed']}];
      callback(events);
    };

    $scope.calEventsExt = {
       color: '#f00',
       textColor: 'yellow',
       events: [
          {type:'party',title: 'Lunch',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
          {type:'party',title: 'Lunch 2',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
          {type:'party',title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
        ]
    };
    /* alert on eventClick */
    $scope.alertOnEventClick = function( date, jsEvent, view, $event){  
        // $scope.alertMessage = (date.title + '\r' + date.namaDosen + '\r' + date.ruangKelas);

        $scope.alertMessage1 = date.title;
        $scope.alertMessage2 = date.namaDosen;
        $scope.alertMessage3 = date.ruangKelas;
    };
    /* alert on Drop */
     $scope.alertOnDrop = function(event, delta, revertFunc, jsEvent, ui, view){
       $scope.alertMessage = ('Event Dropped to make dayDelta ' + delta);
    };
    /* alert on Resize */
    $scope.alertOnResize = function(event, delta, revertFunc, jsEvent, ui, view ){
       $scope.alertMessage = ('Event Resized to make dayDelta ' + delta);
    };
    /* add and removes an event source of choice */
    $scope.addRemoveEventSource = function(sources,source) {
      var canAdd = 0;
      angular.forEach(sources,function(value, key){
        if(sources[key] === source){
          sources.splice(key,1);
          canAdd = 1;
        }
      });
      if(canAdd === 0){
        sources.push(source);
      }
    };
    /* add custom event*/
    $scope.addEvent = function() {
      $scope.events.push({
        title: 'Open Sesame',
        start: new Date(y, m, 28),
        end: new Date(y, m, 29),
        className: ['openSesame']
      });
    };
    /* remove event */
    $scope.remove = function(index) {
      $scope.events.splice(index,1);
    };
    /* Change View */
    $scope.changeView = function(view,calendar) {
      uiCalendarConfig.calendars[calendar].fullCalendar('changeView',view);
    };
    /* Change View */
    $scope.renderCalendar = function(calendar) {
      $timeout(function() {
        if(uiCalendarConfig.calendars[calendar]){
          uiCalendarConfig.calendars[calendar].fullCalendar('render');
        }
      });
    };
     /* Render Tooltip */
    $scope.eventRender = function( event, element, view ) {
        element.attr({'tooltip': event.title,
                      'tooltip-append-to-body': true});
        $compile(element)($scope);
    };
    /* config object */
    $scope.uiConfig = {
          calendar:{
            height: 440,
            width:1500,
            allDaySlot: false,
            editable:false,
            minTime:"08:00:00",
            maxTime:"18:00:00",
            slotDuration:"00:60:00",
            firstDay:1,
            defaultView:'agendaWeek',
            header:{
              left: 'title',
              center: 'agendaWeek,agendaDay',
              right: 'today prev,next'
            },
            eventClick: $scope.alertOnEventClick,
            eventDrop: $scope.alertOnDrop,
            eventResize: $scope.alertOnResize,
            eventRender: $scope.eventRender,
          }
        };

    $scope.changeLang = function() {
      if($scope.changeTo === 'Hungarian'){
        $scope.uiConfig.calendar.dayNames = ["Vasárnap", "Hétfő", "Kedd", "Szerda", "Csütörtök", "Péntek", "Szombat"];
        $scope.uiConfig.calendar.dayNamesShort = ["Vas", "Hét", "Kedd", "Sze", "Csüt", "Pén", "Szo"];
        $scope.changeTo= 'English';
      } else {
        $scope.uiConfig.calendar.dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
        $scope.uiConfig.calendar.dayNamesShort = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
        $scope.changeTo = 'Hungarian';
      }
    };
    /* event sources array*/
    $scope.eventSources = [$scope.events, $scope.eventSource, $scope.eventsF];
    $scope.eventSources2 = [$scope.calEventsExt, $scope.eventsF, $scope.events];
});
// app.controller('calendarController',
//    function($scope, $compile, $timeout, uiCalendarConfig, $http) {
//     var date = new Date();
//     var d = date.getDate();
//     var m = date.getMonth();
//     var y = date.getFullYear();
//     $scope.events = []
  
//         var data = $.param({'nim': '000000'+nim})

//         var config = {headers : {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'}}
//         $http.post('api/calendarweek.php', data,config).then(successCallback, errorCallback);
//         function successCallback(result){
//             $scope.events = [];
//             var ev = [], obj = [], len, event = [];
//             obj = result.data
//             len = obj.length
//             ev = ''
//             for(let i = 0;i<len;i++){
//             // {title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
//                   ev = {id: (i+1), title: obj[i].title ,start: new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamMulai) , end: new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamSelesai), mulai: Date.parse(new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamMulai)), selesai: Date.parse(new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamSelesai)), namaDosen: obj[i].namaDosen, ruangKelas: obj[i].ruangKelas};
//                   $scope.events.push(ev); 
//             }
//         }
//         function errorCallback(result){

//         }
  
//   //  $scope.seedDataCalendar();
//     // $rootScope.$on("UPDATEDATA", function(){
//     //   $scope.seedDataCalendar();
//     // })
//     $scope.changeTo = 'Hungarian';
//     /* event source that pulls from google.com */
//     $scope.eventSource = {
//             url: "http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic",
//             className: 'gcal-event',           // an option!
//             currentTimezone: 'America/Chicago' // an option!
//     };
//     /* event source that contains custom events on the scope */
    
//     /* event source that calls a function on every view switch */
//     $scope.eventsF = function (start, end, timezone, callback) {
//       var s = new Date(start).getTime() / 1000;
//       var e = new Date(end).getTime() / 1000;
//       var m = new Date(start).getMonth();
//       var events = [{title: 'Feed Me ' + m,start: s + (50000),end: s + (100000),allDay: false, className: ['customFeed']}];
//       callback(events);
//     };

//     $scope.calEventsExt = {
//        color: '#f00',
//        textColor: 'yellow',
//        events: [
//           {type:'party',title: 'Lunch',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
//           {type:'party',title: 'Lunch 2',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
//           {type:'party',title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
//         ]
//     };
//     /* alert on eventClick */
//     $scope.alertOnEventClick = function( date, jsEvent, view, $event){  
//         // $scope.alertMessage = (date.title + '\r' + date.namaDosen + '\r' + date.ruangKelas);

//         $scope.alertMessage1 = date.title;
//         $scope.alertMessage2 = date.namaDosen;
//         $scope.alertMessage3 = date.ruangKelas;
//     };
//     /* alert on Drop */
//      $scope.alertOnDrop = function(event, delta, revertFunc, jsEvent, ui, view){
//        $scope.alertMessage = ('Event Dropped to make dayDelta ' + delta);
//     };
//     /* alert on Resize */
//     $scope.alertOnResize = function(event, delta, revertFunc, jsEvent, ui, view ){
//        $scope.alertMessage = ('Event Resized to make dayDelta ' + delta);
//     };
//     /* add and removes an event source of choice */
//     $scope.addRemoveEventSource = function(sources,source) {
//       var canAdd = 0;
//       angular.forEach(sources,function(value, key){
//         if(sources[key] === source){
//           sources.splice(key,1);
//           canAdd = 1;
//         }
//       });
//       if(canAdd === 0){
//         sources.push(source);
//       }
//     };
//     /* add custom event*/
//     $scope.addEvent = function() {
//       $scope.events.push({
//         title: 'Open Sesame',
//         start: new Date(y, m, 28),
//         end: new Date(y, m, 29),
//         className: ['openSesame']
//       });
//     };
//     /* remove event */
//     $scope.remove = function(index) {
//       $scope.events.splice(index,1);
//     };
//     /* Change View */
//     $scope.changeView = function(view,calendar) {
//       uiCalendarConfig.calendars[calendar].fullCalendar('changeView',view);
//     };
//     /* Change View */
//     $scope.renderCalendar = function(calendar) {
//       $timeout(function() {
//         if(uiCalendarConfig.calendars[calendar]){
//           uiCalendarConfig.calendars[calendar].fullCalendar('render');
//         }
//       });
//     };
//      /* Render Tooltip */
//     $scope.eventRender = function( event, element, view ) {
//         element.attr({'tooltip': event.title,
//                       'tooltip-append-to-body': true});
//         $compile(element)($scope);
//     };
//     /* config object */
//     $scope.uiConfig = {
//           calendar:{
//             height: 440,
//             width:1500,
//             allDaySlot: false,
//             editable:false,
//             minTime:"08:00:00",
//             maxTime:"18:00:00",
//             slotDuration:"00:60:00",
//             firstDay:1,
//             defaultView:'agendaWeek',
//             header:{
//               left: 'title',
//               center: 'agendaWeek,agendaDay',
//               right: 'today prev,next'
//             },
//             eventClick: $scope.alertOnEventClick,
//             eventDrop: $scope.alertOnDrop,
//             eventResize: $scope.alertOnResize,
//             eventRender: $scope.eventRender,
//           }
//         };

//     $scope.changeLang = function() {
//       if($scope.changeTo === 'Hungarian'){
//         $scope.uiConfig.calendar.dayNames = ["Vasárnap", "Hétfő", "Kedd", "Szerda", "Csütörtök", "Péntek", "Szombat"];
//         $scope.uiConfig.calendar.dayNamesShort = ["Vas", "Hét", "Kedd", "Sze", "Csüt", "Pén", "Szo"];
//         $scope.changeTo= 'English';
//       } else {
//         $scope.uiConfig.calendar.dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
//         $scope.uiConfig.calendar.dayNamesShort = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
//         $scope.changeTo = 'Hungarian';
//       }
//     };
//     /* event sources array*/
//     $scope.eventSources = [$scope.events, $scope.eventSource, $scope.eventsF];
//     $scope.eventSources2 = [$scope.calEventsExt, $scope.eventsF, $scope.events];
// });

//dosen
app.controller('calendarDosenController',
   function($scope, $compile, $timeout, uiCalendarConfig, $http) {
    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    var data = $.param({'nim': '000000'+nim})

      var config = {headers : {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'}}
      $http.post('api/calendarweekdosen.php', data,config).then(successCallback, errorCallback);
      function successCallback(result){
        var ev = [], obj = [], len, event = [];
        obj = result.data
        len = obj.length
        ev = ''
        for(let i = 0;i<len;i++){
        // {title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
          ev = {id: (i+1), title: obj[i].title ,start: new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamMulai) , end: new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamSelesai), mulai: Date.parse(new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamMulai)), selesai: Date.parse(new Date(obj[i].y,obj[i].m,obj[i].d,obj[i].jamSelesai)), namaDosen: obj[i].namaDosen, ruangKelas: obj[i].ruangKelas};
          $scope.events.push(ev); 
        }
        // console.log(event);
      }
      function errorCallback(result){

      }

    $scope.changeTo = 'Hungarian';
    /* event source that pulls from google.com */
    $scope.eventSource = {
            url: "http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic",
            className: 'gcal-event',           // an option!
            currentTimezone: 'America/Chicago' // an option!
    };
    /* event source that contains custom events on the scope */
    $scope.events = [];
    /* event source that calls a function on every view switch */
    $scope.eventsF = function (start, end, timezone, callback) {
      var s = new Date(start).getTime() / 1000;
      var e = new Date(end).getTime() / 1000;
      var m = new Date(start).getMonth();
      var events = [{title: 'Feed Me ' + m,start: s + (50000),end: s + (100000),allDay: false, className: ['customFeed']}];
      callback(events);
    };

    $scope.calEventsExt = {
       color: '#f00',
       textColor: 'yellow',
       events: [
          {type:'party',title: 'Lunch',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
          {type:'party',title: 'Lunch 2',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
          {type:'party',title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
        ]
    };
    /* alert on eventClick */
    $scope.alertOnEventClick = function( date, jsEvent, view, $event){  
        // $scope.alertMessage = (date.title + '\r' + date.namaDosen + '\r' + date.ruangKelas);
        
        $scope.alertMessage1 = date.title;
        $scope.alertMessage2 = date.namaDosen;
        $scope.alertMessage3 = date.ruangKelas;
    };
    /* alert on Drop */
     $scope.alertOnDrop = function(event, delta, revertFunc, jsEvent, ui, view){
       $scope.alertMessage = ('Event Dropped to make dayDelta ' + delta);
    };
    /* alert on Resize */
    $scope.alertOnResize = function(event, delta, revertFunc, jsEvent, ui, view ){
       $scope.alertMessage = ('Event Resized to make dayDelta ' + delta);
    };
    /* add and removes an event source of choice */
    $scope.addRemoveEventSource = function(sources,source) {
      var canAdd = 0;
      angular.forEach(sources,function(value, key){
        if(sources[key] === source){
          sources.splice(key,1);
          canAdd = 1;
        }
      });
      if(canAdd === 0){
        sources.push(source);
      }
    };
    /* add custom event*/
    $scope.addEvent = function() {
      $scope.events.push({
        title: 'Open Sesame',
        start: new Date(y, m, 28),
        end: new Date(y, m, 29),
        className: ['openSesame']
      });
    };
    /* remove event */
    $scope.remove = function(index) {
      $scope.events.splice(index,1);
    };
    /* Change View */
    $scope.changeView = function(view,calendar) {
      uiCalendarConfig.calendars[calendar].fullCalendar('changeView',view);
    };
    /* Change View */
    $scope.renderCalendar = function(calendar) {
      $timeout(function() {
        if(uiCalendarConfig.calendars[calendar]){
          uiCalendarConfig.calendars[calendar].fullCalendar('render');
        }
      });
    };
     /* Render Tooltip */
    $scope.eventRender = function( event, element, view ) {
        element.attr({'tooltip': event.title,
                      'tooltip-append-to-body': true});
        $compile(element)($scope);
    };
    /* config object */
    $scope.uiConfig = {
          calendar:{
            height: 440,
            width:1500,
            allDaySlot: false,
            editable:false,
            minTime:"08:00:00",
            maxTime:"18:00:00",
            slotDuration:"00:60:00",
            firstDay:1,
            defaultView:'agendaWeek',
            
            header:{
              left: 'title',
              center: 'agendaWeek,agendaDay',
              right: 'today prev,next'
            },
            eventClick: $scope.alertOnEventClick,
            eventDrop: $scope.alertOnDrop,
            eventResize: $scope.alertOnResize,
            eventRender: $scope.eventRender,
          }
        };

    $scope.changeLang = function() {
      if($scope.changeTo === 'Hungarian'){
        $scope.uiConfig.calendar.dayNames = ["Vasárnap", "Hétfő", "Kedd", "Szerda", "Csütörtök", "Péntek", "Szombat"];
        $scope.uiConfig.calendar.dayNamesShort = ["Vas", "Hét", "Kedd", "Sze", "Csüt", "Pén", "Szo"];
        $scope.changeTo= 'English';
      } else {
        $scope.uiConfig.calendar.dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
        $scope.uiConfig.calendar.dayNamesShort = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
        $scope.changeTo = 'Hungarian';
      }
    };
    /* event sources array*/
    $scope.eventSources = [$scope.events, $scope.eventSource, $scope.eventsF];
    $scope.eventSources2 = [$scope.calEventsExt, $scope.eventsF, $scope.events];
});

app.controller('calendarUMNController',
   function($scope, $compile, $timeout, uiCalendarConfig, $http) {
    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

      $http.get('api/calendarumn.php').then(successCallback, errorCallback);
      function successCallback(result){
        var ev = [], obj = [], len, event = [];
        obj = result.data
        len = obj.length
        ev = ''
        for(let i = 0;i<len;i++){
        // {title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
          if(obj[i].flag == 0){
            //#3a87ad
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id};  
          }
          else if(obj[i].flag == 1){
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id, color: '#e87366'};  
          }
          else if(obj[i].flag == 2){
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id, color: '#7ddb83'};  
          }
          else if(obj[i].flag == 3){
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id, color: '#cc51b9'};  
          }
          else if(obj[i].flag == 4){
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id, color: '#f7de85'};  
          }
          else if(obj[i].flag == 5){
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id, color: '#dbb87d'};  
          }
          else if(obj[i].flag == 6){
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id, color: '#a17ddb'};  
          }
          else if(obj[i].flag == 7){
            ev = {id: obj[i].id, title: obj[i].title ,start: obj[i].start , end: obj[i].end + ' 23:59:59', id: obj[i].id};
          }
          
          $scope.events.push(ev); 
        }
        // console.log(event);
      }
      function errorCallback(result){

      }

    $scope.changeTo = 'Hungarian';
    /* event source that pulls from google.com */
    $scope.eventSource = {
            url: "http://www.google.com/calendar/feeds/usa__en%40holiday.calendar.google.com/public/basic",
            className: 'gcal-event',           // an option!
            currentTimezone: 'America/Chicago' // an option!
    };
    /* event source that contains custom events on the scope */
    $scope.events = [];
    /* event source that calls a function on every view switch */
    $scope.eventsF = function (start, end, timezone, callback) {
      var s = new Date(start).getTime() / 1000;
      var e = new Date(end).getTime() / 1000;
      var m = new Date(start).getMonth();
      var events = [{title: 'Feed Me ' + m,start: s + (50000),end: s + (100000),allDay: false, className: ['customFeed']}];
      callback(events);
    };

    $scope.calEventsExt = {
       color: '#f00',
       textColor: 'yellow',
       events: [
          {type:'party',title: 'Lunch',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
          {type:'party',title: 'Lunch 2',start: new Date(y, m, d, 12, 0),end: new Date(y, m, d, 14, 0),allDay: false},
          {type:'party',title: 'Click for Google',start: new Date(y, m, 28),end: new Date(y, m, 29),url: 'http://google.com/'}
        ]
    };
    /* alert on eventClick */
    $scope.alertOnEventClick = function( date, jsEvent, view, $event){  
        $scope.alertMessage1 = date.title;
        $scope.alertMessage2 = Date.parse(date.start)
        $scope.alertMessage3 = Date.parse(date.end)
        
    };
    /* alert on Drop */
     $scope.alertOnDrop = function(event, delta, revertFunc, jsEvent, ui, view){
       $scope.alertMessage = ('Event Dropped to make dayDelta ' + delta);
    };
    /* alert on Resize */
    $scope.alertOnResize = function(event, delta, revertFunc, jsEvent, ui, view ){
       $scope.alertMessage = ('Event Resized to make dayDelta ' + delta);
    };
    /* add and removes an event source of choice */
    $scope.addRemoveEventSource = function(sources,source) {
      var canAdd = 0;
      angular.forEach(sources,function(value, key){
        if(sources[key] === source){
          sources.splice(key,1);
          canAdd = 1;
        }
      });
      if(canAdd === 0){
        sources.push(source);
      }
    };
    /* add custom event*/
    $scope.addEvent = function() {
      $scope.events.push({
        title: 'Open Sesame',
        start: new Date(y, m, 28),
        end: new Date(y, m, 29),
        className: ['openSesame']
      });
    };
    /* remove event */
    $scope.remove = function(index) {
      $scope.events.splice(index,1);
    };
    /* Change View */
    $scope.changeView = function(view,calendar) {
      uiCalendarConfig.calendars[calendar].fullCalendar('changeView',view);
    };
    /* Change View */
    $scope.renderCalendar = function(calendar) {
      $timeout(function() {
        if(uiCalendarConfig.calendars[calendar]){
          uiCalendarConfig.calendars[calendar].fullCalendar('render');
        }
      });
    };
     /* Render Tooltip */
    $scope.eventRender = function( event, element, view ) {
        element.attr({'tooltip': event.title,
                      'tooltip-append-to-body': true});
        $compile(element)($scope);
    };
    /* config object */
    $scope.uiConfig = {
          calendar:{
            height: 440,
            width:1500,
            allDaySlot: false,
            editable:false,
            firstDay:1,
            defaultView:'month',

            header:{
              left: 'title',
              center: '',
              right: 'today prev,next'
            },
            eventClick: $scope.alertOnEventClick,
            eventDrop: $scope.alertOnDrop,
            eventResize: $scope.alertOnResize,
            eventRender: $scope.eventRender,
          }
        };

    $scope.changeLang = function() {
      if($scope.changeTo === 'Hungarian'){
        $scope.uiConfig.calendar.dayNames = ["Vasárnap", "Hétfő", "Kedd", "Szerda", "Csütörtök", "Péntek", "Szombat"];
        $scope.uiConfig.calendar.dayNamesShort = ["Vas", "Hét", "Kedd", "Sze", "Csüt", "Pén", "Szo"];
        $scope.changeTo= 'English';
      } else {
        $scope.uiConfig.calendar.dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
        $scope.uiConfig.calendar.dayNamesShort = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
        $scope.changeTo = 'Hungarian';
      }
    };
    /* event sources array*/
    $scope.eventSources = [$scope.events, $scope.eventSource, $scope.eventsF];
    $scope.eventSources2 = [$scope.calEventsExt, $scope.eventsF, $scope.events];
    });
    /* END CALENDAR CONTROLLER */

    /* START MY INFORMATION CONTROLLER */
    app.controller("myInformationController",function($scope, $http){
        $http.get('controller/loginuser.php').then(successCallback, errorCallback);

        function successCallback(result){
            $scope.loginuser = result;
            console.log($scope.loginuser);
        }
        
        function errorCallback(result){
            die("cannot call loginuser.php")
        }
    });
    /* END MY INFORMATION CONTROLLER */

    /* START DOUGHNUT CHART */
    app.controller('donutController', function($scope,$http,$compile){
      // var data = $.param({'id': userID})

      // var config = {headers : {'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'}}
      // $http.post('api/ipk.php', data,config).then(successCallback, errorCallback);
      // function successCallback(result){
      //   var obj = [], len, temp = [];
      //   obj = result.data
      //   len = obj.length
      //   temp = []
      //   $scope.data = []
      //   for(let i = 0;i<len;i++){
      //     let d = parseFloat(obj[i].value)
      //     temp = {label: obj[i].label,value:d};
      //     $scope.data.push(temp);
      //     console.log($scope.data[i].value);
      //   }
      // }
      // function errorCallback(result){

      // }
      $scope.data = [
          {label: "GPA", value: 3.92},
          {label: "", value: 4-3.92}
        ] 
      // if(userID == 29){
      //   $scope.data = [
      //     {label: "GPA", value: 3.91},
      //     {label: "", value: 4-3.91}
      //   ]
      // }
      // else if(userID == 28){
      //   $scope.data = [
      //     {label: "GPA", value: 3.92},
      //     {label: "", value: 4-3.92}
      //   ] 
      // }
      // else if(userID == 30){
      //   $scope.data = [
      //     {label: "GPA", value: 3.68},
      //     {label: "", value: 4-3.68}
      //   ]
      // }
      // else if(userID == 31){
      //   $scope.data = [
      //     {label: "GPA", value: 3.82},
      //     {label: "", value: 4-3.82}
      //   ]
      // }
      // else if(userID == 32){
      //   $scope.data = [
      //     {label: "GPA", value: 3.80},
      //     {label: "", value: 4-3.80}
      //   ]
      // }
        console.log($scope.data)  
    });
    /* END DOUGHNUT CHART */
    
    /* START SHOWCASE */
    angular.module('showcase.angularWay',['datatables','ngResource']).controller('angularWayController', angularWayController);

    function angularWayController($resource){
        var vm = this;
        $resource('data.json').query().$promise.then(function(persons){
            vm.persons = persons;
        });
    }
    /* END SHOWCASE */
/* END APP MODULE */

/* START LOGIN MODULE */
let loginapp = angular.module("loginApp", []);
loginapp.controller("messageController", function($scope, $http){
    $scope.showMessage = false;
    $scope.forgotpassword = function(){
        if($scope.email != undefined){
            $http({
                    url : 'controller/forgotpassword.php',
                    method : 'POST',
                    data : $scope.email
                }).then(successCallback, errorCallback);

             function successCallback(result){
                $scope.message = result['data'];
                $scope.showMessage = true;
            }

            function errorCallback(result){
                die("cannot call forgotpassword.php")
            }
        }
    }

    $scope.isShowMessage = function(){
        if($scope.showMessage == true){
            return true;
        } else {
            return false;
        }
    }
    $('#modalForgotPassword').on("hide.bs.modal", function(){
        /*edit*/
    });
})
/* END LOGIN MODULE */