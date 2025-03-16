<?php
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';
require_once $GLOBALS['main_user_location'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
if(!$link){exit(0);}
//echo '<pre>';print_r($_POST);echo '</pre>';

//echo 'uhid_text='.$_POST['uhid_text'].'<br>';


function date_mysql_to_PHP_object_with_format($str,$format)
{
  //date_create_from_format(string $format, string $datetime, ?DateTimeZone $timezone = null): DateTime|false
  return $datetime =date_create_from_format($format,$str);
  //return $datetime = new DateTime($str);
}

function find_age_years($dob)
{
  // 13/01/1987 00:00:00
  //("%Y-%m-%dT%H:%M"));
  //$dtobj=date_mysql_to_PHP_object_with_format($dob,"d-m-Y H:i:s");
  $dtobj=date_mysql_to_PHP_object_with_format($dob,"d-m-Y");
  //$interval=date_diff(new DateTime(),date_mysql_to_PHP_object($dob));
  $interval=date_diff(new DateTime(),$dtobj);
  //$interval_str=date_interval_format($interval,'%Y Years, %m Months, %d Days, %H Hours, %i Minutes, %s Seconds');
  $interval_str=date_interval_format($interval,'%Y');
  //echo $interval_str;
  return $interval_str;
}
    
    
$sql='select * from ehospital where UHID ="'.$_POST['uhid_text'].'"';
$result=run_query($link,$GLOBALS['database'],$sql);
$ar=get_single_row($result);
$age=find_age_years($ar['DOB']);
$ar['age']=$age;
echo json_encode($ar);
?>
