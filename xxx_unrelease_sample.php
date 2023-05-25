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

	echo '<div class="print_hide">';
	main_menu($link);
	echo '</div>';



if($_POST['action']=='set_sample_status')
{
	insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%d %H:%M"));
}
else if($_POST['action']=='unrelease_sample')
{
	$res=get_config_value($link,'restrictive_examination_for_edit_delete');
	delete_examination($link,$_POST['sample_id'],$res);
}

xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);

xxx_view_sample($link,$_POST['sample_id']);
//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

?>
