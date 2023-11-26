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
		//insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%dT%H:%M"));
		xxx_update_sample_status($link,$_POST['sample_id'],$_POST['status_examination_id']);
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		xxx_view_sample($link,$_POST['sample_id']);

	}
}

if(isset($_POST['unique_id']))
{
	$id_array=get_sample_id_array_for_any_id($link,$_POST['unique_id']);
	if(!$id_array)
	{
		echo '<h5 class="text-danger">nothing found</h5>';
	}
	else
	{
		foreach ($id_array as $sid)
		{
			echo '<div class="border border-success m-3 p-2">';
			xxx_manage_sample_status_change_horizontal($link,$sid);
			xxx_view_sample($link,$sid);
			echo '</div>';
		}
	}
}
//////////////user code ends////////////////
tail();



//////////////Functions///////////////////////

?>


