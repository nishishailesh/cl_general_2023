<?php
require_once 'config.php';

$_SESSION['login']=$_GET['login'];
$_SESSION['password']=$_GET['password'];
$_POST['session_name']='xyz';

require_once 'project_common.php';
require_once 'base/verify_login_cmd.php';
require_once 'base/common.php';
echo '<link rel="stylesheet" href="project_wcommon.css">';	

$link=get_link('rootuser','rootuser');

//xxx_print_sample($link,1000414);
xxx_view_sample($link,1000414);


?>
