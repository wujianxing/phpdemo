/**
 * Created by a on 2016/4/5.
 */
(function () {
    $.MsgBox = {
        Alert: function (title, msg,istrue,callback) {
            GenerateHtml("alert",istrue, title, msg);
            btnOk(callback); //alert只是弹出消息，因此没必要用到回调函数callback
            btnNo();
            $('#queryModal').on('hidden.bs.modal', function () {
                if (typeof (callback) == 'function') {
                    callback();
                }
            });
        },
        Confirm: function (title, msg,istrue, callback) {
            GenerateHtml("confirm",istrue, title, msg);
            btnOkConfirm(callback);
            btnNo();
        },
        WaitShow:function(msg){
            waitHtml(msg);
        },
        WaitHide:function(msg){
            waitHide();
        }
    }
    var waitHide=function(){
        $('#queryWait').modal('hide');
    }
    var waitHtml=function (msg){
        var obj=$("#queryWait");
        if(obj.html()==null) {
            var _html = '';
            _html += '<div class="modal fade" id="queryWait" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">';
            _html += '<div class="modal-dialog" role="document">';
            _html += '<div class="modal-content waitAlert" style="border-radius: 50px;">';
            _html += '<div class="spinner">';
            _html += '<div class="double-bounce1"></div>';
            _html += '<div class="double-bounce2"></div>';
            _html += '<div style="color:#fff;position: absolute;left:100px;width:500px;top:30%;font-size: 15pt" id="wait_msg">' + msg + '</div>';
            _html += '</div>';
            _html += '</div>';
            _html += '</div>';
            _html += '</div>';
            $("body").append(_html);
        }else{
            $("#wait_msg").html(msg);
        }
        $('#queryWait').modal('show');
    }

    //生成Html
    var GenerateHtml = function (type,istrue, title, msg) {
        var obj=$("#queryModal");
        if(obj.html()==null) {
            var _html = "";

            //_html += '<div id="mb_box"></div><div id="mb_con"><span id="mb_tit">' + title + '</span>';
            //_html += '<a id="mb_ico">x</a><div id="mb_msg">' + msg + '</div><div id="mb_btnbox">';
            //
            //if (type == "alert") {
            //    _html += '<input id="mb_btn_ok" type="button" value="确定" />';
            //}
            //if (type == "confirm") {
            //    _html += '<input id="mb_btn_ok" type="button" value="确定" />';
            //    _html += '<input id="mb_btn_no" type="button" value="取消" />';
            //}
            //_html += '</div></div>';
            //
            ////必须先将_html添加到body，再设置Css样式
            //$("body").append(_html); GenerateCss();
            _html += '<div class="modal fade" id="queryModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">';
            _html += '<div class="modal-dialog" role="document">';
            _html += '<div class="modal-content">';
            _html += '<div class="modal-header">';
            _html += '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
            _html += '<h4 class="modal-title" id="myModalLabel">' + title + '</h4>';
            _html += '</div>';
            _html += '<div class="modal-body text-center">';
            if(istrue==1){
                _html += '<div class="icon-pic"><img id="alert-pic" src="../../assets/images/icon-checked.png" width="95" alt=""></div>';
            }else{
                _html += '<div class="icon-pic"><img id="alert-pic" src="../../assets/images/icon_false.png" width="95" alt=""></div>';
            }
            _html += '<div class="queryModal-content">';
            _html += '<p id="myModalMessage">' + msg + '</p>';
            _html += '</div>';
            if (type == 'alert') {
                _html += '<a href="javascript:;" id="btn_ok" class="btn btn-blue">确定</a>';
                _html += '<a href="javascript:;" id="btn_ok2" class="btn btn-blue" style="display: none">确定</a>';
                _html += '<a href="javascript:;" id="btn_no" class="btn btn-gray" style="margin-left: 10px;display: none">取消</a>';
            }
            if (type == 'confirm') {
                _html += '<a href="javascript:;" id="btn_ok" class="btn btn-blue" style="display: none">确定</a>';
                _html += '<a href="javascript:;" id="btn_ok2" class="btn btn-blue">确定</a>';
                _html += '<a href="javascript:;" id="btn_no" class="btn btn-gray" style="margin-left: 10px">取消</a>';
            }
            _html += '</div>';
            _html += '</div>';
            _html += '</div>';
            _html += '</div>';
            $("body").append(_html);
        }else{
            $("#myModalLabel").html(title);
            $("#myModalMessage").html(msg);
            if (type == 'alert') {
                $("#btn_ok").css("display","");
                $("#btn_ok2").css("display","none");
                $("#btn_no").css("display","none");
            }
            if (type == 'confirm') {
                $("#btn_ok").css("display","none");
                $("#btn_ok2").css("display","");
                $("#btn_no").css("display","");
            }
            if(istrue==1){
                $("#alert-pic").attr("src","../../assets/images/icon-checked.png");
            }else{
                $("#alert-pic").attr("src","../../assets/images/icon_false.png");
            }
        }
        $('#queryModal').modal('show');
    }

    //生成Css
    //var GenerateCss = function () {
    //
    //    $("#mb_box").css({ width: '100%', height: '100%', zIndex: '99999', position: 'fixed',
    //        filter: 'Alpha(opacity=60)', backgroundColor: 'black', top: '0', left: '0', opacity: '0.6'
    //    });
    //
    //    $("#mb_con").css({ zIndex: '999999', width: '400px', position: 'fixed',
    //        backgroundColor: 'White', borderRadius: '15px'
    //    });
    //
    //    $("#mb_tit").css({ display: 'block', fontSize: '14px', color: '#444', padding: '10px 15px',
    //        backgroundColor: '#DDD', borderRadius: '15px 15px 0 0',
    //        borderBottom: '3px solid #009BFE', fontWeight: 'bold'
    //    });
    //
    //    $("#mb_msg").css({ padding: '20px', lineHeight: '20px',
    //        borderBottom: '1px dashed #DDD', fontSize: '13px'
    //    });
    //
    //    $("#mb_ico").css({ display: 'block', position: 'absolute', right: '10px', top: '9px',
    //        border: '1px solid Gray', width: '18px', height: '18px', textAlign: 'center',
    //        lineHeight: '16px', cursor: 'pointer', borderRadius: '12px', fontFamily: '微软雅黑'
    //    });
    //
    //    $("#mb_btnbox").css({ margin: '15px 0 10px 0', textAlign: 'center' });
    //    $("#mb_btn_ok,#mb_btn_no").css({ width: '85px', height: '30px', color: 'white', border: 'none' });
    //    $("#mb_btn_ok").css({ backgroundColor: '#168bbb' });
    //    $("#mb_btn_no").css({ backgroundColor: 'gray', marginLeft: '20px' });
    //
    //
    //    //右上角关闭按钮hover样式
    //    $("#mb_ico").hover(function () {
    //        $(this).css({ backgroundColor: 'Red', color: 'White' });
    //    }, function () {
    //        $(this).css({ backgroundColor: '#DDD', color: 'black' });
    //    });
    //
    //    var _widht = document.documentElement.clientWidth; //屏幕宽
    //    var _height = document.documentElement.clientHeight; //屏幕高
    //
    //    var boxWidth = $("#mb_con").width();
    //    var boxHeight = $("#mb_con").height();
    //
    //    //让提示框居中
    //    $("#mb_con").css({ top: (_height - boxHeight) / 2 + "px", left: (_widht - boxWidth) / 2 + "px" });
    //}


    //确定按钮事件
    var btnOk = function (callback) {
        $("#btn_ok").click(function () {
            $("#queryModal").modal('hide');
        });
    }

    var btnOkConfirm = function (callback) {
        $("#btn_ok2").click(function () {
            $("#queryModal").modal('hide');
            callback();
        });
    }

    //取消按钮事件
    var btnNo = function () {
        $("#btn_no").click(function () {
            $("#queryModal").modal('hide');
        });
    }
})();