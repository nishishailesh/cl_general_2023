<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$user=get_user_info($link,$_SESSION['login']);
$auth=explode(',',$user['authorization']);
echo '<div id=response></div>';
//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

main_menu($link);

	echo '<br>';

for($sample_id=42787;$sample_id<42793;$sample_id++)
{
	$interval=get_TAT_between_two_status($link,$sample_id,10003,10008);
	if($interval==False){echo 'NA';}
	else
	{
		echo 'data:'.$interval;
	}
	echo '<br>';
}
echo '<h1>થોડી વાર લાગશે  ...</h1>';
exit(0);
//////////////user code ends////////////////
tail();


//////////////Functions///////////////////////
/*
function get_minutes($interval)
{
			$interval['y']
			$interval['m']
			$interval['d']
			$interval['h']
			$interval['i']
			$interval['s']
			$interval['f']
			($interval['invert']==1?'Negative':'')
			$interval['days']
	
}
*/

function __get_TAT_between_two_status($link,$sample_id,$status_ex_id_1,$status_ex_id_2)
{
				$val_1=get_one_ex_result($link,$sample_id,$status_ex_id_1);	//false if not yet requested
				$val_2=get_one_ex_result($link,$sample_id,$status_ex_id_2);	//false if not yet requested
				//echo $val_1.'----'.$val_2;
				if(strlen($val_1)>0 && strlen($val_2)>0)
				{
					$interval=date_diff(date_mysql_to_PHP_object($val_1),date_mysql_to_PHP_object($val_2));
					//$interval_str=date_interval_format($interval,'%Y Years, %m Months, %d Days, %H Hours, %i Minutes, %s Seconds');
					return $interval;
				}
}

function get_TAT_between_two_status($link,$sample_id,$status_ex_id_1,$status_ex_id_2)
{
				$val_1=get_one_ex_result($link,$sample_id,$status_ex_id_1);	//false if not yet requested
				$val_2=get_one_ex_result($link,$sample_id,$status_ex_id_2);	//false if not yet requested
				//echo $val_1.'----'.$val_2;
				if(strlen($val_1)>0 && strlen($val_2)>0)
				{
					$interval=strtotime($val_1)-strtotime($val_2);
					//$interval_str=date_interval_format($interval,'%Y Years, %m Months, %d Days, %H Hours, %i Minutes, %s Seconds');
					return $interval/60;
				}
}

?>
