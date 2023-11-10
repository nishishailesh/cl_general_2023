<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
	
//$sample_id_array=array(1000000,10000010);

//print_r($sample_id_array);
//exit();

//echo '<pre>';print_r($_POST);echo '</pre>';

$pdf=get_pdf_link_for_barcode();
for($i=$_POST['from']; $i<=$_POST['to']; $i=$i+100)
{
	//prepare_small_sample_barcode_horizontal($i,$pdf);
	prepare_rack_id($i,$pdf);
}
print_pdf($pdf,'barcode.pdf');


//echo '<pre>';print_r($_POST);echo '</pre>';
//echo '<pre>';print_r($_FILES);echo '</pre>';


function prepare_rack_id($id,$pdf)
{
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
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 10,
		'stretchtext' => 4
	);
		
		$pdf->AddPage();
		$pdf->SetXY(5,5);		
		$pdf->SetFont('helveticaB', '', 20);		
		$pdf->Cell(40,15,$_POST['prefix'].$id.' - '.$_POST['prefix'].($id+99),$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
}

?>
