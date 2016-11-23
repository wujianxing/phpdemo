<?php
/**
 * Created by PhpStorm.
 * User: a
 * Date: 2016/4/1
 * Time: 11:04
 */
$file_path=dirname(dirname(__FILE__));
$file_path=str_replace("\\","/",$file_path);
//ini_set("display_errors", "On");
//error_reporting(E_ALL | E_STRICT);
require_once  $file_path.'/comm/config.php';
    if(isset($_GET['action'])&&$_GET['action']=='loginOut'){
        session_unset();
    }
if(isset($_SESSION['session_time'])){
    if(time()-$_SESSION['session_time']>3600){
        unset($_SESSION['username']);
        unset($_SESSION['custid']);
        unset($_SESSION['session_time']);
        unset($_SESSION['cust_email']);
        unset($_SESSION['cust_phone']);
        echo "<script>window.location.reload();</script>";
    }else{
        $_SESSION['session_time']=time();
    }
}else{
    $_SESSION['session_time']=time();
}
?>
<div class="navbar-header">
    <a href="../../support/view/index.php" class="logo">百朋金融</a>
    <div class="top-nav">
    <ul class="nav navbar-nav">
        <li><a href="../../support/view/index.php">首页</a></li>
        <li><a href="../../borrow/view/usermoney.php">我要分期</a></li>
        <li><a href="../../invest/view/makemoney.php">我要理财</a></li>
        <li><a href="../../facilitator/view/goodshop.php">优选商家</a></li>
        <li><a href="../../support/view/security.php">安全保障</a></li>
        <!--<li><a href="../../user/view/personcenter.php">个人中心</a></li>-->
        <li><a href="../../help/view/common-problem.php">帮助中心</a></li>
    </ul>
    <?php
        if(isset($_SESSION['custid'])){
            $cust_name=!empty($_SESSION['cust_name'])?$_SESSION['cust_name']:$_SESSION['cust_phone'];
            $cust_pic=$_SESSION['cust_pic']==''?'../../assets/pic/avt01.png':('http://icon.bypal.com.cn/Upload/UploadHead/'.$_SESSION['cust_pic']);
    ?>
        <div class="navbar-right">
            <div class="logged-in">
                <a href="../../user/view/personcenter.php" title="前往个人中心"><img src="<?php echo $cust_pic;?>" alt=""> <?php echo $cust_name;?></a>
            </div>

            <!--<a href="https://www.bypal.cn" class="old-link">回到旧版</a>-->
            <a href="../../support/view/index.php?action=loginOut" class="old-link">退出</a>
        </div>
    <?php }else{?>
        <div class="navbar-right">
            <div class="login-register register-hover">
                <i class="i-bg"></i>
                <a href="../../support/view/login.php" class="login">登 录</a>
                <a href="../../support/view/register.php" class="reg">注 册</a>
            </div>
            <!--<a href="https://www.bypal.cn" class="old-link">回到旧版</a>-->
        </div>
    <?php }?>
    </div>
    <a href="javascript:;" class="nav-toggle"></a>
</div>