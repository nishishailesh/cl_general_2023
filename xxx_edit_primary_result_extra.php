<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>
		  <script src="bootstrap/chart.min.js"></script>';	
////////User code below/////////////////////
echo '<pre>';print_r($_POST);echo '</pre>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//main_menu($link);
edit_qc_extra($link,$_POST);

if($_POST['action']=='save_extra_remark')
{
	$extra=$_POST['extra'];
	$sql='update primary_result set extra=\''.$extra.'\' where 
					sample_id =\''.$_POST['sample_id'].'\' and
					examination_id =\''.$_POST['examination_id'].'\' and
					uniq =\''.$_POST['uniq'].'\' and
					equipment =\''.$_POST['equipment'].'\'';
	echo $sql;
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo 'data saved....'.strftime("%R");
}

//////////////user code ends////////////////
tail();

/*
Array
(
    [sample_id] => 9000009
    [examination_id] => 9001
    [uniq] => 20230821221436
    [equipment] => XL_1000
    [session_name] => sn_1855006870
    [action] => edit_qc_extra
)
*/
function edit_qc_extra($link,$post)
{
	$sql='select * from primary_result 
		where 
			sample_id=\''.$_POST['sample_id'].'\' and
			examination_id=\''.$_POST['examination_id'].'\' and
			uniq=\''.$_POST['uniq'].'\' and
			equipment=\''.$_POST['equipment'].'\'
		';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	//print_r($ar);
	echo '<form method=post>
	<h3 class="bg-warning">Edit Extra remark of examination result. Refresh Parent Page after saving</h3>
	<label class="text-danger form-label">Sample ID</label><input class="form-control" type=text readonly name=sample_id value=\''.$post['sample_id'].'\'>
	<label class="text-danger form-label">Examination ID</label><input class="form-control" type=text readonly name=examination_id value=\''.$post['examination_id'].'\'>
	<label class="text-danger form-label">Uniq</label><input class="form-control" type=text readonly name=uniq value=\''.$post['uniq'].'\'>
	<label class="text-danger form-label">Equipment</label><input class="form-control" type=text readonly name=equipment value=\''.$post['equipment'].'\'>
	<input type=hidden name=session_name value=\''.$post['session_name'].'\'>
	<label class="text-danger form-label">Extra</label><input class="form-control" type=text name=extra value=\''.$post['extra'].'\' />
	<button class="btn btn-outline-danger  form-control btn-sm m-0 p-0" name=action value=save_extra_remark>Save Extra Remark</button>
	</form>';
	
}


?>
