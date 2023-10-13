<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	

main_menu($link);
//echo '<pre>';print_r($_POST);echo '</pre>';

echo '<form method=post>
<input type=text name=unique_id placeholder=unique_id>
<input type=hidden name=session_name value=\''.session_name().'\'>
<button type=submit class="btn btn-primary" name=action value=get_sample_id>prepare</button>
</form>';

if($_POST['action']=='get_sample_id')
{
	$sid_array=get_sample_id_array_for_any_id($link,$_POST['unique_id']);
	//print_r($sid_array);
	if($sid_array!==False)
	{
		echo 'sample_id list:'.implode(",",$sid_array);
		echo '<h5>Click appropriate button below to print label group</h5>';
		create_multi_label_button($link,$sid_array);
	}
	else
	{
		echo '<h5>No relavent data found</h5>';		
	}
}
//////////////user code ends////////////////
tail();
?>
