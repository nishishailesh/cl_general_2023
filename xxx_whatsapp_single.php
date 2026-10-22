<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');

echo '            <link rel="stylesheet" href="project_common.css">
				<script src="project_common.js"></script>';  
                  
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//main_menu($link);
//echo '<pre>';print_r($_POST);echo '</pre>';
$pdf=xxx_prepare_for_report_printing();
xxx_fill_report($link,$_POST['sample_id'],$pdf);
//Array
//(
    //[mobile] => 9913167722
    //[sample_id] => 1216515
    //[name] => RAJESH
    //[session_name] => sn_1145768840
    //[action] => mobile
//)
//#report_1207258_9664555812_shailesh.pdf

if(ctype_digit($_POST['mobile']) && strlen($_POST['mobile'])==10)
{
$filename='/var/www/html/report/report_'.$_POST['sample_id'].'_'.$_POST['mobile'].'_'.str_replace(' ','',substr($_POST['name'],0,10)).'.pdf';
$output=generate_pdf_for_report_as_server_file($pdf,$filename);
}
else
{
	echo '<h2>Check mobile number. only 0123456789. exact 10 digits. No space.</h2>';
}
include 'viewww_single.php';
//////////////user code ends////////////////
tail();



?>
