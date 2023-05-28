<?php
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$lot_size=get_config_value($link,'status_lot_size');
$column_size=get_config_value($link,'status_column_size');

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
	//if 239
	//
	
	$examination_details=get_one_examination_details($link,$_POST['unique_id']);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';


	//show samples as selected
	//$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-198).'\' and \''.$max_unique_id.'\' ';
	$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-$lot_size+1).'\' and \''.$max_unique_id.'\' ';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='	<input type=hidden name=unique_id value=\''.$_POST['unique_id'].'\'>
					<input type=hidden name=id_range value=\''.$_POST['id_range'].'\'>
					<input type=hidden name=show_offset value=\''.$_POST['show_offset'].'\'>';
}
else if($_POST['unique_id']=='sample_id')
{
	
	$id_range_array=explode('-',$_POST['id_range']);
	$max_unique_id=find_max_sample_id($link,$id_range_array[0],$id_range_array[1])+$_POST['show_offset'];

	$sql='select sample_id from sample_link where sample_id between \''.($max_unique_id-$lot_size+1).'\' and \''.$max_unique_id.'\' order by sample_id';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='	<input type=hidden name=unique_id value=sample_id>
					<input type=hidden name=id_range value=\''.$_POST['id_range'].'\'>
					<input type=hidden name=show_offset value=\''.$_POST['show_offset'].'\'>';
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
			showww_sid_button_release_status($link,$ar['sample_id'],$extra_post,$_POST['unique_id'],$checkbox='yes');
			//echo $div_location;
		echo '</div>';
	echo '</div>';
}

/*


if($max_unique_id<200){$div_location=$max_unique_id+1;}
else
{
	//$div_location=(str_pad(  (max($max_unique_id-199,1))%200   ,3,'0',STR_PAD_LEFT));
	$div_location=(str_pad(  (max($max_unique_id-199,1))%200   ,3,'0',STR_PAD_LEFT));
}

echo '<div  style="grid-area: a'.$div_location.';" >';
	//echo '<h1 class="text-center float-right" >>>></h1>';
	echo '</div>';
	

$first=1;

while($ar=get_single_row($result))
{
	
	if(($_POST['unique_id']!='sample_id'))
	{
		$uid=get_id_type_examination_result($link,$ar['sample_id'],$_POST['unique_id']);
		if($uid%200==0)
		{
			$div_location='200';
		}
		else
		{
			$div_location=(str_pad($uid%200,3,'0',STR_PAD_LEFT));
		}
	}
	else if($_POST['unique_id']=='sample_id')
	{	
		if($ar['sample_id']%200==0)
		{
			$div_location=200;
		}
		else
		{
			$div_location=(str_pad($ar['sample_id']%200,3,'0',STR_PAD_LEFT));
		}
	}
	
	echo '<div style="grid-area: a'.$div_location.'; justify-self: center; width:100%;">';
		echo '<div>';		
			if($first==1){echo '<div style="border:solid 5px black;width:100%;">';}
			showww_sid_button_release_status($link,$ar['sample_id'],$extra_post,$_POST['unique_id'],$checkbox='yes');
			if($first==1){echo '</div>';$first=0;}
		echo '</div>';
	echo '</div>';
}
*/

echo '</div>';
//echo '<pre>monitor:post';print_r($_POST);echo '</pre>';
//echo '<pre>monitor:session';print_r($_SESSION);echo '</pre>';




?>
