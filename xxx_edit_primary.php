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
echo '<div id=response class="border border-success"></div>';

if(in_array('requestonly',$auth))
{
	exit(0);
}

main_menu($link);

echo '<h2 class="text-info">Close window after update. Refresh parent page</h2>';

//xxx_edit_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);
//edit_field_any($link,$_POST['examination_id'],$_POST['sample_id'],$readonly='',$frill=True,$extra_array=array());
$pr=xxx_select_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);

echo '<form method=post>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	edit_field_any($link,$_POST['examination_id'],$_POST['sample_id'],$readonly='',$frill=False,$extra_array=array(),$primary='yes',$uniq=$_POST['uniq']);
	echo '<div class="basic_form  m-0 p-0 no-gutters">';
		echo '<div>Extra</div><input type=text name=extra><div class="help">any Extra Remark</div>';
		echo '<div>Sample ID</div><input type=text readonly name=sample_id value=\''.$_POST['sample_id'].'\' ><div  class="help"></div>';
		echo '<div>Examination ID</div><input readonly type=text name=examination_id value=\''.$_POST['examination_id'].'\' ><div  class="help"></div>';
		echo '<div>unique</div><input type=text name=uniq readonly value=\''.$_POST['uniq'].'\' ><div  class="help">unique value to differenciate this result from other results</div>';
		echo '<div></div><button type=submit name=action value=save>Save</button><div  class="help"></div>';
	echo '</div>';
echo '</form>';

//////////////user code ends////////////////
tail();

function xxx_select_one_primary_result($link,$sample_id,$examination_id,$uniq)
{
	$sql='select * from primary_result where 
			sample_id=\''.$sample_id.'\' and
			examination_id=\''.$examination_id.'\' and
			uniq=\''.$uniq.'\'
			';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	return $ar=get_single_row($result);
}

echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

//////////////Functions///////////////////////
/*


Array
(
    [result] => 1.54
    [sample_id] => 9022600
    [examination_id] => 9001
    [uniq] => 20230801212206
    [action] => edit_single
    [session_name] => sn_1379366941
)

*/
?>
