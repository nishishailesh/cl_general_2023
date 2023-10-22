<?php
//echo 'HHHHHHHHHHHHHhh';
//exit(0);
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

//$lot_size=get_config_value($link,'status_lot_size');
//$column_size=get_config_value($link,'status_column_size');
//echo '<pre>monitor:post';print_r($_POST);echo '</pre>';
//echo '<pre>monitor:session';print_r($_SESSION);echo '</pre>';


$lot_size=isset($_POST['status_lot_size'])?$_POST['status_lot_size']:get_config_value($link,'status_lot_size');
$column_size=isset($_POST['status_column_size'])?$_POST['status_column_size']:get_config_value($link,'status_column_size');
$filter_examination_id=isset($_POST['filter_examination_id'])?$_POST['filter_examination_id']:0;
//echo '<h1>'.$lot_size.'<br>';
//echo $column_size.'</h1><br>';


if(isset($_POST['login']))
{
	$_SESSION['login']=$_POST['login'];
}

if(isset($_POST['password']))
{
	$_SESSION['password']=$_POST['password'];
}
		
if(!isset($_SESSION['login']) && !isset($_POST['login']))
{
		exit(0);
}

if(!isset($_SESSION['password']) && !isset($_POST['password']))
{
	exit(0);
}


if($_POST['unique_id']!='sample_id')
{
	$max_unique_id=xxx_find_max_unique_id($link,$_POST['unique_id'])+$_POST['show_offset'];		//mySQL between claus includes both sides
	
	$examination_details=get_one_examination_details($link,$_POST['unique_id']);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';
	$unique_examination_id=$_POST['unique_id'];

	//show samples as selected
	//$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-198).'\' and \''.$max_unique_id.'\' ';
	$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-$lot_size+1).'\' and \''.$max_unique_id.'\' ';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='	<input type=hidden name=unique_id value=\''.$_POST['unique_id'].'\'>
					<input type=hidden name=id_range value=\''.$_POST['id_range'].'\'>
					<input type=hidden name=show_offset value=\''.$_POST['show_offset'].'\'>
					<input type=hidden name=status_lot_size value=\''.$lot_size.'\'>
					<input type=hidden name=status_column_size value=\''.$column_size.'\'>
					<input type=hidden name=filter_examination_id value=\''.$filter_examination_id.'\'>';
}
else if($_POST['unique_id']=='sample_id')
{
	$unique_examination_id=0;
	$id_range_array=explode('-',$_POST['id_range']);
	$max_unique_id=find_max_sample_id($link,$id_range_array[0],$id_range_array[1])+$_POST['show_offset'];

	$sql='select sample_id from sample_link where sample_id between \''.($max_unique_id-$lot_size+1).'\' and \''.$max_unique_id.'\' order by sample_id';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='	<input type=hidden name=unique_id value=sample_id>
					<input type=hidden name=id_range value=\''.$_POST['id_range'].'\'>
					<input type=hidden name=show_offset value=\''.$_POST['show_offset'].'\'>
					<input type=hidden name=status_lot_size value=\''.$lot_size.'\'>
					<input type=hidden name=status_column_size value=\''.$column_size.'\'>
					<input type=hidden name=filter_examination_id value=\''.$filter_examination_id.'\'>';
}



echo '<div class="monitor_grid">';

$location_offset=1;
while($ar=get_single_row($result))
{	
	if(($_POST['unique_id']!='sample_id'))
	{
		$uid=get_id_type_examination_result($link,$ar['sample_id'],$_POST['unique_id']);	
	}
	else
	{
		$uid=$ar['sample_id'];
	}
	
	if($uid%$column_size!=0)															
	{
		$div_location1=($location_offset*$column_size)+($uid%$column_size);		
	}							
	else if($uid%$column_size==0)															
	{
		$location_offset=$location_offset+1;
		$div_location1=($location_offset*$column_size)+($uid%$column_size);		
	}		

	$div_location=str_pad($div_location1,3,'0',STR_PAD_LEFT);
	
	
	echo '<div style="grid-area: a'.$div_location.'; justify-self: center; width:100%;">';
		echo '<div>';
		
		//print_r($last);
		if($filter_examination_id==0)
		{
			//echo $div_location;
			showww_sid_button_release_status($link,$ar['sample_id'],$extra_post,$unique_examination_id,$checkbox='yes');
		}
		else 
		{
			$last=xxx_get_sample_action_last($link,$ar['sample_id']);
			if($last!==NULL and $last!==FALSE)
			{
				if($last['examination_id']==$_POST['filter_examination_id'])
				{
					//echo $div_location;
					showww_sid_button_release_status($link,$ar['sample_id'],$extra_post,$unique_examination_id,$checkbox='yes');
				}
				else
				{
					echo '         ';
				}
			}
			else
			{
				echo '           ';
			}
		}
			//echo $div_location;
		echo '</div>';
	echo '</div>';
}

echo '</div>';





?>
