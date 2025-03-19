<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<pre>';print_r($_POST);echo '</pre>';

$pid_name=get_name_of_ex_id($link,$GLOBALS['mrd']);

echo '<form method=post action=xxx_print_collective.php>';
echo '<h3>Provide '.$pid_name.' in the box below and submit</h3>';
echo '<input type=text name=pid />';
echo '<button type=submit class="btn btn-sm btn-info" >Get Reports</button>';
echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
echo '</form>';

