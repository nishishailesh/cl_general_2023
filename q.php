<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/common.php';
require_once 'config.php';
require_once $GLOBALS['main_user_location'];
$_SESSION['login']='3'; //for print_allowed()
  ////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
//echo '<pre>';print_r($_GET);echo '</pre>';
//echo '<pre>';print_r($_SESSION);echo '</pre>';
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//$sample_id=get_slink($link,$_GET['token']);
//echo $sample_id;
//exit(0);

$s_array=get_sample_id_array_for_any_id($link,$_GET['uid']);
//echo '<pre>';print_r($s_array);echo '</pre>';


$pdf=xxx_prepare_for_report_printing();

$final_print='yes';

foreach ($s_array as $sid)
{
    if(print_allowed($link,$sid))
    {
        xxx_fill_report($link,$sid,$pdf);
    } 
    elseif(isset($_POST['ignore']))
    {
      //doing nothing , ignoring all unreleased reports
    }
    else
    {
      
      echo '<div style="display:inline-block">';
        echo 'sample_d='.$sid.' is not eligible for print';
      echo '</div>';
        $final_print='no';
        continue;
    }
}

//exit(0);
if($final_print=='yes')
{
  generate_pdf_for_report($pdf);
}
else
{
  echo '<h3>Some of the samples are not eligible for print.</h3>';
}

?>
