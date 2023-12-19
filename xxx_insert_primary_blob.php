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
echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

if($_POST['action']=='insert_save')
{
		save_result_blob_primary($link);
}

if($_POST['action']=='edit_save')
{
	xxx_update_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq'],$_POST['result'],$_POST['extra']);
	edit_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);
	
}
if($_POST['action']=='insert')
{
	echo '<h2 class="text-info">Primary Result file upload: Close window after update. Refresh parent page</h2>';
	upload_primary_result_blob($link);
}

		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			echo '<div></div><button type=button class="btn btn-danger" onclick="window.close()" value=insert_save>Close Window</button><div  class="help"></div>';
		echo '</div>';
		
//////////////user code ends////////////////
tail();


//////////////Functions///////////////////////


function save_result_blob_primary($link)
{
		$blob=file_to_str($link,$_FILES['fvalue']);
		if(strlen($blob)!=0)
		{
		$sql='insert into primary_result_blob
				(sample_id,examination_id,uniq,result,fname,extra)
				values
				(
					\''.$_POST['sample_id'].'\' ,
					\''.$_POST['examination_id'].'\' ,
					\''.$_POST['uniq'].'\' ,
					\''.$blob.'\' ,
					\''.$_FILES['fvalue']['name'].'\' ,
					\''.$_POST['extra'].'\'
				)';
				
		//echo $sql;
			if(!$result=run_query($link,$GLOBALS['database'],$sql))
			{
				echo '<br>Data not insrted';
			}
			else
			{
				echo '<p>'.$_FILES['fvalue']['name'].' Saved</p>';				
			}	
		}
		else
		{
			//echo '<p>0 size file. data not updated</p>';				
		}
}




function upload_primary_result_blob($link)
{
	$examination_details=get_one_examination_details($link,$_POST['examination_id']);
	
	echo '<form method=post class="d-inline" enctype="multipart/form-data">';

			echo '<div class="basic_form  m-0 p-0 no-gutters">';
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';	
				echo '<div>';
								echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
								echo '<input type=hidden readonly size=8  name=examination_id value=\''.$_POST['examination_id'].'\'>';
								echo '<input type=hidden name=sample_id value=\''.$_POST['sample_id'].'\'>';		
								echo '<input type=file name=fvalue >';
				echo '</div>';	
			echo '</div>';
			echo '<div class="basic_form  m-0 p-0 no-gutters">';
						echo '<div>Sample ID</div><input type=text readonly name=sample_id value=\''.$_POST['sample_id'].'\' ><div  class="help"></div>';
						echo '<input readonly type=hidden name=examination_id value=\''.$_POST['examination_id'].'\' >';
						echo '<div>Extra</div><input type=text name=extra  ><div class="help">any Extra Remark</div>';
						echo '<div>unique</div><input type=text name=uniq value=\''.strftime("%Y%m%d%H%M%S").'\'><div  class="help">unique value to differenciate this result from other results</div>';
						echo '<div></div><button class="btn btn-primary" type=submit name=action class="btn btn-primary" value=insert_save>Save</button><div  class="help"></div>';
			echo '</div>';
	echo '</form>';
	
}

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
