<?php
/**
 * Created by PhpStorm.
 * User: a
 * Date: 2016/3/7
 * Time: 13:54
 */
//$time=time();
//$id="bypal".$time;
//echo $id;
//echo "<br/>";
//echo $time;
//echo "<br/>";
//echo base_convert($id, 11, 10);
//    function build_order_no(){
//        return substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 2, 10);
//    }
//    echo build_order_no();
//function guid(){
//    if (function_exists('com_create_guid')){
//        return com_create_guid();
//    }else{
//        mt_srand((double)microtime()*10000);//optional for php 4.2.0 and up.
//        $charid = strtoupper(md5(uniqid(rand(), true)));
//        $hyphen = chr(45);// "-"
//        $uuid = // "{"
//            substr($charid, 0, 8)
//            .substr($charid, 8, 4)
//            .substr($charid,12, 4)
//            .substr($charid,16, 4)
//            .substr($charid,20,12);
//        return $uuid;
//    }
//}
//echo guid();
//echo uniqid(time(),false);
//echo hash("crc32b","250407959@qq.com");
echo phpversion();
?>
<!--<form action="../bypalAppAPI/iospicUpload.php" method="post" enctype="multipart/form-data">-->
<!--    <input type="file" name="userfile" id="userfile">-->
<!--    <input type="submit"/>-->
<!--</form>-->