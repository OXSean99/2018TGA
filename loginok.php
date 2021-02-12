<?php
header("Content-type:text/html;charset=uft-8");
$time=60*60;
session_set_cookie_params($time);
session_start();
require('conn.php');
if(isset($_SESSION['UserName'])){
    exit();
}
?>
<?php
$nickname=$_POST['username'];
$password=$_POST['password'];
$sql=mysqli_query($conn,"SELECT * FROM regusers WHERE nickname='$nickname'");
$user=mysqli_fetch_array($sql);
$userid=$user["RegID"];
$adsql=mysqli_query($conn,"SELECT username,password FROM tb_admin WHERE username='$nickname'");
$aduser=mysqli_fetch_array($adsql);
$numrows=mysqli_num_rows($sql);
    if ($numrows != 0 and $password == $user['Password']) {
        $_SESSION['UserName'] = $nickname;
        $_SESSION['name'] = $nickname;
        $_SESSION['userid']=$user["RegID"];
        echo $_SESSION['UserName'];
        header("Location:index.php");
    } else {
        session_unset();
        session_destroy();
        echo "<!doctype html><html><head><meta charset=\"utf-8\"></head><body><div><table width='100%' align='center'><tr><td align='center'>";
        echo "<span>昵称错误！<br><a href='javascript:history.back(1)'>请重试</a></span>";
        echo "</td></tr></table></div></body></html>";
        mysqli_close($conn);
        exit;

}
?>
