<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
echo '<div id=response>Notice:</div>';

main_menu($link);

if($_POST['action']=='new_general')
{
	get_data_specific($link);
}


elseif($_POST['action']=='insert')
{
	$sample_id_array=save_insert_specific($link);
	if(count($sample_id_array)==0){echo '<h3>No sample required // Nothing to be done</h3>';}
	foreach($sample_id_array as $sample_id)
	{
		view_sample($link,$sample_id);
	}
}

	echo '<div>
				<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
				echo '	<div id="status-window" 
							class="border border-success">status:
						</div>
			</div>';

function get_data_specific($link)
{
	echo '<form method=post class="bg-light jumbotron">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';

	echo '<ul class="nav nav-pills nav-justified">
			<li class="active" ><button class="btn btn-secondary" type=button data-toggle="tab" href="#basic">Basic</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#examination">Examinations</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#profile">Profiles</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#super_profile">SuperProfiles</button></li>
			<li><button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button></li>
		</ul>';
	echo '<div class="tab-content">';
	
		echo '<div id=basic class="tab-pane active">';
			get_basic_specific();
			
		echo '</div>';	
		get_examination_data($link);
		get_profile_data($link);
		get_super_profile_data($link);
	echo '</div>';

	echo '</form>';			
}


//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////


?>
