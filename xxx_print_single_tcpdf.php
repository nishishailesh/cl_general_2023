<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

//echo '		  <link rel="stylesheet" href="project_common.css">
//		  <script src="project_common.js"></script>';	
		  
		  
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);


$pdf = new TCPDF('P', 'mm', 'A4', true, 'UTF-8', false);
$pdf->AddPage();

ob_start();
//print_r($_POST);
xxx_print_sample($link,$_POST['sample_id']);
$myStr = ob_get_contents();
ob_end_clean();
//echo $myStr;
//exit(0);

$pdf->writeHTML($myStr, true, false, true, false, '');
$pdf->Output('report.pdf', 'I');


function xxx_print_sample($link,$sample_id,$compact='no')
{

	if(!sample_exist($link,$sample_id)){ echo '<h5>Sample Id '.$sample_id.' does not exist</h5>';return;}

	//echo '<pre>';	print_r($result_plus_blob_requested);echo '</pre>';
	$sql=" (select examination.examination_id,display_route,name,display_route_priority from examination,result 
			where 
				examination.examination_id=result.examination_id 
				and
				result.sample_id='".$sample_id."')

				union

		(select examination.examination_id,display_route,name,display_route_priority from examination,result_blob 
			where 
				examination.examination_id=result_blob.examination_id 
				and
				result_blob.sample_id='".$sample_id."')
				
				
			order by 
				display_route,examination_id
								
				";

	//echo '<br>'.$sql.'<br>';
	$ex_tree=xxx_make_examination_tree($link,$sql,'display_route');

	//echo '<pre>';print_r($ex_tree);echo '</pre>';
	ksort($ex_tree);
	//echo '<pre>';print_r($ex_tree);echo '</pre>';
		
	//return;
	
echo '<table border="1">
			<tr>
					<td class="badge badge-primary ">Sample ID</td>
					<td class="badge badge-info"><h5>'.$sample_id.'</h5></td>
			</tr>
	</table>';


echo '<table border="0.3" >';
		xxx_tree_to_panel_for_print($link,$ex_tree,$id_prefix='',$collapse=' collapse ',$sample_id,$compact);
echo 	'</table>';

}


function xxx_tree_to_panel_for_print($link,$tree,$id_prefix='',$collapse=' collapse ',$sample_id,$compact='no')
{
	foreach($tree as $k=>$v)
	{
		if(is_array($v))
		{
			ksort($v);
				echo '
						<tr>
							<td><b>
								'.explode('^',$k)[1].'
							</b></td>
						</tr>';
				echo 	'<tr>
							<td>';
								echo '<table border="0.3">';
								xxx_tree_to_panel_for_print($link,$v,'',' show ',$sample_id,$compact);
								echo '</table>';
					echo	'</td>
						</tr>';
		}
		else
		{
			echo '<tr><td>';
			echo '<table border="0.3" >';
			print_field_any($link,$v,$sample_id,$compact);
			echo '</table>';
			echo '</td></tr>';
		}
	}
}


function print_field_any($link,$ex_id,$sample_id,$compact='no')
{
	$examination_details=get_one_examination_details($link,$ex_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	$ex_compact=isset($edit_specification['compact'])?$edit_specification['compact']:'';
	$display_format=$examination_details['display_format'];


		if($type=='blob')
		{	
			print_field_blob($link,$ex_id,$sample_id,$display_format);
		}
		else
		{
			if(in_array($type,['id_multi_sample','id_single_sample']))
			{
				$ex_result=get_id_type_examination_result($link,$sample_id,$ex_id);
			}
			else
			{
				$ex_result=get_one_ex_result($link,$sample_id,$ex_id);
			}
			print_field($link,$ex_id,$ex_result,$sample_id);
		}
}





function print_field($link,$ex_id,$ex_result,$sample_id='')
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$display_format=$examination_details['display_format'];
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$help=isset($edit_specification['help'])?$edit_specification['help']:'';
		
		$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';	
		if($hide=='yes'){  $print_hide=" print_hide ";}else{$print_hide='';}
		//echo $print_hide;
		
		
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';
		$interval_l=isset($edit_specification['interval_l'])?$edit_specification['interval_l']:'';
		$cinterval_l=isset($edit_specification['cinterval_l'])?$edit_specification['cinterval_l']:'';
		$ainterval_l=isset($edit_specification['ainterval_l'])?$edit_specification['ainterval_l']:'';
		$interval_h=isset($edit_specification['interval_h'])?$edit_specification['interval_h']:'';
		$cinterval_h=isset($edit_specification['cinterval_h'])?$edit_specification['cinterval_h']:'';
		$ainterval_h=isset($edit_specification['ainterval_h'])?$edit_specification['ainterval_h']:'';
		$img=isset($edit_specification['img'])?$edit_specification['img']:'';
		if($examination_details['append_user']==1)
		{
			$user_info=get_user_info($link,$_SESSION['login']);
			$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
		}
		else
		{
			$append_info='';
		}

		if(strlen($display_format)==0){$display_format='horizontal3';}

if($display_format=='horizontal3')
{
		echo '<tr>';
		
			echo '<td>'.$examination_details['name'].'</td>';
			
			echo '<td>'.
				htmlspecialchars($ex_result.' '.
								decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
								$append_info).
				'
			</td>';
		
			//echo '<td>'.htmlspecialchars($help).'</td>';
			//echo '<td>'.htmlentities($help).'</td>';
			echo '<td>'.$help.'</td>';
		
		echo '</tr>';
}		
		
elseif($display_format=='horizontal2')
{		
		echo '<tr>';
		
			echo '<td>'.$examination_details['name'].'</td>';
			
			echo '<td>'.
				htmlspecialchars($ex_result.' '.
								decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
								$append_info).
				'
			</td>';
			echo '</tr><tr>';
		
			//echo '<td colspan="2">'.htmlspecialchars($help).'</td>';
			echo '<td colspan="2">'.$help.'</td>';
		    
		echo '</tr>';
}		
		
		
elseif($display_format=='horizontal1')
{		
			echo '<tr>';
		
			echo '<td>'.$examination_details['name'].'</td>';
			
			echo '</tr><tr>';

			echo '<td>'.
				htmlspecialchars($ex_result.' '.
								decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
								$append_info).
				'
			</td>';
			echo '</tr><tr>';
		
			//echo '<td style="font-size:0.6em"><pre>'.$help.'</pre></td>';
			echo '<td>'.$help.'</td>';
		
		echo '</tr>';
		
}		

elseif($display_format=='compact_report')
{		
			echo '<tr>';
		
			echo '<td>'.$examination_details['name'].'</td>';
			
			echo '<td>'.
				htmlspecialchars($ex_result.' '.
								decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
								$append_info).
				'
			</td>';
		
			//echo '<td>'.htmlspecialchars($help).'</td>';
		
		echo '</tr>';
		
}				
}				


function print_field_blob($link,$kblob,$sample_id,$display_class='horizontal3')
{
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';
		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);
	
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);
		
		//print_r($examination_blob_details);
		echo '	<div class="'.$display_class.'">
	
				<div class="my_label border">'.$examination_blob_details['name'].'</div>
				<div>';
				echo_download_button_two_pk('result_blob','result',
									'sample_id',$sample_id,
									'examination_id',$examination_blob_details['examination_id'],
									$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$ar_blob['fname']
									);

                $edit_specification=json_decode($examination_blob_details['edit_specification'],true);
                $img=isset($edit_specification['img'])?$edit_specification['img']:'';
                $w=isset($edit_specification['width'])?$edit_specification['width']:'200';
                $h=isset($edit_specification['height'])?$edit_specification['height']:'200';


                if($img=='png')
                {
                        //echo '<div><b>';
                        //echo $examination_blob_details['name'];
                        //echo ':</b></div>';
                        echo '<div>';
                        //no effect of last three parameters, not implemented
                        display_png($ar_blob['result'],$ar_blob['fname'],$w,$h);      
                        echo '</b></div>';
                }



				echo '</div>';
				echo '<div  class="help border"  >Current File:'.$ar_blob['fname'].'</div>
		</div>';
}


?>
