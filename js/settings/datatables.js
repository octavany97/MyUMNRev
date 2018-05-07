$(document).ready(function(){
	var tabelKRS = function(){
		if($(".datatable").length > 0){                
			$(".datatable").dataTable({
                "searching": false,
                "paging":   false,
                "ordering": false,
                "info":     false,
				"columns":[
					null,
					null,
					null,
					null,
					null,
					null,
					null,
					null,
					null
				]
			});
			$(".datatable").on('page.dt',function(){
					onresize(100);
			});
		}

        if($(".datatableDrop").length > 0){
            $(".datatableDrop").dataTable({
                "searching": false,
                "paging":   false,
                "ordering": false,
                "info":     false,
                "columns":[
                    null,
                    null,
                    null,
                    null,
                    null
                ]
            });
            $(".datatableDrop").on('page.dt',function(){
                    onresize(100);
            });
        }

		$.fn.dataTable.ext.order['dom-text'] = function(settings,col){
			return this.api().column(col,{order:'index'}).nodes().map(function(td,i){
				return $('input',td).val();
			});
		}

		$.fn.dataTable.ext.order['dom-text-numeric'] = function(settings,col){
			return this.api().column(col,{order:'index'}).nodes().map(function(td,i){
				return $('input',td).val()*1;
			});
		}

		$.fn.dataTable.ext.order['dom-select'] = function(settings,col){
			return this.api().column(col,{order:'index'}).nodes().map(function(td,i){
				return $('select',td).val();
			});
		}

		$.fn.dataTable.ext.order['dom-checkbox'] = function(settings,col){
			return this.api().column(col,{order:'index'}).nodes().map(function(td,i){
			   return $('input', td).prop('checked') ? '1' : '0';
			});
		}
	}();
	
	$(".dataTables_length select").on("change",function(){
        onresize();
    });

    $(".button-collapse").sideNav();


});

function onresize(timeout){    
    timeout = timeout ? timeout : 200;

    setTimeout(function(){
        page_content_onresize();
    },timeout);
}

function page_content_onresize(){
    $(".page-content,.content-frame-body,.content-frame-right,.content-frame-left").css("width","").css("height","");
    
    var content_minus = 0;
    content_minus = ($(".page-container-boxed").length > 0) ? 40 : content_minus;
    content_minus += ($(".page-navigation-top-fixed").length > 0) ? 50 : 0;
    
    var content = $(".page-content");
    var sidebar = $(".page-sidebar");
    
    if(content.height() < $(document).height() - content_minus){        
        content.height($(document).height() - content_minus);
    }        
    
    if(sidebar.height() > content.height()){        
        content.height(sidebar.height());
    }
    
    if($(window).width() > 1024){
        
        if($(".page-sidebar").hasClass("scroll")){
            if($("body").hasClass("page-container-boxed")){
                var doc_height = $(document).height() - 40;
            }else{
                var doc_height = $(window).height();
            }
           $(".page-sidebar").height(doc_height);
           
       }
       
        if($(".content-frame-body").height() < $(document).height()-162){
            $(".content-frame-body,.content-frame-right,.content-frame-left").height($(document).height()-162);            
        }else{
            $(".content-frame-right,.content-frame-left").height($(".content-frame-body").height());
        }
        
        $(".content-frame-left").show();
        $(".content-frame-right").show();
    }else{
        $(".content-frame-body").height($(".content-frame").height()-80);
        
        if($(".page-sidebar").hasClass("scroll"))
           $(".page-sidebar").css("height","");
    }
    
    if($(window).width() < 1200){
        if($("body").hasClass("page-container-boxed")){
            $("body").removeClass("page-container-boxed").data("boxed","1");
        }
    }else{
        if($("body").data("boxed") === "1"){
            $("body").addClass("page-container-boxed").data("boxed","");
        }
    }
}