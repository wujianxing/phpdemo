/**
 * Created by a on 2016/4/1.
 */
$(function () {
    //$(".navbar-nav li").removeClass("active");
    //$(".navbar-nav li:eq(4)").addClass("active");
    clickHelpLeftTab("");
})
function clickHelpLeftTab(url2){
    if(url2=="") {
        var url = window.location.href;
        var i=url.indexOf("view");
        var j=url.indexOf("?");
        if(j>0){
            var n=j-i-5;
            url2=url.substr(i+5,n);
        }else{
            url2=url.substr(i+5);
        }

    }
    var obj=$(".help-sidebar li");
    var length=obj.length;
    obj.removeClass("active");
    for(var i=0;i<length;i++){
        var url3=obj.eq(i).children("a").attr("href");
        if(url3==url2){
            obj.eq(i).addClass("active");
            return;
        }
    }
}
