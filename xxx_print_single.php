<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$compact_report_index=0;


class XPDF extends TCPDF {
	
	public $bottom;
	public $header;
	public $footer;
	public $curX;
	public $curY;
	
	public function set_all_margins($left,$top,$right,$bottom)
	{
		// set margins
		$this->SetMargins($left, $top, $right , true);
		$this->bottom=$bottom;
		
		$this->SetAutoPageBreak(TRUE, $this->bottom);

		$this->SetHeaderMargin(10);	//top border of page  and header start 
		$this->SetFooterMargin(5); // no effect?
	}
	
	
	public function Header() 
	{
		$this->SetFont('helvetica', '', 10);
		$this->writeHTML($this->header, true, false, true, false, '');
	}
	
	public function Footer() 
	{
		$this->SetY(-($this->bottom)+2);		//match with $pdf->SetAutoPageBreak(TRUE, 40);
		$this->SetFont('helvetica', '', 10);
		$this->writeHTML($this->footer, true, false, true, false, '');
	}
}


$pdf = new XPDF('P', 'mm', 'A4', true, 'UTF-8', false);
$pdf->sample_id=$_POST['sample_id'];


////////////////////////////////
////////SET HEADER//////////////
////////////////////////////////
//header footer overflow not solved
$header_data=get_header($link,$_POST['sample_id']);
$pdf->header=$header_data[0];
$header_ex=$header_data[1];

////////////////////////////////
////////SET FOOTER//////////////
////////////////////////////////
$pdf->startPageGroup();
$footer='<table><tr><td>Page '.$pdf->getPageNumGroupAlias().'/'.$pdf->getPageGroupAlias().'</td><td colspan="2">Note:'.get_config_value($link,"footer_notice").'</td></tr></table>';
//$footer='<table><tr><td>Page '.$pdf->getAliasNumPage().'/'.$pdf->getAliasNbPages().'</td><td colspan="2">Note:'.get_config_value($link,"footer_notice").'</td></tr></table>';
$pdf->footer=$footer;

////////////////////////////////
////////SET MARGIN//////////////
////////////////////////////////

$left=get_config_value($link,'report_left_margin');
$right=get_config_value($link,'report_right_margin');
$top=get_config_value($link,'report_top_margin');
$bottom=get_config_value($link,'report_bottom_margin');

$pdf->set_all_margins($left=$left,$top=$top,$right=$right,$bottom=$bottom);


////////////////////////////////
////////ADD PAGE////////////////
////////////////////////////////
$pdf->AddPage();
//echo $pdf->curY;

ob_start();
//print_r($_POST);
xxx_print_sample($link,$_POST['sample_id'],$header_ex);
$myStr = ob_get_contents();
ob_end_clean();
//echo $myStr;
//exit(0);

$pdf->SetFont('helvetica', '', 10);
$pdf->writeHTML($myStr, true, false, true, false, '');
$pdf->Output('report.pdf', 'I');


?>

?>
