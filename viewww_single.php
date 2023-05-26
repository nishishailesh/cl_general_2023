<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

if(!isset($_SESSION['display_style'])){$_SESSION['display_style']='full';}
$_SESSION['display_style']=isset($_POST['display_style'])?$_POST['display_style']:$_SESSION['display_style'];

if($_SESSION['display_style']=='full')
{
	echo '<div class="print_hide">';
	main_menu($link);
	echo '</div>';
}



echo '<div class="print_hide ">';

	echo '<div class="d-inline-block ">';
		select_display_style();
	echo '</div>
	<div class="d-inline-block print_hide">';
		get_dbid_small($_POST['sample_id']);
	echo '</div>';
echo '</div>';

	if(!sample_exist($link,$_POST['sample_id'])){ echo '<h5>Sample Id '.$_POST['sample_id'].' does not exist</h5>';exit();}

if($_POST['action']=='Save_TAT_remark')
{
        insert_update_one_examination_with_result(
                                                        $link,
                                                        $_POST['sample_id'],
                                                        $GLOBALS['TAT_remark_id'],
                                                        $_POST['tat_remark']
                                                );
}


if(isset($_POST['action']))
{
	if($_POST['action']=='set_sample_status')
	{
		insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%d %H:%M"));
	}
}

xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);

if($_SESSION['display_style']=='full')
{
	//$tat=calculate_tat($link,$_POST['sample_id'],$print='no');
	xxx_view_sample($link,$_POST['sample_id']);
}
else
{
	xxx_view_sample_compact($link,$_POST['sample_id']);
}

//echo '<pre>';print_r($tat);echo '</pre>';

//////////////user code ends////////////////
tail();


//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function select_display_style()
{
	echo '<div class="d-inline-block" ><form method=post class=print_hide>
	<button class="btn btn-outline-success btn-sm m-0 p-0" name=display_style value=full >Full</button>
	<button class="btn btn-outline-success btn-sm  m-0 p-0" name=display_style value=compact >Compact</button>
	<input type=hidden name=sample_id value=\''.$_POST['sample_id'].'\'>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=view_single>
	</form></div>';
}


function get_dbid_small($sample_id)
{
echo '<form method=post action=viewww_single.php>';
echo '<input name=sample_id value=\''.$sample_id.'\' class="m-0 p-0 input-sm" type=text size=6>';
echo '<button type=submit class="btn btn-sm m-0 p-0 btn-primary" name=action value=view_dbid>View</button>';
echo '<input  type=hidden name=session_name value=\''.session_name().'\'>';
echo '</form>';

		echo '<table><tr>';
		echo '<td>';
		xxx_sample_id_prev_button($sample_id);
		echo '</td>';
		echo '<td>';
		xxx_sample_id_next_button($sample_id);
		echo '</td>';
		echo '</tr></table>';
}
?>


