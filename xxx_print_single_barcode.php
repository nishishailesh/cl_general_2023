<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<pre>';print_r($_POST);echo '</pre>';
//exit(0);	//echo will cause problem in pdf

$pdf=get_pdf_link_for_barcode();
xxx_prepare_sample_barcode($link,$_POST['sample_id'],$_POST['label_id'],$pdf);
print_pdf($pdf,'barcode.pdf');

//echo '<pre>';print_r($_FILES);echo '</pre>';

/*

Array
(
    [action] => one_barcode
    [session_name] => sn_1714021314
    [sample_id] => 1259664
    [label_id] => 3
)

*/


function get_lable_details($link,$label_id)
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
		'stretch' => false,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => false,
		'font' => 'helvetica',
		'fontsize' => 10,
		'stretchtext' => 4
	);

		$label_details=get_lable_details($link,$label_id);
		//echo '<pre>';print_r($label_details);echo '</pre>';
		//return;
		
/*

Array
(
    [caption] => -1
    [data] => Array
        (
            [1] => sample_id,h,b,05,05,15,05
            [2] => sample_id,h,t,05,10,15,05
            [3] => 1045,h,t,05,15,15,05
            [4] => 1045,h,t,05,20,15,05
        )
)
 
*/ 
		$pdf->AddPage();
		
		$id_value=get_id_type_examination_result($link,$sample_id,$label_details['examination_id']);
		$label_details=get_lable_details($link,$label_id);
		$label_specification=json_decode($label_details['data'],true);
		//echo '<pre>';print_r($label_specification);echo '</pre>';
		$caption=isset($label_specification['caption'])?$label_specification['caption']:'';
		$data=isset($label_specification['data'])?$label_specification['data']:'';
		foreach($data as $item_csv)
		{
			$item=explode(',',$item_csv);
			//print_r($item);
			if($item[0]=='sample_id')
			{
				if($item[2]=='b')
				{
					$pdf->write1DBarcode($item[0], 'C128', $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
				}
				else if($item[2]=='t')
				{
					$pdf->SetFont('helveticaB', '', 5);
					$pdf->SetXY($item[3],$item[4]);
					$pdf->Cell($item[5],$item[6],$item[0],$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
				}
			}
			else
			{
				if($item[2]=='b')
				{
					$pdf->write1DBarcode($item[0], 'C128', $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
				}
				else if($item[2]=='t')
				{
					$pdf->SetFont('helveticaB', '', 5);
					$pdf->SetXY($item[3],$item[4]);
					$pdf->Cell($item[5],$item[6],$item[0],$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
				}
			}
		}
}

/*

{
 "caption":"-1",
 "sample_id":"h,b,05,05,15,05",
 "sample_id":"h,t,05,10,15,05",
 "1045"     :"h,t,05,15,15,05",   
 "1045"     :"h,t,05,20,15,05"   
}




function xxx_prepare_sample_barcode($link,$sample_id,$pdf)
{
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => false,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 10,
		'stretchtext' => 4
	);
	
		$sql='select * from result where sample_id=\''.$sample_id.'\'';
		$result=run_query($link,$GLOBALS['database'],$sql);
		if(get_row_count($result)==0){return;}
		
		$pdf->AddPage();
		$pdf->write1DBarcode($sample_id, 'C128', 02, 5 , 30, 13, 0.4, $style, 'N');		
		
		$pdf->StartTransform();
		$pdf->SetFont('helveticaB', '', 15);
		$pdf->Rotate(90, 43, 18);
		$pdf->SetXY(40,11);
		$pdf->Cell(15,5,$sample_id,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
		$pdf->StopTransform();
		
		while($ar=get_single_row($result))
		{
			if($ar['examination_id']==$GLOBALS['sample_requirement'])
			{
				$sample_type=$ar['result'];	
				$pdf->SetFont('helveticaB', '', 7);		
				$pdf->SetXY(5,17);
				$pdf->Cell(15,3,$sample_type,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
				
				$pdf->StartTransform();
				$pdf->SetFont('helveticaB', '', 8);
				$pdf->Rotate(90, 43, 18);
				$pdf->SetXY(40,15);
				$pdf->Cell(15,5,$sample_type,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
				$pdf->StopTransform();
			}
			
			else if($ar['examination_id']==$GLOBALS['patient_name'])
			//else if($ar['examination_id']==$GLOBALS['mrd'])
			{
				$patient_name=substr($ar['result'],0,10);
				//$patient_name=$ar['result'];
				$pdf->SetFont('helveticaB', '', 7);
				$pdf->SetXY(21,17);
				$pdf->Cell(10,3,$patient_name,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	

                                $pdf->StartTransform();
                                $pdf->SetFont('helveticaB', '', 6);
                                $pdf->Rotate(90, 43, 18);
                                $pdf->SetXY(40,17);
       				$pdf->Cell(15,5,$patient_name,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=0, $ignore_min_height=false, $calign='T', $valign='M');	
                                $pdf->StopTransform();


			}
		}
				
}


*/
?>