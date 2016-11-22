    $(document).ready(function(){
    	$(".list tbody tr:even").css("background-color","#fff");
        $(".list tbody tr:odd").css("background-color","#f7f7f7");
        $(".left tbody tr:even").css("background-color","#fff");
 	    $(".left tbody tr:odd").css("background-color","#f7f7f7");
        $(".left tbody tr").click(function(){
 	         $(".left tbody tr").css("font-weight","normal");
             $(this).css("font-weight","bold");
     });
		$(".list td input:text").attr("readonly","readonly");
        $(".pageButton input:eq(0)").mouseover(function(){
     	   $(" .pageButton input:eq(0)").css({"background-color":"#27a9e3","color":"#fff"});
     	   });
        $(".pageButton input:eq(0)").mouseout(function(){
       	   $(" .pageButton input:eq(0)").css({"background-color":"#fff","color":"#27a9e3"});
       	   });
        $(".pageButton input:eq(1)").mouseover(function(){
      	   $(" .pageButton input:eq(1)").css({"background-color":"#27a9e3","color":"#fff"});
      	   });
        $(".pageButton input:eq(1)").mouseout(function(){
      	   $(" .pageButton input:eq(1)").css({"background-color":"#fff","color":"#27a9e3"});
      	   });
        $(".pageButton input:eq(2)").mouseover(function(){
      	   $(" .pageButton input:eq(2)").css({"background-color":"#27a9e3","color":"#fff"});
      	   });
         $(".pageButton input:eq(2)").mouseout(function(){
       	   $(" .pageButton input:eq(2)").css({"background-color":"#fff","color":"#27a9e3"});
       	   });
         $(".pageButton input:eq(3)").mouseover(function(){
       	   $(" .pageButton input:eq(3)").css({"background-color":"#27a9e3","color":"#fff"});
       	   });
          $(".pageButton input:eq(3)").mouseout(function(){
        	   $(" .pageButton input:eq(3)").css({"background-color":"#fff","color":"#27a9e3"});
        	   });
          $(".find").mouseover(function(){
          	   $(".find").css("background-color","#4b9EE5");
          	   });
          $(".find").mouseout(function(){
           	   $(".find").css("background-color","#428bca");
           	   });
		$(".add").mouseover(function(){
			$(".add").css("background-color","#61ca61");
		});
		$(".add").mouseout(function(){
			$(".add").css("background-color","#5cb85c");
		});
          $(".clear").mouseover(function(){
         	   $(".clear").css("background-color","#ec4d48");
         	   });
          $(".clear").mouseout(function(){
          	   $(".clear").css("background-color","#d95347");
          	   });
          $(".back").mouseover(function(){
        	   $(".back").css("background-color","#61ca61");
        	   });
         $(".back").mouseout(function(){
         	   $(".back").css("background-color","#5cb85c");
         	   });
         $(".delBtn").mouseover(function(){
        	   $(".delBtn").css("background-color","#7867d0");
        	   });
          $(".delBtn").mouseout(function(){
         	   $(".delBtn").css("background-color","#6b5cb8");
         	   });
          $(".import").mouseover(function(){
        	   $(".import").css("background-color","#886e9c");
        	   });
         $(".import").mouseout(function(){
         	   $(".import").css("background-color","#766186");
         	   });
         $(".export").mouseover(function(){
       	   $(".export").css("background-color","#cda483");
       	   });
        $(".export").mouseout(function(){
        	   $(".export").css("background-color","#bb997d");
        	   });
        $(".save").mouseover(function(){
     	   $(".save").css("background-color","#4b9EE5");
     	   });
        $(".save").mouseout(function(){
     	   $(".save").css("background-color","#428bca");
     	   });
         $(".go").mouseover(function(){
      	   $(".go").css("background-color","#ffb53e");
      	   });
        $(".go").mouseout(function(){
       	   $(".go").css("background-color","#ff9900");
       	   });

    });
    function doKey(e) {
        var ev = e || window.event; //获取event对象
        var obj = ev.target || ev.srcElement; //获取事件源
        var t = obj.type || obj.getAttribute('type'); //获取事件源类型
        if (ev.keyCode == 8 && t != "password" && t != "text" && t != "textarea") {
            return false;
        }
    }
    //禁止后退键 作用于Firefox、Opera
    document.onkeypress=doKey;
    //禁止后退键  作用于IE、Chrome
    document.onkeydown=doKey;