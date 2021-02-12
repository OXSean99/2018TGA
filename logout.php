<?php
header("Content-type:text/html;charset=uft-8");
session_start();
$nickname=$_SESSION['UserName'];

session_unset();
session_destroy();
require('conn.php');

?>
<script language="JavaScript">
   parent.location="user.php";
</script>
