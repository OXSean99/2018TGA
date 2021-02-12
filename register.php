<?php
require('conn.php');
header("Content-type:text/html;charset=uft-8");
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>无标题文档</title>
</head>
<body style="background: url('images/background.jpg')no-repeat">
<?php
if(isset($_POST["submit"])) {
    if (!$_POST['uname'] | !$_POST['passwd'] | !$_POST['passwd_again'] | !$_POST['email']) {
        die('请填写完整信息');

    }
    if (!get_magic_quotes_gpc()) {
        $_POST['uname'] = addslashes($_POST['uname']);
    }
    $sqlcheck = "SELECT nickname FROM regusers WHERE nickname='" . $_POST['uname'] . "'";
    $name_check = mysqli_query($conn, $sqlcheck);

    if ($name_check == false) {
        die("Error:" .mysqli_error($conn));
    }
    if($name_check) {
        $checknum = mysqli_num_rows($name_check);
    }else return false;
    if ($checknum != 0) {

       echo "<script>alert('对不起，昵称已存在');history.go(-1);</script>";
    }else {
        if ($_POST['passwd'] != $_POST['passwd_again']) {
            die("对不起，两次密码不一样，请重试");
        }
        if (strlen($_POST['passwd']) < 6) {
            die("密码必须大于6位");
        }
        if (!preg_match("/.*\@.*\..*/", $_POST['email']) | preg_match("/(\<|\>)/", $_POST['email'])) {
            die("对不起，请正确填写email");
        }
        if (preg_match("/(\<|\>)/", $_POST['uname']) | preg_match("/(\<|\>)/", $_POST['passwd'])) {
            die("用户名和密码不能有特殊标记");
        }
        $_POST['passwd'] = ($_POST['passwd']);
        if (!get_magic_quotes_gpc()) {
            $_POST['passwd'] = addslashes($_POST['passwd']);
            $_POST['email'] = addslashes($_POST['email']);
        }
        $insert = "INSERT INTO regusers (NickName,Password,Email) VALUES ('" . $_POST['uname'] . "','" . $_POST['passwd'] . "','" . $_POST['email'] . "')";
        $add_member = mysqli_query($conn, $insert);
        if ($add_member == false) {
            die("添加用户错误：" . mysqli_error($conn));
            echo $name_check;
        }
    }
    mysqli_close($conn);

    ?>
    <p>注册成功！<br>请<a href="user.php" title="Login">登录</a></p>
    <?php
}else {
    ?>
    <div align="center"
         style="width:300px;height:auto;margin:80px auto;text-align: center;background: #fff;opacity: 0.8;text-align: center;">
        <p style="font-size: 20px;font-family: 'Microsoft YaHei';color:#8EB4D9"><strong><b>注册</b></strong></p>
        <form action="register.php" method="post">
            <table align="center" border="0" cellspacing="0" cellpadding="3" bordercolor="#ccccff">
                <tr>
                    <td>昵称:</td>
                    <td><input type="text" name="uname" maxlength="50" size="20"></td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td><input type="password" name="passwd" maxlength="50" size="20"></td>
                </tr>
                <tr>
                    <td>再次输入密码:</td>
                    <td><input type="password" name="passwd_again" maxlength="50" size="20"></td>
                </tr>
                <tr>
                    <td>EMail:</td>
                    <td colspan="2"><input type="text" name="email" maxlength="80" size="20"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submit" value="注册"></td>
                </tr>
            </table>
        </form>
    </div>
    <?php
}
?>
</body>
</html>