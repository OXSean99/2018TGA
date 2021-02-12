<?php
//error_reporting("E_ALL & ~E_NOTICE");
$conn=mysqli_connect("localhost","root","root") or die("数据库服务器连接失败".mysqli_error());
mysqli_select_db($conn,"db_database18")or die("数据库打开失败".mysqli_error());
mysqli_query($conn,"set names utf8");
