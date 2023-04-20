<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<pre>';print_r($_POST);echo '</pre>';
//exit(0);	//echo will cause problem in pdf

$pdf=get_pdf_link_for_barcode();
xxx_prepare_sample_barcode($link,$_POST['sample_id'],$_POST['label_id'],$pdf);
print_pdf($pdf,'barcode.pdf');


/*

Array
(
    [action] => one_barcode
    [session_name] => sn_1714021314
    [sample_id] => 1259664
    [label_id] => 3
)

*/


function get_label_details($link,$label_id)
{
	$sql='select * from labels where id=\''.$label_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	return $ar=get_single_row($result);
}

function xxx_prepare_sample_barcode($link,$sample_id,$label_id,$pdf)
{
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => True,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => false,
		'font' => 'helvetica',
		'fontsize' => 5,
		'stretchtext' => true
	);

		//label data
		$label_details=get_label_details($link,$label_id);
		$label_specification=json_decode($label_details['data'],true);
		//echo '<pre>';print_r($label_specification);echo '</pre>';
		//$caption=isset($label_specification['caption'])?$label_specification['caption']:'';		not used here, used in preparing button
		$data=isset($label_specification['data'])?$label_specification['data']:array();

		//examination data
		//echo $label_details['examination_id'].'<br>';
		$examination_details=get_one_examination_details($link,$label_details['examination_id']);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$prefix=isset($edit_specification['unique_prefix'])?$edit_specification['unique_prefix']:'';
		//echo '==================='.$prefix;
				
		$pdf->AddPage();		
		foreach($data as $item_csv)
		{
			$item=explode(',',$item_csv);
			//echo '<pre>--------->>';print_r($item);
			if($item[0]=='sample_id')
			{
				if($item[2]=='b')
				{
					$pdf->write1DBarcode($sample_id, 'C128', $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
				}
				else if($item[2]=='t')
				{
					//$pdf->SetFont('helveticaB', '', 5);
					$pdf->SetFont('helvetica', '', 7);
					$pdf->SetXY($item[3],$item[4]);
					$pdf->Cell($item[5],$item[6],$sample_id,$border=0, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
				}
			}
			else
			{
				//echo $label_details['examination_id'];
				//	echo '>>>>======get_any_examination_result==========<br>';
				//var_dump($link);
				$ex_result=get_any_examination_result($link,$sample_id,$item[0]);
				if($item[0]==$label_details['examination_id']){$ex_result=$prefix.$ex_result;}
				
				//	echo '>>>>====end of ==get_any_examination_result==========<br>';
				if($item[2]=='b')
				{
					$pdf->write1DBarcode($ex_result, 'C128', $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
				}
				else if($item[2]=='t')
				{
					//$pdf->SetFont('helveticaB', '', 5);
					$pdf->SetFont('helvetica', '', 7);
					$pdf->SetXY($item[3],$item[4]);
					$pdf->Cell($item[5],$item[6],$ex_result,$border=0, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
				}
			}
		}
}


?>
