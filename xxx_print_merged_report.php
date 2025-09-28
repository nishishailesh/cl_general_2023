<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

  ////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
echo '<pre>';print_r($_POST);echo '</pre>';
$pdf=xxx_prepare_for_report_printing();

$final_print='yes';
$all_data=array();
$ar_of_id=explode(',',$_POST['list_of_id']);
//print_r($ar_of_id);
foreach ($ar_of_id as $any_id)
{  
  $id_array=get_sample_id_array_for_any_id($link,$any_id);
  //echo '<br>$id_array:for'.$any_id.'::';
  //print_r($id_array);
  //echo '<br>';
  
  if($id_array===false)
  {
    echo '<div style="display:grid;grid-template-columns: 20% 80%; margin:10 ;border-bottom-style: dotted">';
    echo '<div style="display:inline-block">';
    echo $any_id;
    echo '</div>';
    echo '<div style="display:inline-block">';
    echo '&nbsp;is not associated with any sample_id';
    echo '</div>';
    echo '</div>';
    continue;
  }
  $sample_id_csv=implode(',',$id_array);
  //echo '<br>sample_id_csv:'.$sample_id_csv.'<br>';
  $all_data_for_id=get_all_examination_result_for_merged_report($link,$sample_id_csv);
  $all_data=$all_data + $all_data_for_id;
}

echo '<pre>';print_r($all_data);echo '</pre>';
exit(0);

if($final_print=='yes')
{
  generate_pdf_for_report($pdf);
}
else
{
  echo '<h3>make necessary changes in samples above or remove them from print list</h3>';
}




function xxx_fill_report_merged($link,$id,$pdf)
{
    
  ////////SET HEADER//////////////
  //header footer overflow not solved
  $header_data=get_header($link,$id);
  //print_r($header_data);
  
  $pdf->header=$header_data[0];
  $header_ex=$header_data[1];

  ////////SET FOOTER//////////////
  $pdf->startPageGroup();
  $footer='<table><tr><td>Page '.$pdf->getPageNumGroupAlias().'/'.$pdf->getPageGroupAlias().'</td><td colspan="2">Note:'.get_config_value($link,"footer_notice").'</td></tr></table>';
  //$footer='<table><tr><td>Page '.$pdf->getAliasNumPage().'/'.$pdf->getAliasNbPages().'</td><td colspan="2">Note:'.get_config_value($link,"footer_notice").'</td></tr></table>';
  $pdf->footer=$footer;

  ////////SET MARGIN//////////////

  $left=get_config_value($link,'report_left_margin');
  $right=get_config_value($link,'report_right_margin');
  $top=get_config_value($link,'report_top_margin');
  $bottom=get_config_value($link,'report_bottom_margin');

  $pdf->set_all_margins($left=$left,$top=$top,$right=$right,$bottom=$bottom);


  ////////ADD PAGE////////////////
  $pdf->AddPage();
  //echo $pdf->curY;

  ob_start();
  //print_r($_POST);
  xxx_print_sample($link,$id,$header_ex);
  $myStr = ob_get_contents();
  ob_end_clean();
  //echo $myStr;
  //exit(0);

  $pdf->SetFont('helvetica', '', 10);
  $pdf->writeHTML($myStr, true, false, true, false, '');
}

function xxx_print_sample_merged($link,$sample_id,$header_ex)
{

  //print_r($header_ex);
  if(!sample_exist($link,$sample_id)){ echo '<h5>Sample Id '.$sample_id.' does not exist</h5>';return;}

  //echo '<pre>'; print_r($result_plus_blob_requested);echo '</pre>';
  $sql=" (select examination.examination_id,print_route,name,print_route_priority from examination,result 
      where 
        examination.examination_id=result.examination_id 
        and
        result.sample_id='".$sample_id."')

        union

    (select examination.examination_id,print_route,name,print_route_priority from examination,result_blob 
      where 
        examination.examination_id=result_blob.examination_id 
        and
        result_blob.sample_id='".$sample_id."')
        
        
      order by 
        print_route,examination_id
                
        ";

  //echo '<br>'.$sql.'<br>';
  $ex_tree=xxx_make_examination_tree($link,$sql,'print_route');

  //echo '<pre>';print_r($ex_tree);echo '</pre>';
  ksort($ex_tree);
  //echo '<pre>';print_r($ex_tree);echo '</pre>';
    
  //return;
  
/*
echo '<table border="1" cellpadding="2">
      <tr>
          <td class="badge badge-primary ">Sample ID</td>
          <td class="badge badge-info"><h5>'.$sample_id.'</h5></td>
      </tr>
  </table>';
*/

echo '<table border="0.0">';
    xxx_tree_to_panel_for_print_merged($link,$ex_tree,$sample_id,$header_ex);
echo  '</table>';

}



function xxx_tree_to_panel_for_print_merged($link,$tree,$sample_id,$header_ex)
{
  foreach($tree as $k=>$v)
  {
    if(is_array($v))
    {
      if(explode('^',$k)[1]==get_config_value($link,'header_route')){continue;}   //Header not as tree, but on each page
      ksort($v);
        echo '
            <tr>
              <td colspan="2" ><b>
                '.explode('^',$k)[1].'
              </b></td>
            </tr>';
        echo  '<tr><td width="10%" ></td>
              <td  width="90%" >';
                echo '<table border="0.3">';
                xxx_tree_to_panel_for_print_merged($link,$v,$sample_id,$header_ex);
                echo '</table>';
          echo  '</td>
            </tr>';
    }
    else
    {
      if(in_array($v,$header_ex)){continue;}
      echo '<tr><td colspan="2">';
      echo '<table border="0" cellpadding="2" nobr="true">';
      print_field_any($link,$v,$sample_id);
      echo '</table>';
      echo '</td></tr>';
    }
  }
}

function get_all_examination_result_for_merged_report($link,$sample_id_csv)
{
  $sql='select * from result where sample_id in ('.$sample_id_csv.')';
  $result=run_query($link,$GLOBALS['database'],$sql);
  $all_data=array();
  while($ar=get_single_row($result))
  {
    $all_data[$ar['sample_id']][$ar['examination_id']]=$ar['result'];
  }
  return $all_data;
}

?>
