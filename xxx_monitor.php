<?php
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$lot_size=100;

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



$ex_list=array(
				array("examination_id"=>$GLOBALS['sample_requirement']),
				array("examination_id"=>$GLOBALS['patient_name']),
				array("examination_id"=>$GLOBALS['mrd']),
				array("examination_id"=>$GLOBALS['OPD/Ward']),
				array("examination_id"=>10001),
				array("examination_id"=>10002),
				array("examination_id"=>10003),
				array("examination_id"=>10004),
				array("examination_id"=>10005)
				);
$repeat=count($ex_list);

echo '
<style>

.two_column 
{
  display: grid;
  grid-template-columns: auto auto;
}

.ten_column 
{
  display: grid;
  grid-template-columns: 0.2fr 0.2fr repeat('.$repeat.' , 0.2fr);
  grid-template-rows: repeat(auto, 1fr);
  justify-items: start;
  
}
</style>
';

if($_POST['unique_id']!='sample_id')
{
	$max_unique_id=xxx_find_max_unique_id($link,$_POST['unique_id']);

	$examination_details=get_one_examination_details($link,$_POST['unique_id']);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';


	//show samples as selected
	$sql='select sample_id from `'.$table.'` where id between \''.($max_unique_id-200).'\' and \''.$max_unique_id.'\' order by id';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='<input type=hidden name=examination_id value=\''.$_POST['unique_id'].'\'>';
}
else if($_POST['unique_id']=='sample_id')
{
	$id_range_array=explode('-',$_SESSION['id_range']);
	$max_unique_id=find_max_sample_id($link,$id_range_array[0],$id_range_array[1]);

	//$examination_details=get_one_examination_details($link,$_POST['unique_id']);
	//$edit_specification=json_decode($examination_details['edit_specification'],true);
	//$table=isset($edit_specification['table'])?$edit_specification['table']:'';


	//show samples as selected
	$sql='select sample_id from sample_link where sample_id between \''.($max_unique_id-200).'\' and \''.$max_unique_id.'\' order by sample_id';
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$extra_post='<input type=hidden name=examination_id value=sample_id>';
}

echo '<div class="ten_column">';

while($ar=get_single_row($result))
{
	//echo '<div>';
	showww_sid_button_release_status_horizontal($link,$ar['sample_id'],$extra_post,$_POST['unique_id'],$ex_list);					
	//echo '</div>';
}
echo '</div>';
//echo '<pre>monitor:post';print_r($_POST);echo '</pre>';
//echo '<pre>monitor:session';print_r($_SESSION);echo '</pre>';



function showww_sid_button_release_status_horizontal($link,$sid,$extra_post='',$uid=0,$ex_list=array())
{
	if(!sample_exist($link,$sid))
	{
			echo '<div  class="d-inline-block w-100 border">';
			echo $sid;
			echo '</div>';
			
			echo	'<div  class="d-inline-block  w-100 border"></div>';
				
			foreach($ex_list as $ex_data)
			{
				echo '<div  class="d-inline-block  w-100 border"></div>';
			}
		return;
	}

	$border_color='';
	if($uid>0)
	{
		$ex_value=get_id_type_examination_result($link,$sid,$uid);
		$examination_details=get_one_examination_details($link,$uid);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$prefix=isset($edit_specification['unique_prefix'])?$edit_specification['unique_prefix']:'';
		//echo '<h1>XXX'.$did.'XXX</h1>';
		//$did=str_pad($prefix.$ex_value,7,'_');
		$did=$prefix.$ex_value;
		if($ex_value%10==0){$border_color=' border-danger ';}
	}
	else
	{
		if($sid%10==0){$border_color=' border-danger ';}
		 $did=$sid;
	}

	echo '<div  class="d-inline-block w-100 border '.$border_color.'">';
	xxx_sample_id_view_button($sid,$target=' target=_blank ',$label=$sid);
	echo '</div>';
	
	echo	'<div  class="d-inline-block  w-100 border  '.$border_color.'">'.$did.'</div>';
		
	foreach($ex_list as $ex_data)
	{
		echo '<div  class="d-inline-block  w-100 border">'.get_one_ex_result($link,$sid,$ex_data['examination_id']).'</div>';
	}
}

function show_all_sample_status($link,$sid)
{
	$sql='select examination_id from `sample_status` order by priority';
	$result=run_query($link,$GLOBALS['database'],$sql);

	echo '<div>';
		while($ar=get_single_row($result))
		{
			echo '<div class="d-inline-block align-top m-1">';
				$ex_value=get_one_ex_result($link,$sid,$ar['examination_id']);
				echo '<button class="btn  w-100 btn-primary btn-rounded-right p-0 m-0 btn-sm"
							style="	border:solid black 1px;padding:3px;  
									border-top-right-radius: 25px; 
									border-bottom-right-radius: 25px;">'.$ex_value.'
						</button>';
			echo '</div>';
		}
	echo '</div>';
}

?>
