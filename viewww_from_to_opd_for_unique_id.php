<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
			  <script src="project_common.js"></script>';

////////User code below/////////////////////

/*
 * Plan: like newww, view should have dynamic menu
 * Plan examination type: autonumber, with its own table 
 * 
*/

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);


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



//Set conditions
$conditions=array();
if(isset($_POST['conditions']))
{
	$conditions=json_decode($_POST['conditions']);
}
else
{
	foreach($_POST as $k=>$v)
	{
		//echo $k.'<br>';
		$ex=explode('_',$k);
		//print_r($ex);
		if($ex[0]=='chk')
		{
			if(isset($_POST['__from__'.$ex[1]]))
			{
				//this is range inquiry
				$conditions[$ex[1]]=array($_POST['__from__'.$ex[1]],$_POST['__to__'.$ex[1]]);
			}
			
			else
			{
				//echo '>>>'.$_POST['__ex__'.$ex[1]];
				if(strlen($_POST['__ex__'.$ex[1]])>0)
				{
					//echo '>>>'.$_POST['__ex__'.$ex[1]];
					$conditions[$ex[1]]=$_POST['__ex__'.$ex[1]];
				}
			}
		}
		else
		{
			//un-checked, not interested
		}
	}
}

echo '<pre>';print_r($conditions);echo '</pre>';

/*
	$from=$_POST['from'];
	$to=$_POST['to'];
	if(strlen($from)==0)
	{
		if($_POST['examination_id']=='sample_id')
		{
			$exp=explode('-',$_POST['id_range']);
			$to=find_max_sample_id($link,$exp[0],$exp[1]);
		}
		else
		{
			$to=xxx_find_max_unique_id($link,$_POST['examination_id']);
		}
		$from=max($to-200,1);
	}
	else
	{
		if(strlen($to)==0)
		{
			$to=$from;
		}
		else
		{
			//altready set from POST
		}
	}
*/

//set post for update

/*
$extra_post='
<input type=hidden name=from value=\''.$from.'\'>
<input type=hidden name=to value=\''.$to.'\'>
<input type=hidden name=conditions value=\''.json_encode($conditions).'\'>';
*/

$extra_post='<input type=hidden name=conditions value=\''.json_encode($conditions).'\'>';

	$examination_details=get_one_examination_details($link,$_POST['examination_id']);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';
	if(strlen($table)==0){echo 'error: the examination_id is not id_multiple_sample or id_unique_sample';}
	
//show samples as selected

$sql='select sample_id from `'.$table.'` order by id desc';
//echo $sql.'<br>';
$result=run_query($link,$GLOBALS['database'],$sql);

	$count=0;
	while($ar=get_single_row($result))
	{
		if($count>=100){break;}
		
		if(check_for_conditions($link,$ar['sample_id'],$conditions))
		{
			if($_POST['action']=='view_dbid_detail')
			{	
				xxx_view_sample($link,$ar['sample_id']);
			}
			else
			{
				$extra_post='
				<input type=hidden name=examination_id value=\''.$_POST['examination_id'].'\'>
				<input type=hidden name=conditions value=\''.json_encode($conditions).'\'>';
				
				showww_sid_button_release_status($link,$ar['sample_id'],$extra_post,$_POST['examination_id']);
			}
		}

		if($_POST['action']=='view_dbid_detail')
		{
			echo '<div style="page-break-after: always;"></div>';
		}
		$count++;
	}
				

//////////////user code ends////////////////
tail();
echo '<pre>';print_r($_POST);echo '</pre>';
//echo '<pre>';print_r($_SESSION);echo '</pre>';

//////////////Functions///////////////////////

function check_for_conditions($link,$sid,$conditions)
{
	foreach($conditions as $ex_id => $value)
	{
		$result=get_any_examination_result($link,$sid,$ex_id);
		if(is_array($value))
		{
			//echo $sid.'>>>'.$ex_id.'---->'.$result.'<br>';
			if($result>=$value[0] && $result<=$value[1])
			{
				//next
			}
			else
			{
				return false;
			}
		}
		else
		{
			if(stripos($result,$value)!==False)
			{
				//next
			}
			else
			{
				return False;
			}
		}
	}
	
	return true;
}
?>