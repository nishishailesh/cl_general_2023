<?php
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
//echo '<br>Sending POST from server<br><pre>';
//print_r($_SESSION);
//print_r($_POST);
//print_r($_FILES);
//echo '<br>With proper POSTing of data by to-script and proper output by from-script AJAX is complate';
//javascript to encode url and PHP to decode POST value is must


//date india vs mysql. Corusponding change in edit_dc.php

//if($_POST['field']=='from_date' ||$_POST['field']=='to_date' )
//{
//	$_POST['value']=india_to_mysql_date($_POST['value']);
//}

//echo $_POST['session_name'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$released_by=get_one_ex_result($link,$_POST['sample_id'],$GLOBALS['released_by']);
if(strlen($released_by)==0)
{
	save_result($link);
}
else
{
	echo '<h3>Released samples can not be edited, refresh/view to get previous data</h3>';	
}

function save_result($link)
{

	$res=get_config_value($link,'restrictive_examination_for_edit_delete');
	$res_result=get_one_ex_result($link,$_POST['sample_id'],$res);
	if(strlen($res_result>0))
	{
		echo '<h5 class="bg-warning">Edit/delete operation not possible for sample_id='.$_POST['sample_id'].'</h5>';
		return;
	}
	
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$_POST['examination_id'],'update'))
	{
		//echo '<h5 class="bg-warning">This user is not authorized for [select] with examination_id='.$ex_id.'</h5>';
		return false;
	}
		
		
	$sql='update result_blob,primary_result_blob
			set 
				result_blob.result=primary_result_blob.result,	
				result_blob.recording_time=now(),
				result_blob.recorded_by=\''.$_POST['user'].'\'
			where 
				result_blob.sample_id=\''.$_POST['sample_id'].'\' 
				and
				result_blob.examination_id=\''.$_POST['examination_id'].'\'
				and
				result_blob.sample_id=primary_result_blob.sample_id
				and
				result_blob.examination_id=primary_result_blob.examination_id
				and
				primary_result_blob.uniq=\''.$_POST['uniq'].'\'				
				';
	//echo $sql;
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		echo '<p>Data not updated</p>';
	}
	else
	{
		echo '<p>Blob data for '.$_POST['sample_id'].'|'.$_POST['examination_id'].'  imported from primary table</p>';				
	}
}
?>
