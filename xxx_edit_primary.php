<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$user=get_user_info($link,$_SESSION['login']);
$auth=explode(',',$user['authorization']);
echo '<div id=response class="border border-success"></div>';

if(in_array('requestonly',$auth))
{
	exit(0);
}

main_menu($link);
if($_POST['action']=='edit_save')
{
	xxx_update_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq'],$_POST['result'],$_POST['extra']);
	
}

edit_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);

//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

//////////////Functions///////////////////////
/*


Array
(
    [result] => 1.54
    [sample_id] => 9022600
    [examination_id] => 9001
    [uniq] => 20230801212206
    [action] => edit_single
    [session_name] => sn_1379366941
)

*/
?>
