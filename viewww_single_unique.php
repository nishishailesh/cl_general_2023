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

/* POST
    [action] => prev
    [session_name] => sn_1557739720
    [unique_id_value] => 15
    [unique_id] => 1046
*/

if($_POST['action']=='sample_collected')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'sample_collected');
}

if($_POST['action']=='sample_received')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'sample_received');
}

if($_POST['action']=='sample_prepared')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'sample_prepared');
}

if($_POST['action']=='analysis_started')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'analysis_started');
}


//showww_sid_button_release_status($link,$_POST['sample_id'],'');
if(isset($_POST['unique_id']))
{
	show_sample_id_for_unique_id($link,$_POST['unique_id'],$_POST['unique_id_value']);
}
else if( isset($_POST['sample_id']))
{
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_view_sample($link,$_POST['sample_id']);
}
//////////////user code ends////////////////
tail();



//////////////Functions///////////////////////

function show_sample_id_for_unique_id($link,$unique_id,$unique_id_value)
{
	$examination_details=get_one_examination_details($link,$unique_id);
	//print_r($examination_details);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';
	if(strlen($table)==0){return false;}

	$sqls='select * from `'.$table.'` where id=\''.$unique_id_value.'\'';
	//echo '<h3>'.$sqls.'</h3>';
	$results=run_query($link,$GLOBALS['database'],$sqls);
	if(get_row_count($results)<=0)
	{
		echo 'no next/previous id '.$unique_id_value.' exist';
		return;
	}
	else
	{
				echo '<h5 class="bg-warning" >Following '.get_row_count($results).' is/are  samples with the required condition</h5>';

	}
	while($ar=get_single_row($results))
	{
		echo '<div class=jumbotron>';
		showww_sid_button_release_status($link,$ar['sample_id']);
		xxx_view_sample($link,$ar['sample_id']);
		echo '</div>';
	}
}

?>


