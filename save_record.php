<?php
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
$_SESSION['login']=$_POST['user'];

//echo '<br>Sending POST from server<br><pre>';
//print_r($_SESSION);
//print_r($_FILES);
//echo '<br>With proper POSTing of data by to-script and proper output by from-script AJAX is complate';
//javascript to encode url and PHP to decode POST value is must

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
	
	//This is actually done in edit_field() function to make unauthorized fields readonly
	//to prevent neet to reset the edited field if ajax is forced not to save
	/*
	if(!$authorized_for_insert=is_authorized($link,$_POST['user'],$_POST['examination_id'],'update'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [update] with examination_id='.$_POST['examination_id'].'</h5>';
		return;
	}
	else
	{
		//echo 'authorized#####';
	}
	*/

	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$_POST['examination_id'],'update'))
	{
		//echo '<h5 class="bg-warning">This user is not authorized for [select] with examination_id='.$ex_id.'</h5>';
		return false;
	}
		
	$sql='update result
			set 
				result=\''.my_safe_string($link,$_POST['result']).'\',	
				recording_time=now(),
				recorded_by=\''.$_POST['user'].'\'
			where 
				sample_id=\''.$_POST['sample_id'].'\' 
				and
				examination_id=\''.$_POST['examination_id'].'\'';
	//echo $sql;
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		echo '<p>Data not updated</p>';
	}
	else
	{
		if(rows_affected($link)>0)
		{
			echo '<p>'.$_POST['sample_id'].'|'.$_POST['examination_id'].'|'.$_POST['result'].'|Saved in result</p>';				
		}
		else
		{
			echo '<p>nothing to update (no row / same data)</p>';
		}
	}
}
?>
