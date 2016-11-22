/**
 * Created by a on 2016/4/1.
 */
$(function () {
    clickLeftTab("");
})

function clickLeftTab(url2){
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
    var obj=$(".sidebar-nav li");
    var length=obj.length;
    for(var i=0;i<length;i++){
        var url3=obj.eq(i).children("a").attr("href");
        if(url3==url2){
            if(url2=="personcenter.php"){
                obj.eq(i).addClass("on");
            }else {
                obj.eq(i).parent().parent().addClass("on");
                obj.eq(i).addClass("current");
            }
            return;
        }
    }
}
function hideLabel(i){
    //var label=$(".upload");
    //label.eq(i).children(".upload-info").hide();
    //label.eq(i).children("label").removeAttr("onclick");
    //label.eq(i).children("label").attr("onclick","labelUpload("+i+")");
}
function labelUpload(i){
    //var label=$(".upload");
    //label.children(".upload-info").hide();
    //label.eq(i).children(".upload-info").show();
    //label.eq(i).children("label").removeAttr("onclick");
    //label.eq(i).children("label").attr("onclick","hideLabel("+i+")");
    //var label=$(".upload-info");
    //var length=label.length;
    //for(var a=0;a<label.length;a++){
    //    if(a==i){
    //        label.eq(a).show();
    //    }else{
    //        label.eq(a).hide();
    //    }
    //}
}

function picUpload(){
    $("#upload_pic").click();
}
function pic_change(){
    var url=window.location.href;
    $("#pic_url").val(url);
    $("#pic_form").submit();
}
$(document).ready(function(){
    $(".badge").mouseover(function(){
        $(".bubble").show();
    })
    $(".badge").mouseleave(function(){
        $(".bubble").hide();
    })
})