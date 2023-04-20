<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

if($_SESSION['display_style']=='full')
{
	echo '<div class="print_hide">';
	main_menu($link);
	echo '</div>';
}


//delete all result

$sql='select * from result where sample_id=\''.$_POST['sample_id'].'\'';
//echo $sql;

$result=run_query($link,$GLOBALS['database'],$sql);
while($ar=get_single_row($result))
{
	//echo 'xx';
	//print_r($ar);
	//echo 'yy';
	$examination_details=get_one_examination_details($link,$ar['examination_id']);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	//print_r($edit_specification);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	//echo '<h1>'.$type.'</h1>';
	if(in_array($type,array('id_multi_sample','id_single_sample')))
	{
		$table=isset($edit_specification['table'])?$edit_specification['table']:'';
		$sqld='delete from `'.$table.'` where sample_id=\''.$_POST['sample_id'].'\'';
		//echo $sql;
		$resultd=run_query($link,$GLOBALS['database'],$sqld);
		echo '<h3>Deleting link of sample_id='.$_POST['sample_id'].' from '.$table.'</h3>';
	}
}

//delete all result
$sql='delete from result where sample_id=\''.$_POST['sample_id'].'\'';
$result=run_query($link,$GLOBALS['database'],$sql);
if($result)
{
	echo '<h3>Deleting result of sample_id='.$_POST['sample_id'].'</h3>';
}

//delete all result_blob
$sql_blob='delete from result_blob where sample_id=\''.$_POST['sample_id'].'\'';
$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
if($result_blob)
{
	echo '<h3>Deleting attachments of sample_id='.$_POST['sample_id'].'</h3>';
}

//delete sample_link
$sql_link='delete from sample_link where sample_id=\''.$_POST['sample_id'].'\'';
$result_link=run_query($link,$GLOBALS['database'],$sql_link);
if($result_link)
{
	echo '<h3>Deleting sample_link of sample_id='.$_POST['sample_id'].'</h3>';
}



showww_sid_button_release_status($link,$_POST['sample_id'],'');

xxx_view_sample($link,$_POST['sample_id']);
//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

?>
