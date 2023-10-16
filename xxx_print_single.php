<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$pdf=xxx_prepare_for_report_printing();
xxx_fill_report($link,$_POST['sample_id'],$pdf);
generate_pdf_for_report($pdf);

?>
