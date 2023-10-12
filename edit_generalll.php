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
//echo '<pre>';print_r($_POST);echo '</pre>';

echo '<div id=response></div>';
echo '<div class="two_column_two_by_one">';

echo '<div>';

//done
if($_POST['action']=='set_sample_status')
{
	insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%dT%H:%M"));

	echo '<div class="d-inline-block"">';
	//showww_sid_button_release_status($link,$_POST['sample_id'],'');
	xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);

	echo '</div>';	
	//xxx_edit_sample($link,$_POST['sample_id']);

}

//done
if($_POST['action']=='edit_general')
{
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);

		echo '</div>';	
		//xxx_edit_sample($link,$_POST['sample_id']);
}

//done
if($_POST['action']=='upload')
{
	save_result_blob($link,$_POST['sample_id']);
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';	
		//xxx_edit_sample($link,$_POST['sample_id']);
}

//done
if($_POST['action']=='delete')
{
	delete_examination($link,$_POST['sample_id'],$_POST['examination_id']);
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';	
	//xxx_edit_sample($link,$_POST['sample_id']);
}

//done
if($_POST['action']=='insert')
{
	//echo 'new examination insertion required';
	xxx_save_insert_specific_for_edit($link,$_POST['selected_examination_list'],$_POST['sample_id']);
	
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';
	//xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='calculate')
{
		calculate_and_update($link,$_POST['sample_id']);
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';	
		//xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='sync_ALL')
{
		sync_all($link,$_POST['sample_id']);
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';	
		//xxx_edit_sample($link,$_POST['sample_id']);
}

//done
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
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';	
		//xxx_edit_sample($link,$_POST['sample_id']);
}

if($_POST['action']=='verify')
{
	verify_sample($link,$_POST['sample_id']);
		echo '<div class="d-inline-block"">';
		showww_sid_button_release_status($link,$_POST['sample_id'],'');
		echo '</div>';	
		//xxx_edit_sample($link,$_POST['sample_id']);
}

//done
if($_POST['action']=='save_primary_result')
{
    //[session_name] => sn_1241728485
    //[sample_id] => 9000012
    //[examination_id] => 9001
    //[__ex__9001] => 1.2
    //[action] => save_primary_result
    
    	//insert_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['result'],$_POST['uniq'],$_POST['equipment']);
    	insert_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['__ex__'.$_POST['examination_id']],$_POST['uniq']);
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';	
		//xxx_edit_sample($link,$_POST['sample_id']);    
}
	
	$res=get_config_value($link,'restrictive_examination_for_edit_delete');
	$res_result=get_one_ex_result($link,$_POST['sample_id'],$res);
	if(strlen($res_result>0))
	{	
		xxx_view_sample($link,$_POST['sample_id']);
		echo '</div>';
		echo '<div></div>';
	}
	else
	{
		xxx_edit_sample($link,$_POST['sample_id']);
		echo '</div>';

		echo '<div>';
			$request_sql="select * from examination order by request_route,name";
			echo '<h3 class="bg-warning">Add new examinations</h3>';
			xxx_get_data_specific_for_edit($link,$request_sql,$_POST['sample_id']);
			echo '<div>
					<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
					echo '	<div id="status-window" 
								class="border border-success">
							</div>
					<span class="badge badge-primary"  data-toggle="collapse" data-target="#select-window">Select Examinations</span>';
					echo '	<div id="select-window" class="border border-success">
								<input type=text id=my_search_text  onchange="my_search_test()">
								<button type=button id=my_search onclick="my_search_test()">search</button>
								<div id=my_search_result></div>
							</div>						
			</div>';
	}
						
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




function xxx_get_data_specific_for_edit($link,$sql,$sample_id)
{
	
	echo '<form method=post class="bg-light" enctype="multipart/form-data">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	
		echo '<div>';
			xxx_get_examination_data($link,$sql);
		echo '</div>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	echo '</form>';
}


function xxx_save_insert_specific_for_edit($link,$selected_examination_list,$sample_id)
{


////Requested examinations
	$requested=array_filter(explode(',',$selected_examination_list));
	//echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';

	$requested_temp=$requested;
	$requested=array();
	//add only if authorized to insert (with result already removed as above if not authorized
	foreach($requested_temp as $ex)
	{
		if(is_authorized($link,$_SESSION['login'],$ex,'insert')===true)
		{
			$requested[]=$ex;
		}
		else
		{
			echo '<h5 class="bg-warning">This user is not authorized for [insert] with examination_id='.$ex.'</h5>';
		}
	}
	
	//print_r($requested);
		
	foreach($requested as $ex)
	{
		$examination_details=get_one_examination_details($link,$ex);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';
		
		//echo $examination_details['sample_requirement'].'  '.get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement']).'<br>';
		if(
			$examination_details['sample_requirement']==get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement'])
			||
			$examination_details['sample_requirement']=='None'
			)
		{
			if($type!='blob')
			{
				if(in_array($type,['id_multi_sample','id_single_sample']))
				{
					update_id_type_examination_for_sample_array($link,array($sample_id),$ex,'');
					insert_one_examination_without_result($link,$sample_id,$ex,$error='no');
				}
				else
				{
					insert_one_examination_without_result($link,$sample_id,$ex,$error='no');
				}
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

<script>
function my_search_test()
{
	search_text=document.getElementById("my_search_text").value;
	//alert("search="+search_text)
	if(search_text==="")
	{
		return false;
	}
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (this.readyState == 4 && this.status == 200) 
		{
			document.getElementById('my_search_result').innerHTML = xhttp.responseText;
		}
	};

	post1='search_text='+search_text
	post2='session_name=<?php echo $_POST["session_name"];?>'
	post3='login=<?php echo $_SESSION["login"];?>'
	post4='password=<?php echo $_SESSION["password"];?>'
	
	post=post1+'&'+post2+'&'+post3+'&'+post4
	xhttp.open('POST', 'xxx_search_examination.php', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(post);	
}
</script>

