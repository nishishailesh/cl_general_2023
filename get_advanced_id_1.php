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

//get_advanced_id($link);


get_one_field_for_range_print($link,1049);


//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_one_field_for_range_print($link)
{
	echo '<form method=post action=print_range_of_barcode_1.php target=_blank>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<div class="two_column">';	

		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="from">Prefix</label>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=from  	name=\'__prefix__\' 	class="form-control text-danger"\>';
		echo '</div>';
		
				
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="from">From</label>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=from  	name=\'__from__\' 	class="form-control text-danger"\>';
		echo '</div>';
				
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="from">to</label>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=from  	name=\'__to__\' 	class="form-control text-danger"\>';
		echo '</div>';		
	echo '</div>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=print>Print</button>';
	
	echo '</form>';
}

?>
