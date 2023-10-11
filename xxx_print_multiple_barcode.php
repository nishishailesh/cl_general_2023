<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';



/*
Planing

Use should be able to select type and copy of each barcode
per sample for unique type
per request for multi type

*/



$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
echo '<pre>';print_r($_POST);echo '</pre>';
$received=unserialize(base64_decode($_POST['sample_id_array']));
print_r($received);


/*
$data=array();
foreach($received as $k=>$v)
{
	//echo '<h5>'.$v.'</h5>';
	//echo '<h5>sample_id = '.$v.' , unique_id_type=sample_id , unique_id_value ='.$v.'</h5>';
	//$data[$v]='sample_id';
	$labels=get_labels($link,'sample_id');
	$data[$v]['sample_id']=$labels;
	$data=get_unique_id_array_for_sample_id($link,$v,$data);
	
}
*/

create_multi_label_button($link,$received);


//echo '<pre>';print_r($data);echo '</pre>';

exit(0);	//echo will cause problem in pdf

$pdf=get_pdf_link_for_barcode();
xxx_prepare_sample_barcode($link,$_POST['sample_id'],$_POST['label_id'],$pdf);
print_pdf($pdf,'barcode.pdf');


function is_examination_requested($link,$sample_id,$examination_id)
{
	$sql='select examination_id from result where examination_id=\''.$examination_id.'\'';

	//echo $sql.'<br>';
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)<=0){return false;}
	return true;
}

           
function create_multi_label_button($link,$received)
{
	$sql='select * from label_group';
	$result=run_query($link,$GLOBALS['database'],$sql);
	while($ar=get_single_row($result))
	{
		$label_group_name=$ar['name'];
		echo '<h1>'.$ar['name'].'</h1>';
		$label_members=json_decode($ar['lable_list'],true);
		foreach($label_members as $label_id=>$copy)
		{
			$label_details=get_label_details($link,$label_id);
			//echo '<pre>';print_r($label_details);echo '</pre>';
			foreach($received as $sample_id)
			{
				if(is_examination_requested($link,$sample_id,$label_details['examination_id']))
				{
					echo 'print '.$copy.' copy of label_id='.$label_id.' for sample_id='.$sample_id.' and '.$label_details['examination_id'].'='.get_any_examination_result($link,$sample_id,$label_details['examination_id']).'<br>';
				}
				elseif($label_details['examination_id']=='sample_id')
				{
					echo 'print '.$copy.' copy of label_id='.$label_id.' for sample_id='.$sample_id.' sample_id='.$sample_id.'<br>';					
				}
			}
		}
	}
	
}


function get_labels($link,$examination_id)
{
	$sql='select * from labels where examination_id=\''.$examination_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	$label=array();
	while($ar=get_single_row($result))
	{
		$label[]=$ar['id'];
	}
	return $label;
}
    
/*
function get_unique_id_array_for_sample_id($link,$sample_id,$data)
{
	$sql='select 
				examination_id,
				json_extract(edit_specification,\'$.unique_prefix\') as unique_prefix,
				json_extract(edit_specification,\'$.table\') as id_table 
			from examination 
			where 
				json_extract(edit_specification,\'$.type\')="id_single_sample" or 
				json_extract(edit_specification,\'$.type\')="id_multi_sample"';

	//echo $sql.'<br>';
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)<=0){return false;}
	
	$ret=array();
	
	while($ar=get_single_row($result))
	{
		//print_r($ar);
		$uid=get_any_examination_result($link,$sample_id,$ar['examination_id']);
		if($uid!==False)
		{
			//echo '<h5>sample_id = '.$sample_id.' , unique_id_type='.$ar['examination_id'].' , unique_id_value ='.$uid.'</h5>';
			//$data[$uid]=$ar['examination_id'];
			$labels=get_labels($link,$ar['examination_id']);
			$data[$uid][$ar['examination_id']]=$labels;
		}
	}
	//echo '<pre>';print_r($data);echo '</pre>';
	return $data;
}
*/

?>
