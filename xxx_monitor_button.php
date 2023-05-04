<?php
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$lot_size=100;

if(isset($_POST['login']))
{
	$_SESSION['login']=$_POST['login'];
}

if(isset($_POST['password']))
{
	$_SESSION['password']=$_POST['password'];
}
		
if(!isset($_SESSION['login']) && !isset($_POST['login']))
{
		exit(0);
}

if(!isset($_SESSION['password']) && !isset($_POST['password']))
{
	exit(0);
}



$max_unique_id=xxx_find_max_unique_id($link,$_POST['unique_id']);

$examination_details=get_one_examination_details($link,$_POST['unique_id']);
$edit_specification=json_decode($examination_details['edit_specification'],true);
$table=isset($edit_specification['table'])?$edit_specification['table']:'';


//show samples as selected
$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-200).'\' and \''.$max_unique_id.'\' ';
//echo $sql.'<br>';
$result=run_query($link,$GLOBALS['database'],$sql);

$extra_post='<input type=hidden name=examination_id value=\''.$_POST['unique_id'].'\'>';
echo '<div class="monitor_grid">';
while($ar=get_single_row($result))
{
	echo '<div style="grid-area: a'.(str_pad(get_id_type_examination_result($link,$ar['sample_id'],$_POST['unique_id'])%200,3,'0',STR_PAD_LEFT)).';">';
	//echo str_pad(get_id_type_examination_result($link,$ar['sample_id'],$_POST['unique_id'])%200,3,'0',STR_PAD_LEFT);
	echo '<div>';
	showww_sid_button_release_status($link,$ar['sample_id'],$extra_post,$_POST['unique_id']);	
	echo '</div>';				
	echo '</div>';
}
echo '</div>';
//echo '<pre>monitor:post';print_r($_POST);echo '</pre>';
//echo '<pre>monitor:session';print_r($_SESSION);echo '</pre>';

function get_user_info($link,$user)
{
	$sql='select * from user where user=\''.$user.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	return get_single_row($result);
}


?>
