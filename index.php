<?php
header("Content-type:text/html;charset=uft-8");
require('conn.php');
session_start();
if(isset( $_SESSION['UserName'])){
}else{header("Location:user.php");}
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>The Game Awards</title>
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <script src="../bootstrap/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<div class="ibody">
    <header>
        <h1>TGA2018</h1>
        <h2>The Game Awards</h2>
        <div class="logo"></div>
        <nav id="topnav"><a href="index.html">首页</a><a href="about.html">关于TGA</a><a href="awards.html">各奖项</a>
    </header>
    <article>
        <div class="banner1">
            <ul class="texts">
                <p>Celebrates the best video games and esports of the year </p>
                <p>and world premieres the most anticipated games of the future</p>
            </ul>
        </div>
        <div class="bloglist">
            <h2>
                <p>精彩内容</p>
            </h2>
            <div class="blogs">
                <img src="images/gow live.jpg" width="600" height="333">
                <img src="images/gow live2.jpg" width="600" height="333">
                <img src="images/rdr live.jpg" width="600" height="333">
                <img src="images/fortnite live.jpg" width="600" height="333">
                <div class="view">NICE</div>
            </div>

        </div>
    </article>

    <aside>
    </aside>
    <div class="clear"></div>

</div>
</body>
</html>
