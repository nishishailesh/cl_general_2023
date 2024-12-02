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

//echo 'save_record.php<br><pre>save_record.php';print_r($_POST);print_r($_FILES);echo '</pre>';
//echo '<br>With proper POSTing of data by to-script and proper output by from-script AJAX is complate';
//javascript to encode url and PHP to decode POST value is must

//echo $_POST['session_name'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//$released_by=get_one_ex_result($link,$_POST['sample_id'],$GLOBALS['released_by']);

$primary=isset($_POST['primary'])?$_POST['primary']:'';

//if(strlen($released_by)==0)
//{
	if($primary=='yes')
	{
		save_result_primary($link);
	}
	else
	{
		save_result($link);
	}
//}
//else
//{
//	echo '<h3>Released samples can not be edited, refresh/view to get previous data</h3>';	
//}

function save_result($link)
{
	$res=get_config_value($link,'restrictive_examination_for_edit_delete');
	//echo 'hi2=========<br>';
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
	//echo 'hi=========<br>';
}


function save_result_primary($link)
{
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$_POST['examination_id'],'update'))
	{
		return false;
	}

	//Array
	//(
		//[examination_id] => 9000
		//[primary] => yes
		//[sample_id] => 9022600
		//[result] => VITROS3600
		//[session_name] => sn_1084079582
		//[user] => 1
	//)	
	$sql='update primary_result
			set 
				result=\''.my_safe_string($link,$_POST['result']).'\'
			where 
				sample_id=\''.$_POST['sample_id'].'\' 
				and
				examination_id=\''.$_POST['examination_id'].'\'
				and
				uniq=\''.$_POST['uniq'].'\'';
	//echo $sql;
	
	
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		echo '<p>Data not updated</p>';
	}
	else
	{
		if(rows_affected($link)>0)
		{
			echo '<p>'.$_POST['sample_id'].'|'.$_POST['examination_id'].'|'.$_POST['result'].'|'.$_POST['uniq'].'|Saved in primary result</p>';				
		}
		else
		{
			echo '<p>nothing to update (no row / same data)</p>';
		}
	}
}

?>
