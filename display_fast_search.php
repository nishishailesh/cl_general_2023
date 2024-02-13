<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
			  <script src="project_common.js"></script>';

////////User code below/////////////////////


echo '<style>
.monitor_grid
{
display: grid;
grid-gap: 5px;
grid-template-areas:
';
	for ($i=1;$i<=200;$i++)
	{
		if($i%10==1 && ($i/10)%2==0){echo '\'';}	
		echo 'a'.str_pad($i,3,0,STR_PAD_LEFT).' ';
		if($i%10==0 && ($i/10)%2==0){echo '\' ';}
	}
echo ';}
</style>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);

echo '<pre>';print_r($_POST);echo '</pre>';

if(isset($_POST['action']))
{
	if($_POST['action']=='set_sample_status')
	{
		insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%dT%H:%M"));
	}
}

if(!isset($_POST['from']))
{
	$sql='select sample_id from result where examination_id=\''.$_POST['examination_id'].'\' and result like \'%'.$_POST['search_string'].'%\' ';
}
else
{
	$sql='select sample_id from result where examination_id=\''.$_POST['examination_id'].'\' and result between \''.$_POST['from'].'\'  and \''.$_POST['to'].'\'';
}

echo $sql.'<br>';
$result=run_query($link,$GLOBALS['database'],$sql);

echo '<div class=monitor_grid>';
	$count=1;
	while($ar=get_single_row($result))
	{
		showww_sid_button_release_status($link,$ar['sample_id'],$extra_post='',$u=0,$checkbox='no');
		$count++;	//increase only if successful
	}
echo '</div>';
				

//////////////user code ends////////////////
tail();
//echo '<pre>';print_r($_SESSION);echo '</pre>';

//////////////Functions///////////////////////


?>
