<?php
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '	<link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  
		  
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<div>';
main_menu($link); 

$user=get_user_info($link,$_SESSION['login']);
echo '<div id="response"></div>';
//echo '<pre>';print_r($_POST);echo '</pre>';
/*
Array
(
    [examination_id] => 1046
    [chk^10003] => on
    [__ex__10003] => 2023-10-28T22:53
    [chk^1046] => on
    [__from__1046] => 112
    [__ex__1046] => 
    [__to__1046] => 234
    [action] => view_dbid_summary
    [session_name] => sn_1318371026
    [selected_examination_list] => 5117
)*/



foreach($_POST as $k=>$v)
{
		//echo $k.'<br>';
		$ex=explode('^',$k);
		//print_r($ex);
		if($ex[0]=='chk')
		{
			
			if($ex[1]=='sample_id')
			{
				if(isset($_POST['__from__sample_id']))
				{
					if(strlen($_POST['__to__sample_id'])>0)
					{
						$conditions['sample_id']=array($_POST['__from__sample_id'],$_POST['__to__sample_id']);
					}
					else
					{
						$conditions['sample_id']=array($_POST['__from__sample_id'],$_POST['__from__sample_id']);
					}
				}
				else
				{
					//sample_id will never be non-range
				}					
			}
			else
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


//echo '<pre>';print_r($conditions);echo '</pre>';

if($_POST['examination_id']!='sample_id')
{
	$examination_details=get_one_examination_details($link,$_POST['examination_id']);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';
	if(strlen($table)==0){echo 'error: the examination_id is not id_multiple_sample or id_unique_sample';}
	//$sql='select sample_id from `'.$table.'` order by id desc';
	$sql='select sample_id from `'.$table.'` order by id';
}
else if($_POST['examination_id']=='sample_id')
{
	$id_range_array=explode("-",$_POST['id_range']);
	$sql='select sample_id from sample_link 
			where 
			sample_id between \''.$id_range_array[0].'\' and  \''.$id_range_array[1].'\' ';	//echo $sql;
}
	
//show samples as selected

echo $sql.'<br>';
//exit(0);



foreach(explode(',',$_POST['selected_examination_list']) as  $ex)
{
	$count=1;
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo '<h1 class="text-info">'.$ex.'</h1>';
	echo '<div style="display: grid; grid-template-columns: 10% 40%;">';
	while($ar=get_single_row($result))
	{
		if($count>199){break;}
		
		if(check_for_conditions($link,$ar['sample_id'],$conditions))
		{
			if(is_examination_requested($link,$ar['sample_id'],$ex)!==False)
			{
				$extra_post='';
				if($_POST['examination_id']=='sample_id'){$u=0;}else{$u=$_POST['examination_id'];}

				echo '<div class="d-inline-block">';
					//showww_sid_button_release_status($link,$ar['sample_id'],$extra_post,$u,$checkbox='no');
					showww_sid_button_without_release_status($link,$ar['sample_id'],$extra_post,$u);
				echo '</div>';
				echo '<div class="d-inline-block">';
					edit_field_any($link,$ex,$ar['sample_id'],$readonnly='',$frill=False,$extra_array=array());
				echo '</div>';

				$count++;	//increase only if successful
			}
		}
	}
	echo '</div>';

}





/*
foreach(explode(',',$_POST['selected_examination_list']) as  $ex)
{
	//$sql='select * from result where examination_id=\''.$ex.'\' order by sample_id desc limit '.$_POST['offset'].','.$_POST['limit'];
	$sql='select * from result where examination_id=\''.$ex.'\' limit '.$_POST['offset'].','.$_POST['limit'];
	echo $sql.'<br>';
	echo '<h2>'.$ex.'</h2>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo '<div class=two_column>';
	while($ar=get_single_row($result))
	{
		echo '<div>';
		echo $ar['sample_id'];
		echo '</div>';
		echo '<div>';
		edit_field_any($link,$ar['examination_id'],$ar['sample_id'],$readonnly='',$frill=False,$extra_array=array());
		echo '</div>';		
	}
	echo '</div>';
}
*/
