<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '      <link rel="stylesheet" href="project_common.css">
        <script src="project_common.js"></script>';

////////User code below/////////////////////


echo '<style>
.monitor_grid
{
display: grid;
grid-gap: 5px;
grid-template-areas:
';
  for ($i=1;$i<=200;$i++)
  {
    if($i%10==1 && ($i/10)%2==0){echo '\'';}  
    echo 'a'.str_pad($i,3,0,STR_PAD_LEFT).' ';
    if($i%10==0 && ($i/10)%2==0){echo '\' ';}
  }
echo ';}
</style>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);

//echo '<pre>';print_r($_POST);echo '</pre>';

if(!isset($_POST['sql']))
{
  if(isset($_POST['action']))
  {
    if($_POST['action']=='set_sample_status')
    {
      insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%dT%H:%M"));
    }
  }


/*

select * from result
where examination_id=1001 and result like "%9664555%" and sample_id between 
(select max(sample_id)-9999 from sample_link)  and 
(select max(sample_id) from sample_link)

*/
  
  if(!isset($_POST['from']))
  {
    $sql='select sample_id 
            from result 
            where 
                  examination_id=\''.$_POST['examination_id'].'\' and 
                  result like \'%'.$_POST['search_string'].'%\' and
                  sample_id 
                    between 
                        (select max(sample_id)-'.get_config_value($link,'fast_search_sample_limit').' from sample_link)  
                      and 
                        (select max(sample_id) from sample_link)';
  }
  else
  {
    $sql='select sample_id 
            from result 
            where 
                  examination_id=\''.$_POST['examination_id'].'\' and 
                  result between \''.$_POST['from'].'\'  and \''.$_POST['to'].'\' and
                  sample_id 
                    between 
                        (select max(sample_id)-'.get_config_value($link,'fast_search_sample_limit').' from sample_link)  
                      and 
                        (select max(sample_id) from sample_link)';
  }

  echo $sql;
  $result=run_query($link,$GLOBALS['database'],$sql);

  $fast_search_result_page_limit=get_config_value($link,'fast_search_result_page_limit');
  $fast_search_result_pages_limit=get_config_value($link,'fast_search_result_pages_limit');
  $total_data=get_row_count($result);

  $offset=isset($_POST['offset'])?$_POST['offset']:0;
  $limit_sql=$sql.' limit '.$fast_search_result_page_limit.' offset '.$offset;
  for($i=0;$i<min($total_data,$fast_search_result_page_limit*$fast_search_result_pages_limit);$i=$i+$fast_search_result_page_limit)
  {
    echo '<form method=post class="d-inline">';
    echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
    echo '<input type=hidden name=sql value=\''.base64_encode($limit_sql).'\' >';
    echo '<input type=hidden name=base_sql value=\''.base64_encode($sql).'\' >';
    echo '<button name=offset value=\''.$i.'\'>'.$i.'</button>';
    echo '</form>';
  }
  //echo $sql.'<br>';
  //echo $limit_sql.'<br>';
  $result=run_query($link,$GLOBALS['database'],$limit_sql);
}
else
{
  $sql=base64_decode($_POST['base_sql']); 
  $limit_sql=base64_decode($_POST['sql']);
    
  $result=run_query($link,$GLOBALS['database'],$sql);

  $fast_search_result_page_limit=get_config_value($link,'fast_search_result_page_limit');
  $fast_search_result_pages_limit=get_config_value($link,'fast_search_result_pages_limit');
  $total_data=get_row_count($result);

  $limit_sql=$sql.' limit '.$fast_search_result_page_limit.' offset '.$_POST['offset'];
  for($i=0;$i<min($total_data,$fast_search_result_page_limit*$fast_search_result_pages_limit);$i=$i+$fast_search_result_page_limit)
  {
    echo '<form method=post class="d-inline">';
    echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
    echo '<input type=hidden name=sql value=\''.base64_encode($limit_sql).'\' >';
    echo '<input type=hidden name=base_sql value=\''.base64_encode($sql).'\' >';
    echo '<button name=offset value=\''.$i.'\'>'.$i.'</button>';
    echo '</form>';
  }

  //echo '<br>'.$sql.'<br>';
  //echo $limit_sql.'<br>'; 
  $result=run_query($link,$GLOBALS['database'],$limit_sql);

}

echo '<div class=monitor_grid>';
  $count=1;
  while($ar=get_single_row($result))
  {
    showww_sid_button_release_status($link,$ar['sample_id'],$extra_post='',$u=0,$checkbox='no');
    $count++; //increase only if successful
  }
echo '</div>';
        

//////////////user code ends////////////////
tail();
//echo '<pre>';print_r($_SESSION);echo '</pre>';

//////////////Functions///////////////////////


?>
