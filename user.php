<?php
session_start();
header("Content-type:text/html;charset=uft-8");
require('conn.php');
if(isset( $_SESSION['UserName'])){
    header("Location:index.php");
    exit();
}

?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>无标题文档</title>
</head>
<script language="JavaScript">
    var login_username=document.getElementById("user");
    var login_password=document.getElementById("pass");
    function checklogin(){
        if(login_username.value!="") && (login_password.value!=""){
            return true;
        } else {
            alert("密码不能为空");
            return false;
        }
        alert("密码不能为空");
    }
</script>
<body style="background: url('images/background2.jpg')no-repeat">
<div align="center" style="width:300px;height:200px;margin:80px auto;text-align: center;background: #fff;opacity: 0.8;text-align: center;">
    <p style="font-size: 20px;font-family: 'Microsoft YaHei';color:#8EB4D9"><strong><b>登录</b></strong></p>
    <form action="loginok.php" method="post" name="login" onsubmit="checklogin()">
        <table width="300" align="center" bordercolor="#adadad" style="text-align: center;">
            <tr>
                <td  height="30" >昵&nbsp;称:</td>
                <td height="30"><input id="user" name="username" type="text" size="20" placeholder="请输入用户名" style=""> </td>
            </tr>
            <tr>
                <td  height="30" align="center">密&nbsp;码:</td>
                <td height="30"><input id="pass" name="password" type="password" placeholder="请输入密码" size="20" style=""> </td>
            </tr>
            <tr>
                <td></td>
                <td height="30" colspan="2" align="center">
                    <input name="submit1" type="submit" value="登录" onclick="checklogin()">&nbsp;&nbsp;
                    <input type="reset" name="submit2" value="重置">&nbsp;&nbsp;
                    <button type="button" class="btn btn-primary" onclick="window.location.href='register.php'">注册</button>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>