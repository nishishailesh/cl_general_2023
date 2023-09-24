<?php
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$horizontal_status_lot_size=get_config_value($link,'horizontal_status_lot_size');
$filter_examination_id=isset($_POST['filter_examination_id'])?$_POST['filter_examination_id']:0;

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
	$max_unique_id=xxx_find_max_unique_id($link,$_POST['unique_id'])+$_POST['show_offset'];

	$examination_details=get_one_examination_details($link,$_POST['unique_id']);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';
	$unique_examination_id=$_POST['unique_id'];

	//show samples as selected
	//$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-198).'\' and \''.$max_unique_id.'\' ';
	$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-$horizontal_status_lot_size+1).'\' and \''.$max_unique_id.'\' ';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='	<input type=hidden name=unique_id value=\''.$_POST['unique_id'].'\'>
					<input type=hidden name=id_range value=\''.$_POST['id_range'].'\'>
					<input type=hidden name=show_offset value=\''.$_POST['show_offset'].'\'>
					<input type=hidden name=filter_examination_id value=\''.$filter_examination_id.'\'>';
}
else if($_POST['unique_id']=='sample_id')
{
	$id_range_array=explode('-',$_POST['id_range']);
	$max_unique_id=find_max_sample_id($link,$id_range_array[0],$id_range_array[1])+$_POST['show_offset'];
	$unique_examination_id=0;

	$sql='select sample_id from sample_link where sample_id between \''.($max_unique_id-$horizontal_status_lot_size+1).'\' and \''.$max_unique_id.'\' order by sample_id';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='	<input type=hidden name=unique_id value=sample_id>
					<input type=hidden name=id_range value=\''.$_POST['id_range'].'\'>
					<input type=hidden name=show_offset value=\''.$_POST['show_offset'].'\'>
					<input type=hidden name=filter_examination_id value=\''.$filter_examination_id.'\'>';
}

echo '<div class="monitor_grid_horizontal">';		

while($ar=get_single_row($result))
{
		if($filter_examination_id==0)
		{			
			showww_sid_button_release_status_horizontal($link,$ar['sample_id'],$extra_post,$unique_examination_id,$checkbox='yes');
			//echo 'hi';
		}
		
		else 
		{
			$last=xxx_get_sample_action_last($link,$ar['sample_id']);
			//print_r(last);
			if($last!==NULL and $last!==FALSE)
			{
				if($last['examination_id']==$_POST['filter_examination_id'])
				{
					showww_sid_button_release_status_horizontal($link,$ar['sample_id'],$extra_post,$unique_examination_id,$checkbox='yes');
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
}

echo '</div>';

//echo '<pre>monitor:post';print_r($_POST);echo '</pre>';
//echo '<pre>monitor:session';print_r($_SESSION);echo '</pre>';



function showww_sid_button_release_status_horizontal($link,$sid,$extra_post='',$uid=0,$checkbox='no')
{
	if(!sample_exist($link,$sid))
	{
		echo '<div class="btn-group-vertical m-0 p-0 border border-light print_hide">'.$sid.'</div>';		
		return;
	}

	$status_button_info=get_config_value($link,'status_button_info');
	$ex_for_status_button=explode(',',$status_button_info);
	
	$status_info_string='';
	foreach($ex_for_status_button as $status_ex_id)
	{
		$ex_value=get_any_examination_result($link,$sid,$status_ex_id);
		$status_info_string=$status_info_string.'<div>'.$ex_value.'</div>';
	}
	
	if($uid>0)
	{
		$ex_value=get_id_type_examination_result($link,$sid,$uid);
		$examination_details=get_one_examination_details($link,$uid);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$prefix=isset($edit_specification['unique_prefix'])?$edit_specification['unique_prefix']:'';
		//$did=str_pad($prefix.$ex_value,7,'.');
		$did=$prefix.$ex_value;
		$did=$prefix.$ex_value;
	}
	else
	{
		 $did=$sid;
	}

	$final_state=xxx_get_sample_action_last($link,$sid);
	$bgcolor=isset($final_state['color'])?$final_state['color']:'#FFFFFF';
	
	
	//1
				echo '<div>
					<form method=post action=viewww_single.php class=print_hide target=_blank style="background-color:'.$bgcolor.'" >
					<button style="width:100%;height:100%;" class="btn btn-outline-success btn-sm btn-block text-dark " name=sample_id value=\''.$sid.'\' >'
					.$did.
					'</button>
					<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
					<input type=hidden name=action value=view_single>';
					echo '</form>
			</div>';
	
	//2
				echo '<div>
					<form method=post action=viewww_single.php class=print_hide target=_blank  >
					<button style="width:100%;height:100%;" class="btn btn-outline-success btn-sm btn-block text-dark " name=sample_id value=\''.$sid.'\' >.'
					.colorize_eq_str($link,get_equipment_str($link,$sid))
					.'</button>
					<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
					<input type=hidden name=action value=view_single>';
					echo '</form>
				</div>';

	//3
				/*if($checkbox=='yes')
				{
					echo '<input 
					onclick="
									//alert(\'hi\')
									update_list_of_id(this)
							"
					class="status_check_box" value='.$did.' id=status_check_box^'.$did.'  style="background-color:'.$bgcolor.';" type=checkbox>';
				}*/


				if($checkbox=='yes')
				{
					echo '<input 
					onclick="
									//alert(\'hi\')
									update_list_of_id(this)
							"
					class="status_check_box" value='.$sid.' id=status_check_box^'.$sid.'  style="background-color:'.$bgcolor.';" type=checkbox>';
				}
								
	//4
				echo '<div class="d-inline-block" >';
				xxx_manage_sample_status_change_horizontal_shortcut($link,$sid,$extra_post);
				echo '</div>';

	//5
				echo '<div class="d-inline-block" >';
					echo $status_info_string;
				echo '</div>';


		
}



function xxx_manage_sample_status_change_horizontal_shortcut($link,$sample_id,$extra_post)
{
$sql='select distinct priority from `sample_status` order by priority';
$result=run_query($link,$GLOBALS['database'],$sql);


echo '<div class="bg-light border border-info print_hide">';
echo '<form method=post id="status_change_form" class="d-inline">';
	while($ar=get_single_row($result))
	{
		echo '<div class="d-inline-block align-top m-1">';
			$sql_b='select * from `sample_status` where priority=\''.$ar['priority'].'\'';
			$result_b=run_query($link,$GLOBALS['database'],$sql_b);
			while($ar_b=get_single_row($result_b))
			{	
				$val=get_one_ex_result($link,$sample_id,$ar_b['examination_id']);			
				
				//if shortcut not allowed / dependancy not satisfied disable
				if($ar_b['shortcut']<1 ||
				!is_status_dependancy_satisfied($link,$sample_id,$ar_b['examination_id']))
				
				{
					echo '<div class="d-block">';
					echo '<button disabled type="button" class="btn  w-100 btn-rounded-right p-1 m-1 btn-sm"
								style="	border:solid '.$ar_b['color'].' 3px;padding:3px;  
										border-top-right-radius: 25px; 
										border-bottom-right-radius: 25px;"
								name=status_examination_id value='.$ar_b['examination_id'].'>'.$ar_b['name'].'<br><span class="badge badge-success">'.$val.'</span>
							</button>';
					echo '</div>';	
				}
				else
				{
					echo '<div class="d-block">';
					echo '<button class="btn  w-100 btn-rounded-right p-1 m-1 btn-sm"
								style="	border:solid '.$ar_b['color'].' 3px;padding:3px;  
										border-top-right-radius: 25px; 
										border-bottom-right-radius: 25px;"
								name=status_examination_id value='.$ar_b['examination_id'].'>'.$ar_b['name'].'<br><span class="badge badge-success">'.$val.'</span>
							</button>';
					echo '</div>';					
					
				}
			}
		echo '</div>';
	}

	echo $extra_post;
	echo '<input type=hidden name=action value=set_sample_status>';
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';

echo '</form>';
echo '</div>';

}



?>
