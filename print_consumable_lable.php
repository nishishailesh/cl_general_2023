<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

//echo '<pre>';print_r($_POST);echo '</pre>';
//exit();

$pdf=get_pdf_link_for_barcode();
prepare_label($link,$pdf,$_POST['id']);
print_pdf($pdf,'consumable_'.$_POST['id'].'.pdf');


function prepare_label($link,$pdf,$id)
{

	$sql='select * from consumable_receipt where id=\''.$id.'\' ';
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		 return false;
	}
    $array=get_single_row($result);
	//echo '<pre>';print_r($array);echo '</pre>';
    //return;    
	
	
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => false,	//true, print text below barcode
		'font' => 'helvetica',
		'fontsize' => 8,
		'stretchtext' => 4
	);

	$pdf->AddPage();
	$pdf->SetFont('helveticaB', '', 10);
	$pdf->write1DBarcode($id, 'C128',5,5 , 40, 7, 0.4, $style, 'N');

	$pdf->SetXY(5,12);
	$pdf->Cell (19,5,substr($array['consumable_name'],0,10),$border=0, $ln=1, $align='L', $fill=false, $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
	$pdf->SetXY(5+20,12);
	$pdf->Cell (20,5,$array['lot_identifier'].'^'.$array['serial_number'],$border=0, $ln=1, $align='R', $fill=false, $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	

	$pdf->SetXY(5,12+5);
	$pdf->Cell (19,5,"X:".$array['date_of_expiry'],$border=0, $ln=1, $align='L', $fill=false, $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
	$pdf->SetXY(5+20,12+5);
	$pdf->Cell (20,5,"R:".$array['date_of_receipt'],$border=0, $ln=1, $align='R', $fill=false, $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	

}

/*


Array
(
    [id] => 833
		[consumable_name] => GLC_GODPOD
		[lot_identifier] => B102332
		[serial_number] => 2
    [unit_size] => 440 ML
    [manufacturer] => ERBA
    [date_of_manufacture] => 2023-10-01
    [date_of_expiry] => 2025-09-01
    [date_of_receipt] => 2023-12-02
    [condition_on_receipt] => OK
    [date_of_starting_use] => 
    [date_of_ending_use] => 
    [remark] => 
    [recording_time] => 2024-03-05 23:54:52
    [recorded_by] => 1
)

*/

?>
