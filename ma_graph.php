<?php
session_name($_POST['session_name']);
session_start();
require_once 'config.php';
require_once 'base/common.php';
require_once 'project_common.php';

echo '
<head>
  <script src="bootstrap/chart.min.js"></script>
</head>';

//<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

require_once $GLOBALS['main_user_location'];
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//$lot_size=200;
$lot_size=100;


if(isset($_POST['login']))
{
	$_SESSION['login']=$_POST['login'];
}

if(isset($_POST['password']))
{
	$_SESSION['password']=$_POST['password'];
}

if(!isset($_SESSION['login']) && !isset($_POST['login']))
{
		exit(0);
}

if(!isset($_SESSION['password']) && !isset($_POST['password']))
{
		exit(0);
}


//$one='select avg_value from moving_average order by date_time desc limit 200';
//$one='select * from moving_average where examination_id=\''.$_POST['examination_id'].'\' order by date_time desc limit '.$_POST['limit'].' offset '.$_POST['offset'];
//$result=run_query($link,$GLOBALS['database'],$one);
//$data=array();
//while($ar=get_single_row($result))
//{
//  $data[]=	'{'.'ex_id:'.'\''.$ar['examination_id'].'\''.
//		','.'date_time:'.'\''.$ar['date_time'].'\''.
//		','.'avg_value:'.'\''.$ar['avg_value'].'\''.
//		','.'sample_id:'.'\''.$ar['sample_id'].'\''.
//		','.'value:'.'\''.$ar['value'].'\''.
//		'}';
//}

//print_r($data);
//$json='['.implode(",",$data).']';
//$json=implode(",",$data);
//echo $json;


function echo_png_from_python($png_bytes)
{
	echo "<img width=1200 src='data:image/png;base64,".base64_encode($png_bytes)."'/>";
}

function get_from_python($python_script)
{
	$command = escapeshellcmd($python_script);
	$output = shell_exec($command);
	return $output;
}

//////Getting data from python//////
echo get_from_python('extra/all_ma.py '.$_POST['limit'].' '.$_POST['offset'].' '.$_POST['examination_id']);
echo "<br>Newer data on Right. Older data on left";
echo "<br>mean of mean is mean of moving average";
echo "<br>sd of mean is sd of moving average";
echo "<br>horizontal lines represent mean and +/- sd up to 3 sd ";

?>


