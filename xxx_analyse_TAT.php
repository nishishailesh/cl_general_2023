<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
require_once "Math/Stats.php";
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$user=get_user_info($link,$_SESSION['login']);
$auth=explode(',',$user['authorization']);
echo '<div id=response></div>';
//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

main_menu($link);

$data=array();
echo '<h1>TAT in hours, Release - Receipt</h1>';
$max_sid=find_max_any_id($link,'sample_id');

for($sample_id=$max_sid-200;$sample_id<=$max_sid;$sample_id++)
{
	$interval=get_TAT_between_two_status($link,$sample_id,10008,10003);
	if($interval==False)
	{
		//echo $sample_id.': NA';
	}
	else
	{
		//echo $sample_id.':'.$interval;
		$data[]=$interval;
	}
	//echo '<br>';
}

print_r($data);

$mean=array_sum($data)/count($data);
$count=count($data);
echo '<br>';
echo 'Count:'.$count.'<br>';
echo 'Mean:'.$mean.'<br>';
sort($data);
//print_r($data);
$frequency=array();
foreach($data as $k=>$v)
{
		if(isset($frequency[round($v,0)."-".round($v,0)+1 ]))
		{
			$frequency[round($v,0)."-".round($v,0)+1 ]=$frequency[round($v,0)."-".round($v,0)+1]+1 ;
		}
		else
		{
			$frequency[round($v,0)."-".round($v,0)+1]=1;
		}
}

echo '<br>';
echo 'Frequency<br>';

echo '<pre>';print_r($frequency);echo '</pre>';

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
					return $interval/60/60;
				}
}

?>
