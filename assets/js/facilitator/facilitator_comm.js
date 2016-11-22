/**
 * Created by a on 2016/4/1.
 */
$(function () {
    $(".navbar-nav li").removeClass("active");
    $(".navbar-nav li:eq(3)").addClass("active");
})

$(".shop-map li").hover(function(){
    $(".shop-map li").removeClass("active");
    var index=$(this).index();
    if(index==0){
        $(".shop-map li").eq(0).addClass("active");
    }else if(index==1){
        $(".shop-map li").eq(1).addClass("active");
    }else if(index==2){
        $(".shop-map li").eq(2).addClass("active");
    }else if(index==3){
        $(".shop-map li").eq(3).addClass("active");
    }
})