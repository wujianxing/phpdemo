jQuery(document).ready(function($) {	
			if($("meta[name=toTop]").attr("content")=="true"){
				$("<div id='toTop'><img src='../../assets/images/totop.png' width='60'></div>").appendTo('body');
				$("#toTop").css({
					width: '50px',
					height: '50px',
					bottom:'75px',
					right:'80px',
					position:'fixed',
					cursor:'pointer',
					zIndex:'999999',
				});
				if($(this).scrollTop()==0){
						$("#toTop").hide();
					}
				$(window).scroll(function(event) {
					/* Act on the event */
					if($(this).scrollTop()==0){
						$("#toTop").hide();
					}
					if($(this).scrollTop()!=0){
                        var width=document.body.clientWidth;
                        if(width>768)
						$("#toTop").show();
					}
				});	
					$("#toTop").click(function(event) {
								/* Act on the event */
								$("html,body").animate({
									scrollTop:"0px"},
									666
									)
							});
				}
		});