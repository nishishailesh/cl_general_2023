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

echo 'search_text='.$_POST['search_text'].'<br>';

$sql='select * from examination where lower(name) like lower("%'.$_POST['search_text'].'%")';
$result=run_query($link,$GLOBALS['database'],$sql);
while($ar=get_single_row($result))
{
	//print_r($ar);
	display_one_examination($link,$ar['examination_id'],'xyz');
}
?>
