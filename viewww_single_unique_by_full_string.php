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
//////////////user code ends////////////////
tail();



//////////////Functions///////////////////////

?>


