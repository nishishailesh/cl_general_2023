<?php
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '	<link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
echo '<div>';
main_menu($link); 

$user=get_user_info($link,$_SESSION['login']);
echo '<div id="response"></div>';
//echo '<pre>';print_r($_POST);echo '</pre>';


$examination_requested=explode(",",$_POST['selected_examination_list']);
//foreach ($examination_requested as $ex)
//{
//	echo $ex.'<br>';
//}

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
		$ex=explode('^',$k);
		//print_r($ex);
		if($ex[0]=='chk')
		{
			if($ex[1]==$_POST['examination_id']){continue;}
			else if($ex[1]>0)
			{
				if(isset($_POST['__from__'.$ex[1]]))
				{
					if(strlen($_POST['__to__'.$ex[1]])>0)
					{				
						$conditions[$ex[1]]=array($_POST['__from__'.$ex[1]],$_POST['__to__'.$ex[1]]);
					}
					else
					{
						$conditions[$ex[1]]=array($_POST['__from__'.$ex[1]],$_POST['__from__'.$ex[1]]);						
					}
				}
				else
				{
					if(strlen($_POST['__ex__'.$ex[1]])>0)
					{
						$conditions[$ex[1]]=$_POST['__ex__'.$ex[1]];
					}
				}
			}
		}
		else
		{
			//un-checked, not interested
		}
	}
}

//echo '<pre>';
//print_r($conditions);
//echo '</pre>';

/*
$conditions[$_POST['examination_id']]=array($_POST['__from__'.$_POST['examination_id']],$_POST['__to__'.$_POST['examination_id']]);
echo '<pre>';
print_r($conditions);
echo '</pre>';
*/


$u=$_POST['examination_id'];

foreach ($examination_requested as $ex)
{ 
	if($u!='sample_id')
	{
		$id_type_table=get_id_type_table_name($link,$u);
		echo '<h3>Unique ID type:'.$id_type_table.'</h3>';
		$id_type_from='__from__'.$u;
		$id_type_to='__to__'.$u;
		if(strlen($_POST[$id_type_from])>0 && strlen($_POST[$id_type_to])>0)
		{
			$id_type_from_value=$_POST[$id_type_from];
			$id_type_to_value=$_POST[$id_type_to];
		}
		else
		{
			$max_sid=find_max_any_id($link,$_POST['examination_id']);
			$id_type_from_value=$max_sid-200+1;		
			$id_type_to_value=$max_sid;
		}

		$select=' select '.$id_type_table.'.id as uid, '.$id_type_table.'.sample_id, ';
		$sql_from=' from '.$id_type_table.' ';

		$first_inner=True;
		
		
		if(count($conditions)>0)
		{
			foreach($conditions as $examination_id=>$result)
			{
				$ex_details=get_one_examination_details($link,$examination_id);
				$select=$select.'e_'.$examination_id.'.result as `'.$ex_details['name'].'` , ';
				$sql_from=$sql_from.' inner join result '.'e_'.$examination_id.' on '.'e_'.$examination_id.'.sample_id='.$id_type_table.'.sample_id ';
				if(is_array($result))
				{
					$and='and e_'.$examination_id.'.examination_id= '.$examination_id. ' and e_'.$examination_id.'.result between "'.$result[0].'" and "'.$result[1].'" ';
					if($first_inner==True)
					{
						$and=$and.' and '.$id_type_table.'.id between "'.$_POST['__from__'.$_POST['examination_id']].'" and "'.$_POST['__to__'.$_POST['examination_id']].'"';
						$first_inner=False;
						//echo '<h1>'.$and.'</h1>';			
					}
					//echo '<h1>'.$and.'</h1>';			
				}
				else
				{
					$and='and e_'.$examination_id.'.examination_id= '.$examination_id. ' and e_'.$examination_id.'.result like "%'.$result.'%" ';
					if($first_inner==True)
					{
						$and=$and.' and '.$id_type_table.'.id between "'.$_POST['__from__'.$_POST['examination_id']].'" and "'.$_POST['__to__'.$_POST['examination_id']].'"';
						$first_inner=False;
					}
				}
				$sql_from=$sql_from.$and;
			}

			$ex_join=' inner join result ex_'.$ex.' on '.$id_type_table.'.sample_id=ex_'.$ex.'.sample_id and ex_'.$ex.'.examination_id='.$ex;

		}
		else
		{
			$sql_for_no_condition=' and '.$id_type_table.'.id between "'.$_POST['__from__'.$_POST['examination_id']].'" and "'.$_POST['__to__'.$_POST['examination_id']].'"';			
			$ex_join=' inner join result ex_'.$ex.' on '.$id_type_table.'.sample_id=ex_'.$ex.'.sample_id and ex_'.$ex.'.examination_id='.$ex;
			$ex_join=$ex_join.$sql_for_no_condition;
		}

		
		$select=substr($select,0,-2);

		$final_sql=$select.$sql_from.$ex_join;
		$final_sql=$final_sql. ' limit 400';

		echo $final_sql;
	}
	else
	{
		$id_type_table='sample_id'; //Used only for table display
		
		$id_type_from='__from__'.$u;
		$id_type_to='__to__'.$u;
		if(strlen($_POST[$id_type_from])>0 && strlen($_POST[$id_type_to])>0)
		{
			$id_type_from_value=$_POST[$id_type_from];
			$id_type_to_value=$_POST[$id_type_to];
		}
		else
		{
			$max_sid=find_max_any_id($link,$_POST['examination_id']);
			$id_type_from_value=$max_sid-200+1;		
			$id_type_to_value=$max_sid;
		}
		$select=' select sample_link.sample_id as uid, sample_link.sample_id as sample_id , ';
		$sql_from=' from sample_link ';

		$first_inner=True;

		if(count($conditions)>0)
		{
			
			foreach($conditions as $examination_id=>$result)
			{
				$ex_details=get_one_examination_details($link,$examination_id);
				$select=$select.'e_'.$examination_id.'.result as `'.$ex_details['name'].'` , ';
				$sql_from=$sql_from.' inner join result '.'e_'.$examination_id.' on '.'e_'.$examination_id.'.sample_id=sample_link.sample_id ';
				if(is_array($result))
				{
					$and='and e_'.$examination_id.'.examination_id= '.$examination_id. ' and e_'.$examination_id.'.result between "'.$result[0].'" and "'.$result[1].'" ';
					if($first_inner==True)
					{
						$and=$and.' and sample_link.sample_id between "'.$_POST['__from__'.$_POST['examination_id']].'" and "'.$_POST['__to__'.$_POST['examination_id']].'"';
						$first_inner=False;
					}
				}
				else
				{
					$and='and e_'.$examination_id.'.examination_id= '.$examination_id. ' and e_'.$examination_id.'.result like "%'.$result.'%" ';
					if($first_inner==True)
					{
						$and=$and.' and sample_link.sample_id between "'.$_POST['__from__'.$_POST['examination_id']].'" and "'.$_POST['__to__'.$_POST['examination_id']].'"';
						$first_inner=False;
					}
				}
				$sql_from=$sql_from.$and;
			}
			
			$ex_join=' inner join result ex_'.$ex.' on sample_link.sample_id=ex_'.$ex.'.sample_id and ex_'.$ex.'.examination_id='.$ex;
			
		}
		else
		{
			$sql_for_no_condition=' and sample_link.sample_id between "'.$_POST['__from__'.$_POST['examination_id']].'" and "'.$_POST['__to__'.$_POST['examination_id']].'"';			
			$ex_join=' inner join result ex_'.$ex.' on sample_link.sample_id=ex_'.$ex.'.sample_id and ex_'.$ex.'.examination_id='.$ex;
			$ex_join=$ex_join.$sql_for_no_condition;			
		}

		$select=substr($select,0,-2);
		$final_sql=$select.$sql_from.$ex_join;
		$final_sql=$final_sql. ' limit 400';
		echo $final_sql.'<br>';	
		//exit();	
	}
	
	show_worklist($link,$ex,$final_sql,$id_type_table);
}


function show_worklist($link,$examination_id,$sql,$unique_id_type)
{
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo '<table class="table table-sm table-striped">';
	echo '<tr><th>sample id</th><th>'.$unique_id_type.'</th><th>examination---->result</th></tr>';
	while($each_data=get_single_row($result))
	{
		//print_r($each_data);
		echo '<tr>';
			echo '<td>';
				//echo $each_data['sample_id'];
				xxx_sample_id_view_button($each_data['sample_id'],$target=' target=_blank ',$label=$each_data['sample_id']);
			echo '</td>';
			echo '<td>';
				echo $each_data['uid'];
			echo '</td>';
			echo '<td>';
				edit_field_any($link,$examination_id,$each_data['sample_id'],$readonly='',$frill=False);
			echo '</td>';
		echo '</tr>';
	}
	echo '</table>';
}
/*

Array
(
    [examination_id] => 1046
    [chk^10003] => on
    [__ex__10003] => 2024-05
    [chk^1046] => on
    [__from__1046] => 68680
    [__ex__1046] => 
    [__to__1046] => 68780
    [action] => show_worklist
    [session_name] => sn_1851926975
    [selected_examination_list] => 5006,5001
)


select 
	opd_id.id as uid, 
	opd_id.sample_id, 
	e_10004.result as `sample_processing` , 
	e_10003.result as `sample_receipt` 
from 
	opd_id 
		inner join 
			result e_10004 on e_10004.sample_id=opd_id.sample_id 
			and 
				e_10004.examination_id= 10004 
			and
				e_10004.result like "%2024-05%" 
		
		inner join result e_10003 on e_10003.sample_id=opd_id.sample_id 
			and 
				e_10004.examination_id= 10004 
			and 
				e_10004.result like "%2024-05%" 

*/
