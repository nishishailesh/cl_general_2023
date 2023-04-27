<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
			  <script src="project_common.js"></script>';

////////User code below/////////////////////

/*
 * Plan: like newww, view should have dynamic menu
 * Plan examination type: autonumber, with its own table 
 * 
*/

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);


//Set conditions
$conditions=array();
if(isset($_POST['conditions']))
{
	$conditions=json_decode($_POST['conditions']);
}
else
{
	foreach($_POST as $k=>$v)
	{
		//echo $k.'<br>';
		$ex=explode('_',$k);
		//print_r($ex);
		if($ex[0]=='chk')
		{
			//echo '>>>'.$_POST['__ex__'.$ex[1]];
			if(strlen($_POST['__ex__'.$ex[1]])>0)
			{
				//echo '>>>'.$_POST['__ex__'.$ex[1]];
				$conditions[$ex[1]]=$_POST['__ex__'.$ex[1]];
			}
		}
	}
}

//echo '<pre>';print_r($conditions);echo '</pre>';


//update if required
if (isset($_POST['action']) && isset($_POST['sample_id']))
{
	update_sample_status($link,$_POST['sample_id'],$_POST['action']);
	
}

//set id_range
if(isset($_POST['id_range']) && strlen($_POST['id_range'])>0)
{
	$_SESSION['id_range']=$_POST['id_range'];
}
else if(isset($_SESSION['id_range']))
{
	$_SESSION['id_range']=$_SESSION['id_range'];
}
else
{
	$_SESSION['id_range']="1000000-1999999";
}

//Set from to
$range=explode('-',$_SESSION['id_range']);
$min=$range[0];
$max=$range[1];
echo '<h4>last sample_id in range:'.$_SESSION['id_range'].' is  <span class="text-danger" > '.find_max_sample_id($link,$min,$max).'</span></h4>';

	$from=$_POST['from'];
	$to=$_POST['to'];
	if(strlen($from)==0)
	{
		$to=find_max_sample_id($link,$min,$max);
		$from=($to>=$min+200)?($to-200):$min;
	}
	else
	{
		if(strlen($to)==0)
		{
			$to=$from;
		}
	}

//set post for update
$extra_post='
<input type=hidden name=from value=\''.$from.'\'>
<input type=hidden name=to value=\''.$to.'\'>
<input type=hidden name=conditions value=\''.json_encode($conditions).'\'>';

//show samples as selected
$sql='select sample_id from result where examination_id=\''.$GLOBALS['sample_requirement'].'\' and sample_id betweeen \''.$from.'\' and \''.$to.'\' ';
//echo $sql.'<br>';

	for ($i=$from;$i<=$to;$i++)
	{
		if(check_for_conditions($link,$i,$conditions))
		{
			if($_POST['action']=='view_dbid_detail')
			{	
				xxx_view_sample($link,$i);
			}
			else
			{
				showww_sid_button_release_status($link,$i,$extra_post);
			}
		}

		if($_POST['action']=='view_dbid_detail')
		{
			echo '<div style="page-break-after: always;"></div>';
		}
	}
				

//////////////user code ends////////////////
tail();
echo '<pre>';print_r($_POST);echo '</pre>';
//echo '<pre>';print_r($_SESSION);echo '</pre>';

//////////////Functions///////////////////////

function check_for_conditions($link,$sid,$conditions)
{
	$ret=True;
	foreach($conditions as $ex_id => $value)
	{
		$result=get_one_ex_result($link,$sid,$ex_id);
		if(strpos($result,$value)!==False)
		{
			
		}
		else
		{
			$ret=False;
		}
	}
	return $ret;
}
?>
