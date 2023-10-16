<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$user=get_user_info($link,$_SESSION['login']);
$auth=explode(',',$user['authorization']);
echo '<div id=response></div>';

if(in_array('requestonly',$auth))
{
	exit(0);
}

main_menu($link);
echo '<h3> Sample Status Analysis (Turn Around Time) for Sample ID:'.$_POST['sample_id'].'</h3>';

if($_POST['action']=='insert_TAT_remark')
{
	insert_one_examination_with_result_after_restriction($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['__ex__'.$_POST['examination_id']]);
}

analyse_sample_action($link,$_POST['sample_id']);
$local_TAT_remark_id=get_config_value($link,'TAT_remark_id');

echo '<h3 class="text-danger">If required insert remark</h3>';

$ok=edit_field_any($link,$local_TAT_remark_id,$_POST['sample_id'],'',$frill=False);
if($ok!==False)
{
	echo '<button  class="btn btn-success" type=button name=action value=save_TAT_remark>save</button>'; //dummy button to move focus
}
if( $ok == False)
{
	echo '<form method=post>';
	get_one_field_for_insert($link,$local_TAT_remark_id);
	echo '<input type=hidden name=examination_id value=\''.$local_TAT_remark_id.'\'>
	<input type=hidden name=session_name value=\''.session_name().'\'>
	<div class=basic_form>
		<div>Sample_ID: </div><input type=text readonly name=sample_id value=\''.$_POST['sample_id'].'\'><div></div>
		<div> Action</div><button  class="btn btn-success" type=submit name=action value=insert_TAT_remark>Insert</button><div></div>
	</div>';
	echo '</form>';
}

function insert_one_examination_with_result_after_restriction($link,$sample_id,$examination_id,$result)
{
			
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'insert'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [insert] with examination_id='.$examination_id.'</h5>';
		return false;
	}	
	//recording_time=now(),recorded_by=\''.$_POST['user'].'\'
	
	$sql='insert into result (sample_id,examination_id,result,recording_time,recorded_by)
			values ("'.$sample_id.'","'.$examination_id.'","'.my_safe_string($link,$result).'",now(),"'.$_SESSION['login'].'")';
	//echo $sql.'(without)<br>';
	if(!run_query($link,$GLOBALS['database'],$sql))
	{
		//echo $sql.'(without)<br>';
		//echo 'Data not inserted(with)<br>'; 
		return false;
	}	else{return true;}
}

echo '<h2 class="text-info">Close window after update. Refresh parent page</h2>';

//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

//////////////Functions///////////////////////


?>
