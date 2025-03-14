<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
  ////////User code below/////////////////////
echo '      <link rel="stylesheet" href="project_common.css">
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

if($user['insert_authorization_level']<=3)
{
  echo '<h4>Unauthorized Access!!</h4>';
  echo '<a target=_blank href="https://www.youtube.com/watch?v=340a8WW3FM4&t=260">View Advice</a>';
  tail();
  exit(0);
}


//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

if($_POST['action']=='insert_save')
{
    insert_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['__ex__'.$_POST['examination_id']],$_POST['uniq'],$_POST['extra']);
    edit_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);
}

if($_POST['action']=='edit_save')
{
  xxx_update_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq'],$_POST['result'],$_POST['extra']);
  edit_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);
  
}
if($_POST['action']=='insert')
{
  echo '<h2 class="text-info">Primary Result: Close window after update. Refresh parent page</h2>';

  //xxx_edit_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);
  //edit_field_any($link,$_POST['examination_id'],$_POST['sample_id'],$readonly='',$frill=True,$extra_array=array());
  //$pr=xxx_select_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);


  echo '<form method=post>';
    echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
    get_one_field_for_insert_in_primary_result($link,$_POST['sample_id'],$_POST['examination_id']);
    echo '<div class="basic_form  m-0 p-0 no-gutters">';

      //echo '<div>Extra</div><input type=text name=extra  ><div class="help">any Extra Remark</div>';
      //echo '<div>unique</div><input type=text name=uniq ><div  class="help">unique value to differenciate this result from other results</div>';
      echo '<div>Sample ID</div><input type=text readonly name=sample_id value=\''.$_POST['sample_id'].'\' ><div  class="help"></div>';
      echo '<input readonly type=hidden name=examination_id value=\''.$_POST['examination_id'].'\' >';
      echo '<div></div><button class="btn btn-primary" type=submit name=action class="btn btn-primary" value=insert_save>Save</button><div  class="help"></div>';
    echo '</div>';
  echo '</form>';
}

    echo '<div class="basic_form  m-0 p-0 no-gutters">';
      echo '<div></div><button type=button class="btn btn-danger" onclick="window.close()" value=insert_save>Close Window</button><div  class="help"></div>';
    echo '</div>';
    
//////////////user code ends////////////////
tail();


//////////////Functions///////////////////////
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
