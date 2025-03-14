<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

  ////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
echo '<pre>';print_r($_POST);echo '</pre>';

$conditions=array();
foreach($_POST as $k=>$v)
{
  //echo $k.'<br>';
  $ex=explode('^',$k);
  //print_r($ex);
  if($ex[0]=='chk')
  {
    
    if($ex[1]=='sample_id')
    {
      if(isset($_POST['__from__sample_id']))
      {
        if(strlen($_POST['__to__sample_id'])>0)
        {
          $conditions['sample_id']=array($_POST['__from__sample_id'],$_POST['__to__sample_id']);
        }
        else
        {
          $conditions['sample_id']=array($_POST['__from__sample_id'],$_POST['__from__sample_id']);
        }
      }
      else
      {
        //sample_id will never be non-range
      }         
    }
    else
    {
      if(isset($_POST['__from__'.$ex[1]]))
      {
        if(strlen($_POST['__to__'.$ex[1]])>0)
        {       
          $conditions[$ex[1]]=array($_POST['__from__'.$ex[1]],$_POST['__to__'.$ex[1]]);
        }
        else
        {
          $conditions[$ex[1]]=array($_POST['__from__'.$ex[1]],$_POST['__from__'.$ex[1]]);           
        }
      }
      else
      {
        if(strlen($_POST['__ex__'.$ex[1]])>0)
        {
          $conditions[$ex[1]]=$_POST['__ex__'.$ex[1]];
        }
      }
    }
  }
  else
  {
    //un-checked, not interested
  }
}



//echo '<pre>';print_r($conditions);echo '</pre>';




if($_POST['examination_id']!='sample_id')
{
  $examination_details=get_one_examination_details($link,$_POST['examination_id']);
  $edit_specification=json_decode($examination_details['edit_specification'],true);
  $table=isset($edit_specification['table'])?$edit_specification['table']:'';
  if(strlen($table)==0){echo 'error: the examination_id is not id_multiple_sample or id_unique_sample';}
  //$sql='select sample_id from `'.$table.'` order by id desc';
  $sql='select sample_id from `'.$table.'` order by id';
}
else if($_POST['examination_id']=='sample_id')
{
  $id_range_array=explode("-",$_POST['id_range']);
  //$sql='select sample_id from sample_link 
  //    where 
  //    sample_id between \''.$id_range_array[0].'\' and  \''.$id_range_array[1].'\' order by sample_id desc';
  $sql='select sample_id from sample_link 
      where 
      sample_id between \''.$id_range_array[0].'\' and  \''.$id_range_array[1].'\' '; //echo $sql;
}
  
$pdf=xxx_prepare_for_report_printing();
$final_print='yes';

$result=run_query($link,$GLOBALS['database'],$sql);
while($ar=get_single_row($result))
{
  $id=$ar['sample_id'];
  if(check_for_conditions($link,$id,$conditions))
  {
    //echo $ar['sample_id'].' is selected for printing<br>';
    if(!$id)
    { 
      echo '<div>';
        echo '<div style="display:inline-block">';
        echo 'sample_id for '.$any_id;
        echo '</div>';
        
        echo '<div style="display:inline-block">';
        echo '&nbsp; is not found';
        echo '</div>';
      echo '</div>';
      $final_print='no';
      continue;
    }
    
    if(!print_allowed($link,$id))
    {
      echo '<div>';
        echo '<div style="display:inline-block">';
        xxx_sample_id_view_button($id,$target=' target=_blank ',$label=$id);
        echo '</div>';
        
        echo '<div style="display:inline-block">';
        echo '&nbsp;is not eligible for print';
        echo '</div>';
      echo '</div>';
      $final_print='no';
      continue;
    }
    else
    {
      //echo '<h1>print allowed</h1>';
    }

    xxx_fill_report($link,$id,$pdf);
    
  }
}

//exit(0);
if($final_print=='yes')
{
  generate_pdf_for_report($pdf);
}
else
{
  echo '<h3>make necessary changes in samples above or remove them from print list</h3>';
}

?>
