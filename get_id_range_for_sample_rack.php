<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

/////Note////
//it is not by mrd
//it is by databaase ID
main_menu($link);
echo '<div id=response></div>';

if($_POST['action']=='get_range')
{
	get_dbid($link);
}


//elseif($_POST['action']=='view_dbid')
//{
	////echo_class_button($link,'Haemogram');
	//view_sample($link,$_POST['sample_id']);
//}

//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_dbid()
{

echo '<form method=post action=print_rack_id.php target=_blank>';
echo '<div class="basic_form">';

	echo '	<label class="my_label text-danger" for="append">prefix</label>
			<input type=text  size=13 id=prefix name=prefix class="form-control text-danger" \>
			<p class="help"><span class=text-danger>text to prefix</span></p>';

	echo '	<label class="my_label text-danger" for="from">From ID</label>
			<input type=text size=13 id=from name=from class="form-control text-danger" required="required" \>
			<p class="help"><span class=text-danger>Must be</span> number</p>';

	echo '	<label class="my_label text-danger" for="to">To ID</label>
			<input type=text size=13 id=from name=to class="form-control text-danger" required="required" \>
			<p class="help"><span class=text-danger>Must be</span> number</p>';

echo '</div>';
echo '<button type=submit class="btn btn-primary form-control" name=action value=view_dbid>Print small barcode</button>';
echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
echo '</form>';
}

?>
