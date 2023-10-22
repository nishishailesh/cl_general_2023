<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);


	echo '<div class="print_hide">';
	main_menu($link);
	echo '</div>';
//echo '<pre>';print_r($_POST);echo '</pre>';

if(isset($_POST['action']))
{
	if($_POST['action']=='set_sample_status')
	{
		xxx_update_sample_status($link,$_POST['sample_id'],$_POST['status_examination_id']);
		//insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%d %H:%M"));
	}
}

if(isset($_POST['unique_id']))
{
	show_sample_id_for_unique_id($link,$_POST['unique_id'],$_POST['unique_id_value']);
}
else if( isset($_POST['sample_id']))
{
	//showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);

	xxx_view_sample($link,$_POST['sample_id']);
}
//////////////user code ends////////////////
tail();



//////////////Functions///////////////////////

?>


