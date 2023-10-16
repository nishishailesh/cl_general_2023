<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/common.php';
require_once 'config.php';
require_once $GLOBALS['main_user_location'];
$_SESSION['login']='3';
	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
//echo '<pre>';print_r($_GET);echo '</pre>';
//echo '<pre>';print_r($_SESSION);echo '</pre>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$sample_id=get_slink($link,$_GET['token']);
//echo $sample_id;
//exit(0);

$pdf=xxx_prepare_for_report_printing();
xxx_fill_report($link,$sample_id,$pdf);
generate_pdf_for_report($pdf);
//////////////user code ends////////////////
//tail();

function get_slink($link,$slink)
{
	
	$sql='select  * from sample_link where link=\''.$slink.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	if(isset($ar['sample_id']))
	{
		return $ar['sample_id'];
	}
	else
	{
		return false;
	}
}

?>
