<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta name="toTop" content="true">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>百朋金融</title>
    <link href="../../assets/style/style.css" rel="stylesheet">
    <link href="../../assets/style/lib/slick.css" rel="stylesheet">
    <link href="../../assets/style/lib/animate.min.css" rel="stylesheet">
    <!--<script type="text/javascript" src="../../assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="../../assets/js/float_zxx.js"></script>-->
    <!--[if lt IE 9]>
    <script src="../../assets/js/lib/html5shiv.min.js"></script>
    <script src="../../assets/js/lib/respond.min.js"></script>
    <![endif]-->
    <style>
        .three-img {width:222px;}
    </style>
</head>

<body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" id="ad-dialog">
        <div class="modal-content" id="ad-modal" style="cursor:pointer">
            <div class="modal-body" onclick="gotoLuckly()" style="background:url('../../assets/images/invest/luckly_web.jpg') no-repeat;
             width:100%;height:100%;background-size:100% 100%;">
                <!--<img src="../../assets/images/invest/luckly-web.png">-->
            </div>
        </div>
    </div>
</div>
<!--[首页浮窗结束]-->
<div class="section1 section-header">
    <div class="container">
        <?php include "../../public/head.php";?>
        <div class="header-cont">
            <h3>不管你想做什么，百朋都能帮到你！</h3>
            <p>专注于为年轻人提供培训+服务类消费分期，让你用最轻松的方式，享受最多样精彩的生活。<br/>再也不需要担心现金流暂时不充裕而无法尽兴。</p>
            <div class="start-btn">
                <a href="../../borrow/view/usermoney.php" class="btn-instalment">靠谱分期
                    <!--<div class="row-btn"><img src="../../assets/images/home/row-btn@2x.png" alt=""></div>-->
                    <!--<span>首次分期可享12期免息优惠！</span>-->
                </a>
                <a href="../../invest/view/makemoney.php" class="btn-finance">轻松理财</a>
            </div>
        </div>
        <div class="animation-holder">
            <div class="canvas-coffee"><img src="../../assets/images/home/coffeecup.png" alt=""></div>
            <div class="canvas-pen-1"><img src="../../assets/images/home/pen01.png" alt=""></div>
            <div class="canvas-pen-2"><img src="../../assets/images/home/pen02.png" alt=""></div>
            <div class="canvas-pen-3"><img src="../../assets/images/home/pen03.png" alt=""></div>
            <div class="canvas-notepad"><img src="../../assets/images/home/notepad.png" alt=""></div>
            <div class="canvas-photo-1"><img src="../../assets/images/home/pic01.png" alt=""></div>
            <div class="canvas-photo-2"><img src="../../assets/images/home/pic02.png" alt=""></div>
        </div>
    </div>
</div>
<div class="section-intro">
    <div class="item"><img src="../../assets/images/home/s0-intro1.jpg" alt=""></div>
    <div class="item"><img src="../../assets/images/home/s0-intro2.jpg" alt=""></div>
</div>
<div class="section2">
    <div class="container">
        <h3 class="section-title">线下生活场景里直接申请消费分期，轻松简便</h3>
        <div class="app-show">
            <div class="device-frame">
                <div class="image-slides" id="sync1">
                    <div class="item">
                        <img class="three-img" src="../../assets/pic/index-phone1.png" alt="">
                    </div>
                    <div class="item">
                        <img class="three-img" src="../../assets/pic/index-phone3.png" alt="">
                    </div>
                    <div class="item">
                        <img class="three-img" src="../../assets/pic/index-phone2.png" alt="">
                    </div>
                    <div class="item">
                        <img class="three-img" src="../../assets/pic/index-phone4.png" alt="">
                    </div>
                </div>
                <img class="device init-image" src="../../assets/images/home/device.png" >
                <div class="content-text">
                    <div id="show-arrow"></div>
                    <div class="" id="sync2">
                        <div class="text-slide item">
                            <h4>发起分期</h4>
                            <p>新用户下载百朋app后，可扫码或填写编码发起分期。</p>
                            <div class="app-download">
                                <a href="javascript:window.open('https://itunes.apple.com/cn/app/bai-peng-fen-qi/id1129173888?mt=8');" class="btn btn-ios">IOS 版</a>
                                <a href="javascript:;" class="btn btn-andriod">Andriod 版</a>
                                <span><img src="../../assets/images/home/coming-soon.png" width="150" alt=""></span>
                            </div>
                        </div>
                        <div class="text-slide item">
                            <h4>完善资料</h4>
                            <p>分期申请提交后，用户通过app填写资料即可。</p>
                            <div class="app-download">
                                <a href="#ios-app" class="btn btn-ios">IOS 版</a>
                                <a href="javascript:window.open('https://itunes.apple.com/cn/app/bai-peng-fen-qi/id1129173888?mt=8');" class="btn btn-ios">IOS 版</a>
                                <span><img src="../../assets/images/home/coming-soon.png" width="150" alt=""></span>
                            </div>
                        </div>
                        <div class="text-slide item">
                            <h4>我要理财</h4>
                            <p>小微分期债权组成的百朋标的，是最安全可靠的理财方式。</p>
                            <div class="app-download">
                                <a href="#ios-app" class="btn btn-ios">IOS 版</a>
                                <a href="javascript:window.open('https://itunes.apple.com/cn/app/bai-peng-fen-qi/id1129173888?mt=8');" class="btn btn-ios">IOS 版</a>
                                <span><img src="../../assets/images/home/coming-soon.png" width="150" alt=""></span>
                            </div>
                        </div>
                        <div class="text-slide item">
                            <h4>优选商家</h4>
                            <p>4大板块，100+精品合作商家供你选择。</p>
                            <div class="app-download">
                                <a href="#ios-app" class="btn btn-ios">IOS 版</a>
                                <a href="javascript:window.open('https://itunes.apple.com/cn/app/bai-peng-fen-qi/id1129173888?mt=8');" class="btn btn-ios">IOS 版</a>
                                <span><img src="../../assets/images/home/coming-soon.png" width="150" alt=""></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section3">
    <div class="service-lists">
        <a href="../../facilitator/view/goodshop-list.php?state=3" class="item item1">
            <div class="item-name">精品公寓</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=1" class="item item2">
            <div class="item-name">职业滑雪教练培训</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=1" class="item item3">
            <div class="item-name">健身俱乐部</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=1" class="item item4">
            <div class="item-name">职业健身教练培训</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=1" class="item item5">
            <div class="item-name">舞蹈/瑜伽工作室</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=2" class="item item6">
            <div class="item-name">早教幼教</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=3" class="item item7">
            <div class="item-name">摄影工作室</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=2" class="item item8">
            <div class="item-name">英语培训</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=1" class="item item9">
            <div class="item-name">旅游度假</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=3" class="item item10">
            <div class="item-name">留学咨询</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=2" class="item item11">
            <div class="item-name">化妆美容美发职业培训</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=2" class="item item12">
            <div class="item-name">IT培训</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=3" class="item item13">
            <div class="item-name">牙科诊所</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=1" class="item item14">
            <div class="item-name">旅游出国</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
        <a href="../../facilitator/view/goodshop-list.php?state=4" class="item item15">
            <div class="item-name">婚典策划</div>
            <span class="point"><img src="../../assets/images/icon-off.png" alt=""></span>
        </a>
    </div>
</div>
<div class="section4">
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-4">
                <div class="icon-img"><img src="../../assets/images/home/s4-1.png" alt=""></div>
                <h4>我们是谁</h4>
                <p>百朋专注于年轻族群的金融服务，<br/>
                    并且想把这件事做到更快、更好、更便宜。<br/>
                    我们带着不同国家和城市的生活经历聚到一起，<br/>
                    希望能够为中国的年轻族群<br/>
                    带来更棒的线下消费的分期体验。</p>
            </div>
            <div class="col-sm-4">
                <div class="icon-img"><img src="../../assets/images/home/s4-2.png" alt=""></div>
                <h4>我们在做什么</h4>
                <p><百朋分期>是年轻人的服务类消费分期渠道，<br/>
                        通过APP与线下消费场景完美结合。<br/>
                        目前我们已经和超过50家本地精品商家合作，<br/>
                        花式承包了年轻人的生活健康需求<br/>
                        以及自我提升需求。</p>
            </div>
            <div class="col-sm-4">
                <div class="icon-img"><img src="../../assets/images/home/s4-3.png" alt=""></div>
                <h4>为什么选择我们</h4>
                <p>百朋通过互联网技术极大提升了分期的<br/>
                    安全性，给用户和商家都带来了最好的体验。<br/>
                    由于利率合理、申请方便、服务贴心等特点<br/>
                    被年轻人所喜爱。从长沙起步的百朋，<br/>
                    很快将和众多二线城市的年轻人见面啦。
                </p>
            </div>
        </div>
    </div>
</div>
<div class="section5">
    <div class="section-comment">
        <div class="item">
            <div class="item-left">
                <div class="comment-content">
                    <div class="comment-txt">
                        “ 跳舞不光是带给大家快乐的一件事，<br/>
                        更是很多年轻学生追求的梦想。<br/>
                        而百朋真正帮助了我的学生们<br/>
                        更早的去着手实现他们的梦想。”
                    </div>
                    <div class="avt"><img src="../../assets/pic/chenzhen.png" alt=""></div>
                    <div class="name">陈朕老师</div>
                    <div class="company">蚂蚁军团爵士舞工作室</div>
                </div>
            </div>
            <div class="item-right">
                <div class="comment-pic">
                    <img style="width:100%;height:531px" src="../../assets/pic/s5-1.png" alt="">
                </div>
            </div>
        </div>
        <div class="item">
            <div class="item-left">
                <div class="comment-content">
                    <div class="comment-txt">
                        “ 我们的职业健身教练培训班有将近一半的学员会选择百朋分期。并且前来咨询和报名的学员数量有很大的增长，这些都有百朋的功劳。”
                    </div>
                    <div class="avt"><img src="../../assets/pic/mengxiang.png" alt=""></div>
                    <div class="name">吴乐院长</div>
                    <div class="company">梦想青成国际健身学院</div>
                </div>
            </div>
            <div class="item-right">
                <div class="comment-pic">
                    <img  style="width:100%;height:531px" src="../../assets/pic/mengxiangqing.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section6">
    <div class="container-fluid">
        <div class="row text-center">
            <div class="col-sm-4 item1">
                <div class="icon-img"><img src="../../assets/images/home/s6-1.png" alt=""></div>
                <h4>低风险理财</h4>
                <p>百朋提供安全可靠并且回报率合理的<br/>
                    投资项目， 因为所有分期债权均来自<br/>
                    最真实的服务消费需求，<br/>
                    再通过层层审核<br/>
                    来严格把控资产端的质量</p>
            </div>
            <div class="col-sm-4 item2">
                <div class="icon-img"><img src="../../assets/images/home/s6-2.png" alt=""></div>
                <h4>消费微金融</h4>
                <p>倡导“小额分期，<br/>
                    专款专用”的消费微金融，<br/>
                    再通过资金分散、行业分散的方式<br/>
                    进一步降低债权的系统性风险，<br/>
                    从而保证了极低的逾期率。
                </p>
            </div>
            <div class="col-sm-4 item3">
                <div class="icon-img"><img src="../../assets/images/home/s6-3.png" alt=""></div>
                <h4>更有神秘产品</h4>
                <p>百朋分期和理财并不是全部，<br/>
                    我们对年轻族群金融服务的想法<br/>
                    远不止于此。<br/>
                    更多新鲜有趣的理财方式，<br/>
                    会在不久的将来与大家见面哦！
                </p>
            </div>
        </div>
    </div>
</div>
<div class="section7">
    <div class="container text-center" style="padding-left: 0px">
        <div class="item item1">
            <h3>消费微金融 安全可靠</h3>
            <div class="s7-cont row">
                <div class="s7-left col-md-4">
                    <div class="icon-circle">
                        <div class="text">
                            <img src="../../assets/images/home/s7-2.png" alt="">
                        </div>
                        <div class="circle"></div>
                    </div>
                    <p>真实需求</p>
                </div>
                <div class="s7-content col-md-4">
                    <div class="icon-pic">
                        <img src="../../assets/images/home/s7-10@2x.png" alt="">
                    </div>
                    <p>资金分散+行业分散</p>
                </div>
                <div class="s7-right col-md-4">
                    <div class="icon-pic">
                        <img src="../../assets/images/home/index8-1.png" alt="">
                    </div>
                    <p>全流程风控</p>
                </div>
            </div>
        </div>
        <div class="item item2">
            <h3>双重风险保障 在发生逾期时提前赔付</h3>
            <div class="s7-cont">
                <div class="s7-left">
                    <div class="icon-pic">
                        <img src="../../assets/images/home/s7-1.png" alt="">
                    </div>
                    <p>分期申请人<br/>发生信用违约?</p>
                </div>
                <div class="line">
                    <img src="../../assets/images/home/s7-8.png" alt="">
                </div>
                <div class="s7-content">
                    <img src="../../assets/images/home/index8-2.png" height="168" alt="">
                </div>
                <div class="line">
                    <img src="../../assets/images/home/s7-8.png" alt="">
                </div>
                <div class="s7-right">
                    <div class="icon-pic">
                        <img src="../../assets/images/home/s7-7.png" height="80" alt="">
                    </div>
                    <p>确保百朋投资人<br/>的本息安全</p>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include "../../public/foot.php";?>
<script src="../../assets/js/lib/jquery.min.js"></script>
<script src="../../assets/js/lib/slick.min.js"></script>
<script src="../../assets/js/Btotop.js"></script>
<script src="../../assets/js/app.js"></script>
<script type="text/javascript" src="../../assets/js/lib/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        var height=document.body.clientHeight*0.6;
        var width=document.body.clientWidth*0.6;
        var width2=document.body.clientWidth*0.2;
        var height2=document.body.clientWidth*0.05;
        $("#ad-modal").css("height",height);
        $("#ad-modal").css("width",width);
        $("#ad-dialog").css("margin-left",width2);
        $("#ad-dialog").css("margin-top",height2);
        $('#myModal').modal('show');
    });
    function gotoLuckly(){
        window.location.href="../../invest/view/makemoney.php";
    }
</script>
</body>

</html>
