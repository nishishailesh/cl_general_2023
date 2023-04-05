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
echo '<h3>View Reports between two sample_id and Specific Location</h3>';


$tok=explode("|",$_POST['action']);
//print_r($tok);

if($tok[0]=='get_dbids')
{
	get_dbid($link);
}

//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_dbid($link)
{

echo '<form method=post action=viewww_from_to_opd.php>';
echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="from">From Sample ID</label>
			<input type=number size=13 id=from name=from class="form-control text-danger" required="required" \>
			<p class="help"><span class=text-danger>Must be</span> number</p>';
	echo '	<label class="my_label text-danger" for="to">To Sample ID</label>
			<input type=number size=13 id=from name=to class="form-control text-danger"\>
			<p class="help"><span class=text-danger>Must be</span> number</p>';
		
echo '</div>';

get_one_field_for_search($link,1006);	//OPD/Ward
get_one_field_for_search($link,1007);	//OPD/Ward
get_one_field_for_search($link,1008);	//OPD/Ward
get_one_field_for_search($link,1001);	//OPD/Ward

echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_summary>View (Summary)</button>';
echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_detail>View (Detail)</button>';
echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
echo '</form>';
echo 	'<ul>
			<li>If only <b>From</b> is provided -> Single Sample will be shown</li>
			<li>If only <b>From</b> and <b>To</b> is provided -> Range of Sample will be shown</li>
			<li>If <b>From</b> and <b>To</b> and <b>OPD/Ward</b> is provided -> Location-Filtered Range of Sample will be shown</li>
		</ul>';
}

function get_one_field_for_search($link,$examination_id)
{
	echo '<div class="basic_form">';
		echo '<div class="d-inline p-2">';
			echo '<input class="float-right"  type=checkbox>';
		echo '</div>';
		echo '<div class="d-inline-block">';
			get_one_field_for_insert($link,$examination_id);	//OPD/Ward
		echo '</div>';
	echo '</div>';
}


?>
