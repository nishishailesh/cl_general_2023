<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$user=get_user_info($link,$_SESSION['login']);

main_menu($link);

if($_POST['action']=='direct')
{
	get_data_specific($link);
}


elseif($_POST['action']=='insert')
{
	$sample_id_array=save_insert_specific($link);
	if(count($sample_id_array)==0){echo '<h3>No sample required // Nothing to be done</h3>';}
	
	foreach($sample_id_array as $sample_id)
	{
		insert_update_one_examination_with_result($link,$sample_id,1017,'');//Received On
		insert_update_one_examination_with_result($link,$sample_id,1018,'');//Recept Time
		insert_update_one_examination_with_result($link,$sample_id,1024,$user['name']);//email
		insert_update_one_examination_with_result($link,$sample_id,1025,$_SESSION['login']);//mobile
		view_sample($link,$sample_id);
	}
}


function get_data_specific($link)
{
	echo '<form method=post class="bg-light jumbotron">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<input type=hidden name=list_of_selected_examination  value=\'\'>';
	echo '<input type=hidden name=list_of_selected_profile  value=\'\'>';

		get_basic_specific();
		
		get_one_field_for_insert($link,1002);	//Name
		get_one_field_for_insert($link,1004);	//Department
		get_one_field_for_insert($link,1005);	//Unit
		get_one_field_for_insert($link,1006);	//OPD/Ward
		get_one_field_for_insert($link,1023);	//Sample Collection
		get_one_field_for_insert($link,1015);	//Collection date
		get_one_field_for_insert($link,1016);	//Collection Time
		
		get_super_profile_data($link);
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';

	echo '</form>';			
}


//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////



?>
