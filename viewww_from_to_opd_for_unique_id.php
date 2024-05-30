<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
			  <script src="project_common.js"></script>';

////////User code below/////////////////////


echo '<style>
.monitor_grid
{
display: grid;
grid-gap: 5px;
grid-template-areas:
';
	for ($i=1;$i<=200;$i++)
	{
		if($i%10==1 && ($i/10)%2==0){echo '\'';}	
		echo 'a'.str_pad($i,3,0,STR_PAD_LEFT).' ';
		if($i%10==0 && ($i/10)%2==0){echo '\' ';}
	}
echo ';}
</style>';




$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);

echo '<pre>';print_r($_POST);echo '</pre>';

if(isset($_POST['action']))
{
	if($_POST['action']=='set_sample_status')
	{
		insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%dT%H:%M"));
	}
}

//Set conditions
//echo '<pre>';
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
//echo '</pre>';

echo '<pre>';print_r($conditions);echo '</pre>';



/*
Array
(
    [examination_id] => 1047
    [__ex__1001] => 
    [chk^1002] => on
    [__ex__1002] => hesh
    [chk^1006] => on
    [__ex__1006] => E1(507)
    [__ex__10003] => 
    [chk^1047] => on
    [__from__1047] => 130269
    [__ex__1047] => 
    [__to__1047] => 130369
    [action] => view_dbid_summary
    [session_name] => sn_1071473724
)

Array
(
    [1002] => hesh
    [1006] => E1(507)
    [1047] => Array
        (
            [0] => 130269
            [1] => 130369
        )

)

select sample_link.sample_id as uid, e_1002.result as `Name` , e_10003.result as `sample_receipt` 
from 
sample_link 
inner join result e_1002 on e_1002.sample_id=sample_link.sample_id and e_1002.result like "%Sachin%"
inner join result e_10003 on e_10003.sample_id=sample_link.sample_id and e_10003.result like "%2024-05-28%"
limit 200

*/

$u=$_POST['examination_id'];
if($u!='sample_id')
{
	$id_type_table=get_id_type_table_name($link,$u);
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
	$sql_from=' from '.$id_type_table;

	foreach($conditions as $examination_id=>$result)
	{
		$ex_details=get_one_examination_details($link,$examination_id);
		$select=$select.'e_'.$examination_id.'.result as `'.$ex_details['name'].'` , ';
		$sql_from=$sql_from.' inner join result '.'e_'.$examination_id.' on '.'e_'.$examination_id.'.sample_id='.$id_type_table.'.sample_id ';
		if(is_array($result))
		{
			
		}
		else
		{
			$and=' and e_'.$examination_id.'.result like "%'.$result.'%" ';
		}
		$sql_from=$sql_from.$and;
	}
	
	$select=substr($select,0,-2);


	$final_sql=$select.$sql_from;
	echo $final_sql;
}
else
{
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
	$select=' select sample_link.sample_id as uid, ';
	$sql_from=' from sample_link ';

	foreach($conditions as $examination_id=>$result)
	{
		$ex_details=get_one_examination_details($link,$examination_id);
		$select=$select.'e_'.$examination_id.'.result as `'.$ex_details['name'].'` , ';
		$sql_from=$sql_from.' inner join result '.'e_'.$examination_id.' on '.'e_'.$examination_id.'.sample_id=sample_link.sample_id ';
		if(is_array($result))
		{
			
		}
		else
		{
					$and=' and e_'.$examination_id.'.result like "%'.$result.'%" ';
		}
		$sql_from=$sql_from.$and;
	}
	$select=substr($select,0,-2);

	$final_sql=$select.$sql_from. 'limit 400';
	echo $final_sql.'<br>';	
	//exit();
	
	
}

if($_POST['examination_id']=='sample_id'){$uid=0;}else{$uid=$_POST['examination_id'];}
if($uid>0)
{
	$examination_details=get_one_examination_details($link,$uid);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$prefix=isset($edit_specification['unique_prefix'])?$edit_specification['unique_prefix']:'';
}
else
{
	 $prefix='';
}



view_sql_result_as_table_with_button($link,$final_sql,$prefix=$prefix);

		

//////////////user code ends////////////////
tail();
//echo '<pre>';print_r($_SESSION);echo '</pre>';

//////////////Functions///////////////////////
function view_sql_result_as_table_with_button($link,$sql,$prefix)
{
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		 echo '<h1>Problem</h1>';
		 return false;
	}
	display_sql_result_data_with_button($result,$prefix);
}

function display_sql_result_data_with_button($result,$prefix)
{
		echo '<table border=1 class="table table-sm table-striped table-hover table-responsive">';
				
        $first_data='yes';

        while($array=get_single_row($result))
        {
			//echo '<pre>';
			//print_r($array);
                if($first_data=='yes')
                {
                        echo '<tr bgcolor=lightgreen>';
                        foreach($array as $key=>$value)
                        {
                                echo '<th>'.$key.'</th>';
                        }
                        echo '</tr>';
                        $first_data='no';
                }
                echo '<tr>';
                foreach($array as $key=>$value)
                {
					if($prefix==''){$real_sample_id='uid';}else{$real_sample_id='sample_id';}
					if($key=='uid')
					{
						echo '<td>
							<form method=post action=viewww_single.php target=_blank>
							<button style="width:100%;height:100%;" class="btn btn-outline-success btn-sm btn-block text-dark " name=sample_id value=\''.$array[$real_sample_id].'\' >'.$prefix.$array['uid'].'</button>
							<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
							<input type=hidden name=action value=view_single>';
							echo '</form>
						</td>';					
					}
					else
					{
                        echo '<td style="white-space: nowrap;">'.$value.'</td>';
					}
                }
                echo '</tr>';

        }
        echo '</table>';
	
}
//111119500892

?>
