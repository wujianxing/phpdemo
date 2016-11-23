<?php
/**
 * Created by PhpStorm.
 * User: xiangzhenming
 * Date: 2016/4/1
 * Time: 11:41
 * function:公共配置加载文件
 */

require_once dirname(__FILE__).'/MYSQLI_DB.php';
require_once dirname(__FILE__).'/SqlSafe.php';//防止sql注入
$sqlsafe = new SqlSafe();
$dbObject = new MYSQLI_DB();
$conn=$dbObject->getConn();
session_start();
date_default_timezone_set('PRC');