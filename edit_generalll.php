<?php
//$GLOBALS['nojunk']='';
//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

require_once 'project_common.php';
require_once 'base/verify_login.php';
require_once 'verify.php';
	////////User code below/////////////////////
echo '	<link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

main_menu($link);

echo '<div class="two_column_two_by_one">';

	echo '<div>';


if($_POST['action']=='sample_collected')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'sample_collected');
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='sample_received')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'sample_received');
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='sample_prepared')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'sample_prepared');
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='analysis_started')
{
	//echo 'analysis_started';
	update_sample_status($link,$_POST['sample_id'],'analysis_started');
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}


if($_POST['action']=='edit_general')
{
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}
if($_POST['action']=='upload')
{
	save_result_blob($link,$_POST['sample_id']);
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}
if($_POST['action']=='delete')
{
	delete_examination($link,$_POST['sample_id'],$_POST['examination_id']);
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}
if($_POST['action']=='insert')
{
	//echo 'new examination insertion required';
	xxx_save_insert_specific_for_edit($link,$_POST['selected_examination_list'],$_POST['sample_id']);
	
	showww_sid_button_release_status($link,$_POST['sample_id'],'');

	xxx_edit_sample($link,$_POST['sample_id']);
}
if($_POST['action']=='calculate')
{
	calculate_and_update($link,$_POST['sample_id']);
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='sync_ALL')
{
	sync_all($link,$_POST['sample_id']);
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='sync_single')
{
	if(!isset($_POST['is_blob']))
	{
		save_single_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['result']);
	}
	else
	{
		save_single_result_blob($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);
	}
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='verify')
{
	verify_sample($link,$_POST['sample_id']);
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='verification_done')
{
	$ret=verify_sample($link,$_POST['sample_id']);
 	//echo '<h1>xx'.$ret.'xx</h1>';
	// in confg.php $GLOBALS['is_verification_success_important']='yes';

	//if($ret==-1 && $GLOBALS['is_verification_success_important']=='yes')
	//if($ret==-1)
	//{
	//	echo '<h1 class="bg-danger">Sample Not verified successfully. Verification Incomplate. Correct requirement</h1>';
	//}
	//else
	//{
		update_sample_status($link,$_POST['sample_id'],'verification_done');
	//}
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='save_primary_result')
{
    //[session_name] => sn_1241728485
    //[sample_id] => 9000012
    //[examination_id] => 9001
    //[__ex__9001] => 1.2
    //[action] => save_primary_result
    
    	insert_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['result'],$_POST['uniq']);
	showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_edit_sample($link,$_POST['sample_id']);
    
}


	echo '</div>';
	echo '<div>';

$request_sql="select * from examination order by request_route,name";
xxx_get_data_specific_for_edit($link,$request_sql,$_POST['sample_id']);
echo '<div>
			<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
			echo '	<div id="status-window" 
						class="border border-success">status:
					</div>
		</div>';
		
echo '</div>';

//////////////user code ends////////////////
tail();


//////////////Functions///////////////////////
function calculate_and_update($link,$sample_id)
{
	$sql='select * from result where sample_id=\''.$sample_id.'\'';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	while($ar=get_single_row($result))
	{
		$examination_details=get_one_examination_details($link,$ar['examination_id']);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		if(!$edit_specification){$edit_specification=array();}
		
		$decimal=isset($edit_specification['decimal'])?$edit_specification['decimal']:0;
		$calculate=isset($edit_specification['calculate'])?$edit_specification['calculate']:'';	
		$ex_list=isset($edit_specification['ex_list'])?$edit_specification['ex_list']:'';	

		if(strlen($calculate)>0)
		{		
			//echo 'ex='.$ar['examination_id'].'<br>';
			$ex_result=calculate_result($link,$calculate,$ex_list,$sample_id,$decimal);
			//echo $ex_result;
			save_single_result($link,$sample_id,$ar['examination_id'],$ex_result);
		}
	}
	verify_sample($link,$sample_id);
}

function save_single_result($link,$sample_id,$examination_id,$ex_result)
{
	
	$sql='update result
			set 
				result=\''.my_safe_string($link,$ex_result).'\',	
				recording_time=now(),
				recorded_by=\''.$_SESSION['login'].'\'
			where 
				sample_id=\''.$sample_id.'\' 
				and
				examination_id=\''.$examination_id.'\'';
	//echo $sql;
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		echo '<p>Data not updated</p>';
	}
	else
	{
		//echo '<p>'.$sample_id.'|'.$examination_id.'|'.$ex_result.'|Saved</p>';				
	}
}

function save_single_result_blob($link,$sample_id,$examination_id,$uniq)
{
	$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and 
							examination_id=\''.$examination_id.'\'';
	//echo ($sql_blob);
	$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
	$ar_blob=get_single_row($result_blob);
	
	$sql_primary_blob='select * from primary_result_blob 
						where 	sample_id=\''.$sample_id.'\' and 
								examination_id=\''.$ar_blob['examination_id'].'\' and
								uniq=\''.$uniq.'\'';							
	//echo $sql_primary_blob;
	$result_primary_blob=run_query($link,$GLOBALS['database'],$sql_primary_blob);
	$arr_blob=get_single_row($result_primary_blob);
	
	if($arr_blob !==NULL && $arr_blob !==FALSE)
	{
		//print_r($arr);
		//echo $ar_blob['sample_id'].'>>'.$ar_blob['examination_id'].'>>'.$ar_blob['fname'].'||||'.
	    //$arr_blob['sample_id'].'>>'.$arr_blob['examination_id'].'>>'.$arr_blob['fname'].'>>'.$arr_blob['uniq'].'<br>';
	
		$update_sql_blob='update result_blob 
							set 
								result=\''.my_safe_string($link,$arr_blob['result']).'\' ,
								fname=\''.my_safe_string($link,$arr_blob['fname']).'\' 
							where
								sample_id=\''.$sample_id.'\' and 
								examination_id=\''.$arr_blob['examination_id'].'\'';
								
								
		//echo $update_sql_blob.'<br>';
		if(!run_query($link,$GLOBALS['database'],$update_sql_blob))
		{echo 'blob data synchronization failed';}
	}	
}


function insert_primary_result($link,$sample_id,$examination_id,$ex_result,$uniq)
{
	
	$sql='insert into primary_result
				(sample_id,examination_id,result,uniq)
				values
			   (\''.$sample_id.'\' ,
				\''.$examination_id.'\', 
				\''.my_safe_string($link,$ex_result).'\',
				\''.$uniq.'\')';
				
	//echo $sql;
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		echo '<p>Data not updated</p>';
	}
	else
	{
		if(rows_affected($link)>0)
		{
			echo '<p>'.$_POST['sample_id'].'|'.$_POST['examination_id'].'|'.$_POST['result'].'|Saved in primary_result</p>';				
		}
		else
		{
			echo '<p>nothing to update (no row / same data)</p>';
		}				
	}
}



function xxx_get_data_specific_for_edit($link,$sql,$sample_id)
{
	
	echo '<form method=post class="bg-light jumbotron" enctype="multipart/form-data">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	
	echo '<div class="two_column_one_by_two">';
		echo '<div class="border">';

		echo '</div>';
		echo '<div>';
	
			//echo '<button class="btn btn-sm btn-outline-success " type=button id=my_lft onclick="select_super_profile(this,\'selected_examination_list\') " data-status="off" data-ex_list="1002,1031,1032,1034,5001">My LFT</button>';
			xxx_get_examination_data($link,$sql,'id',$multi='no',$size=10);
		echo '</div>';
	echo '</div>';
	
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	echo '</form>';
}


function xxx_save_insert_specific_for_edit($link,$selected_examination_list,$sample_id)
{


////Requested examinations
	$requested=array_filter(explode(',',$selected_examination_list));
	//echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';

	foreach($requested as $ex)
	{
		$examination_details=get_one_examination_details($link,$ex);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';
		
		if(
			$examination_details['sample_requirement']==get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement'])
			||
			$examination_details['sample_requirement']=='None'
			)
		{
			if($type!='blob')
			{
				insert_one_examination_without_result($link,$sample_id,$ex,$error='no');
			}
			else
			{
				insert_one_examination_blob_without_result($link,$sample_id,$ex,$error='no');
			}
		}
		else
		{
			echo '<span class="text-danger">examination_id='.$ex.' require '.$examination_details['sample_requirement'].'</span><br>';
		}
	}
}
//////////////Functions///////////////////////


?>

