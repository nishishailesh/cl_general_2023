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
echo '<h3>Search Samples</h3>';
echo '<h4>If From/To not given, last 200 ids will be searched</h4>';
$range=explode('-',$_SESSION['id_range']);
$min=$range[0];
$max=$range[1];
echo '<h4 id=last_sample_id >last sample_id in range:'.$_SESSION['id_range'].' is <span class="text-danger"> '.find_max_sample_id($link,$min,$max).'</span></h4>';


$tok=explode("|",$_POST['action']);
//print_r($tok);

if($tok[0]=='get_dbids')
{
	get_dbid($link);
}

//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_dbid($link)
{

echo '<form method=post action=viewww_from_to_opd.php>';
echo '<div class="basic_form">';
	echo '<div>ID Range</div>';
	show_id_range_options($link);
echo '</div>';

echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="from">From Sample ID</label>
			<input type=number size=13 id=from name=from class="form-control text-danger"\>
			<p class="help"><span class=text-danger>Must be</span> number</p>';
	echo '	<label class="my_label text-danger" for="to">To Sample ID</label>
			<input type=number size=13 id=from name=to class="form-control text-danger"\>
			<p class="help"><span class=text-danger>Must be</span> number</p>';
		
echo '</div>';

get_one_field_for_search($link,1001);
get_one_field_for_search($link,1002);
get_one_field_for_search($link,1004);
get_one_field_for_search($link,1005);
get_one_field_for_search($link,1006);
get_one_field_for_search($link,1017);

echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_summary>View (Summary)</button>';
echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_detail>View (Detail)</button>';
echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
echo '</form>';

}

function get_one_field_for_search($link,$examination_id)
{

		echo '<div class="basic_form">';
			echo '<div class="d-inline p-2">';
				echo '<input class="float-right" name=\'chk_'.$examination_id.'\' type=checkbox>';
			echo '</div>';
			echo '<div class="d-inline-block">';
				get_one_field_for_insert($link,$examination_id);
			echo '</div>';
		echo '</div>';
}


?>
