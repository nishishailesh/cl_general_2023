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
/*Array
(
    [offset] => 0
    [limit] => 100
    [action] => search
    [session_name] => sn_1491565929
    [selected_examination_list] => 5015,5018,5014
)*/

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



function eedit_field_any($link,$ex_id,$sample_id)
{
	//echo $compact;
	$examination_details=get_one_examination_details($link,$ex_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	$ex_compact=isset($edit_specification['compact'])?$edit_specification['compact']:'';

		//echo 'xxxx';
		if($type=='blob')
		{	
			edit_blob_field($link,$ex_id,$sample_id);
		}
		else
		{
			if(in_array($type,['id_multi_sample','id_single_sample']))
			{
				$ex_result=['result'=>get_id_type_examination_result($link,$sample_id,$ex_id)];
			}
			else
			{
				$ex_result=get_one_ex_result_row($link,$sample_id,$ex_id);
			}
			edit_field($link,$ex_id,$ex_result,$sample_id);
		}
}
