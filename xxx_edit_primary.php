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

/*
if($user['update_authorization_level']<=3)
{
  echo '<h4>Unauthorized Access!!</h4>';
  echo '<a target=_blank href="https://www.youtube.com/watch?v=340a8WW3FM4&t=260">View Advice</a>';
  tail();
  exit(0);
}
*/

if($_POST['action']=='edit_save')
{
  xxx_update_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq'],$_POST['result'],$_POST['extra']);
  
}


if($user['update_authorization_level']<=3){$only_remark=True;}else{$only_remark=False;}


edit_one_primary_result($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq'],$only_remark);
    echo '<div class="basic_form  m-0 p-0 no-gutters">';
      echo '<div></div><button type=button class="btn btn-danger" onclick="window.close()" value=insert_save>Close Window</button><div  class="help"></div>';
    echo '</div>';
//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

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
