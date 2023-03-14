<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

main_menu($link);

if($_POST['action']=='new_general')
{
	get_data_specific($link);
}


elseif($_POST['action']=='insert')
{/*
	$sample_id_array=save_insert_specific($link);
	if(count($sample_id_array)==0){echo '<h3>No sample required // Nothing to be done</h3>';}
	foreach($sample_id_array as $sample_id)
	{
		view_sample($link,$sample_id);
	}*/
}


function get_data_specific($link)
{
	echo '<form method=post class="bg-light jumbotron">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	x_get_basic_specific();
	
	//$sql='select examination_id, 
	//concat(name,"---->",sample_requirement,"---->",description,"id ---->") as description 
	//from examination order by name';

	
	$sql='select id, 
	concat(name,"---->",examination_ids,"---->",price) as description 
	from available_request order by name';
		
	x_get_examination_data($link,$sql,'id',$multi='no',$size=10);
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	
	echo '</form>';		
	
}


//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////


?>
