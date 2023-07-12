<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$compact_report_index=0;


class XPDF extends TCPDF {
	
	public $bottom;
	public $header;
	public $footer;
	public $curX;
	public $curY;
	
	public function set_all_margins($left,$top,$right,$bottom)
	{
		// set margins
		$this->SetMargins($left, $top, $right , true);
		$this->bottom=$bottom;
		
		$this->SetAutoPageBreak(TRUE, $this->bottom);

		$this->SetHeaderMargin(10);	//top border of page  and header start 
		$this->SetFooterMargin(5); // no effect?
	}
	
	
	public function Header() 
	{
		$this->SetFont('helvetica', '', 10);
		$this->writeHTML($this->header, true, false, true, false, '');
	}
	
	public function Footer() 
	{
		$this->SetY(-($this->bottom)+2);		//match with $pdf->SetAutoPageBreak(TRUE, 40);
		$this->SetFont('helvetica', '', 10);
		$this->writeHTML($this->footer, true, false, true, false, '');
	}
}


$pdf = new XPDF('P', 'mm', 'A4', true, 'UTF-8', false);
$pdf->sample_id=$_POST['sample_id'];


////////////////////////////////
////////SET HEADER//////////////
////////////////////////////////
//header footer overflow not solved
$header_data=get_header($link,$_POST['sample_id']);
$pdf->header=$header_data[0];
$header_ex=$header_data[1];

////////////////////////////////
////////SET FOOTER//////////////
////////////////////////////////
$footer='<h3>Page '.$pdf->getAliasNumPage().'/'.$pdf->getAliasNbPages().'</h3>';
$pdf->footer=$footer;

////////////////////////////////
////////SET MARGIN//////////////
////////////////////////////////

$left=get_config_value($link,'report_left_margin');
$right=get_config_value($link,'report_right_margin');
$top=get_config_value($link,'report_top_margin');
$bottom=get_config_value($link,'report_bottom_margin');

$pdf->set_all_margins($left=$left,$top=$top,$right=$right,$bottom=$bottom);


////////////////////////////////
////////ADD PAGE////////////////
////////////////////////////////
$pdf->AddPage();
echo $pdf->curY;

ob_start();
//print_r($_POST);
xxx_print_sample($link,$_POST['sample_id']);
$myStr = ob_get_contents();
ob_end_clean();
//echo $myStr;
//exit(0);

$pdf->SetFont('helvetica', '', 10);
$pdf->writeHTML($myStr, true, false, true, false, '');
$pdf->Output('report.pdf', 'I');


function get_header($link,$sample_id)
{
	$header_ex=array();
	
	$header_html=get_config_value($link,'report_header');
	$dom = new DOMDocument();
	$dom->preserveWhiteSpace = false;
	$dom->loadHTML($header_html);

	$td = $dom->getElementsByTagName ("td");
	foreach ($td as $node)
	{
		//echo 'Name='.$node->nodeName.' Value='.$node->nodeValue.' Path='.$node->getNodePath().'<br>';
		$ex=explode('|',$node->nodeValue);
		if($node->nodeValue=='sample_id'){}
		else if($node->nodeValue=='sample_id_value'){$node->nodeValue=$sample_id;}
		else if($node->nodeValue=='report_qr_code')
		{
			$node->nodeValue='';
			$qr_link=make_link_return($link,$sample_id);
			$barcodeobj = new TCPDF2DBarcode($qr_link, 'QRCODE,H');
			$png=$barcodeobj->getBarcodePngData(3, 3, array(0,0,0));
			
			//$img = '<img src="@'.$encoded_image.'" width=30 /> ';

			$encoded_image=base64_encode($png);
			$i=$dom->createElement('img');
			
			$domAttribute = $dom->createAttribute('src');
			$domAttribute->value = '@'.$encoded_image;
			$i->appendChild($domAttribute);
			
			$domAttribute = $dom->createAttribute('width');
			$domAttribute->value = get_config_value($link,'qr_code_width');					
			$i->appendChild($domAttribute);

			$node->appendChild($i);
		}
		
		
		else if(is_numeric($ex[0]))
		{
			$header_ex[]=$ex[0];
			if($ex[1]=='n')
			{
				$examination_details=get_one_examination_details($link,$ex[0]);
				$node->nodeValue=$examination_details['name'];
			}	
			else if($ex[1]=='r')
			{
				$examination_details=get_one_examination_details($link,$ex[0]);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				
				if($type!='blob')
				{
					$sql='select examination_id,result from result where sample_id=\''.$sample_id.'\' and examination_id=\''.$ex[0].'\'';
					$result=run_query($link,$GLOBALS['database'],$sql);
					if(get_row_count($result)!=1){continue;}
					$ar=get_single_row($result);
					$node->nodeValue=$ar['result'];
				}
				else
				{
					$node->nodeValue='';

					$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
					$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
					$sql='select examination_id,result from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$ex[0].'\'';
					//echo $sql;
					$result=run_query($link,$GLOBALS['database'],$sql);
					$ar=get_single_row($result);
					//echo $ar['result'];
					
					if(get_row_count($result)!=1){continue;}
					//ob_start();
					//display_png_p($ar['result'],'not important',$w,$h);
					//$png = ob_get_contents();
					//ob_end_clean();
					//echo $png;
					$encoded_image=base64_encode($ar['result']);
					$i=$dom->createElement('img');
					
					$domAttribute = $dom->createAttribute('src');
					$domAttribute->value = '@'.$encoded_image;
					$i->appendChild($domAttribute);
					
					$domAttribute = $dom->createAttribute('width');
					$domAttribute->value = $w;					
					$i->appendChild($domAttribute);
					
					$domAttribute = $dom->createAttribute('height');
					$domAttribute->value = $h;					
 					$i->appendChild($domAttribute);

					$node->appendChild($i);

 					  					
					//$img = '<img src="@'.$encoded_image.'" width="'.$w.'" height="'.$h.'" /> ';
					//$node->nodeValue=$img
				}
			}
		}
		
	}

	//echo $dom->saveHTML();
	//exit();
	return array($dom->saveHTML(),$header_ex);;

}

function xxx_print_sample($link,$sample_id)
{

	if(!sample_exist($link,$sample_id)){ echo '<h5>Sample Id '.$sample_id.' does not exist</h5>';return;}

	//echo '<pre>';	print_r($result_plus_blob_requested);echo '</pre>';
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
	
echo '<table border="1" cellpadding="2">
			<tr>
					<td class="badge badge-primary ">Sample ID</td>
					<td class="badge badge-info"><h5>'.$sample_id.'</h5></td>
			</tr>
	</table>';


echo '<table border="0.3">';
		xxx_tree_to_panel_for_print($link,$ex_tree,$id_prefix='',$collapse=' collapse ',$sample_id);
echo 	'</table>';

}

function xxx_tree_to_panel_for_print($link,$tree,$id_prefix='',$collapse=' collapse ',$sample_id)
{
	global $header_ex;
	foreach($tree as $k=>$v)
	{
		if(is_array($v))
		{
			ksort($v);
				echo '
						<tr>
							<td colspan="2" ><b>
								'.explode('^',$k)[1].'
							</b></td>
						</tr>';
				echo 	'<tr><td width="10%" ></td>
							<td  width="90%" >';
								echo '<table border="0.3">';
								xxx_tree_to_panel_for_print($link,$v,'',' show ',$sample_id);
								echo '</table>';
					echo	'</td>
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


function print_field_any($link,$ex_id,$sample_id)
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
		//$display_format='horizontal3';
if($display_format=='horizontal3')
{
		echo '<tr>';
		
			echo '<td>'.$examination_details['name'].'</td>';
			
			echo '<td style="padding:2px;">'.
				htmlspecialchars($ex_result.' '.
								decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
								$append_info).
				'
			</td>';
		
			//echo '<td>'.htmlspecialchars($help).'</td>';
			//echo '<td>'.htmlentities($help).'</td>';
			echo '<td style="padding:2px;"> '.$help.'</td>';
		
		echo '</tr>';
}		
	
		
elseif($display_format=='horizontal2')
{		
		echo '<tr>';
		
			echo '<td>'.$examination_details['name'].'</td>';
			
			echo '<td colspan="2">'.
				htmlspecialchars($ex_result.' '.
								decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
								$append_info).
				'
			</td>';
			echo '</tr>
			<tr>';
		
			//echo '<td colspan="2">'.htmlspecialchars($help).'</td>';
			echo '<td colspan="3">'.$help.'</td>';
		    
		echo '</tr>';
}		
		
		
elseif($display_format=='horizontal1')
{		
			echo '<tr>';
		
				echo '<td colspan="3"><i>Examination:</i> '.$examination_details['name'].'</td>';
			
			echo '</tr>
			<tr>';

				echo '<td  colspan="3"><i>Result:</i> '.
				htmlspecialchars($ex_result.' '.
								decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
								$append_info).
				'
				</td>';
			echo '</tr>
			<tr>';
		
				echo '<td  colspan="3"><i>Notes:</i> '.$help.'</td>';
		
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

		$examination_details=get_one_examination_details($link,$kblob);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
		$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
        $img=isset($edit_specification['img'])?$edit_specification['img']:'';
		$help=isset($edit_specification['help'])?$edit_specification['help']:'';
        
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);


			echo '<tr>';
		
				echo '<td colspan="3">'.$examination_details['name'].'</td>';
			
			echo '</tr>
			<tr>';

				echo '<td  colspan="3"> ';
						//$ar_blob['fname'] is not used in function at all
                        display_png_p($ar_blob['result'],$ar_blob['fname'],$w,$h);    

				echo '</td>';
			echo '</tr>
			<tr>';
		
				echo '<td  colspan="3">'.$help.'</td>';
		
		echo '</tr>';
}


function get_header_yyy($link,$sample_id)
{
$header='<table border="1" style="padding:2px;">';

$counter=0;


$sql="select examination_id,result from result where sample_id='".$sample_id."'";
$result=run_query($link,$GLOBALS['database'],$sql);

//result
while($ar=get_single_row($result))
{
	$ex_id=$ar['examination_id'];
	$examination_details=get_one_examination_details($link,$ex_id);
	$display_format=$examination_details['display_format'];
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	
	
	//$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';
	if(in_array($ex_id,explode(',',get_config_value($link,'report_header_examination')))){ $print_in_header='yes';}
	else { $print_in_header='';}
	
	/*
		counter 0  tr 	counter 1
		counter 1 			counter 2
		counter 2 			counter 3	/tr
	
	*/
	
	if($print_in_header=='yes')
	{
		if($examination_details['append_user']==1)
		{
			$user_info=get_user_info($link,$_SESSION['login']);
			$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
		}
		else
		{
			$append_info='';
		}
		

		if($counter%3==0)
		{
			$header=$header.'<tr>';
			$counter++;
		}
		else 
		{
			$counter++;
		}
		
			$header=$header.'<td><b>'.$examination_details['name'].'</b></td><td>'.$ar['result'].' '.$append_info.'</td>';
		
		if($counter%3==0)
		{
			$header=$header.'</tr>';
		}
	}
}

//result blob

$sql="select examination_id,result from result_blob where sample_id='".$sample_id."'";
$result=run_query($link,$GLOBALS['database'],$sql);

while($ar=get_single_row($result))
{
	$ex_id=$ar['examination_id'];
	$examination_details=get_one_examination_details($link,$ex_id);
	$display_format=$examination_details['display_format'];
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	
	//$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';
	if(in_array($ex_id,explode(',',get_config_value($link,'report_header_examination')))){ $print_in_header='yes';}
	else { $print_in_header='';}
	
	$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
	$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
	
	/*
		counter 0  tr 	counter 1
		counter 1 			counter 2
		counter 2 			counter 3	/tr
	
	*/
	
	if($print_in_header=='yes')
	{
		if($counter%3==0)
		{
			$header=$header.'<tr>';
			$counter++;
		}
		else 
		{
			$counter++;
		}
		
			$header=$header.'<td>'.$examination_details['name'].'</td><td>';



			ob_start();
			display_png_p($ar['result'],'not important',$w,$h);
			$png = ob_get_contents();
			ob_end_clean();
		
			
			
	
			$header=$header.$png; 
			
			$header=$header.'</td>';
		
		if($counter%3==0)
		{
			$header=$header.'</tr>';
		}
	}
}


//result blob end

if($counter%3==1){$header=$header.'<td></td><td></td><td></td><td></td></tr>';}
if($counter%3==2){$header=$header.'<td></td><td></td></tr>';}
$header=$header.'</table>';	
	
return $header;
}



function get_header_xxx($link,$sample_id)
{

//$header_ex=explode(',',get_config_value($link,'report_header_examination'));
$header_ex=get_config_value($link,'report_header_examination');
$counter=0;


$sql="select examination_id,result from result where sample_id='".$sample_id."' and examination_id in (".$header_ex.")";
echo $sql;

$result=run_query($link,$GLOBALS['database'],$sql);

while($ar=get_single_row($result))
{
	print_r($ar);
	$ex_id=$ar['examination_id'];
	$examination_details=get_one_examination_details($link,$ex_id);
	$display_format=$examination_details['display_format'];
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';

		if($examination_details['append_user']==1)
		{
			$user_info=get_user_info($link,$_SESSION['login']);
			$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
		}
		else
		{
			$append_info='';
		}
		


}

//blob

$sql="select examination_id,result from result_blob where sample_id='".$sample_id."' and examination_id in (".$header_ex.")";
$result=run_query($link,$GLOBALS['database'],$sql);

//while($ar=get_single_row($result))
//{
	//$ex_id=$ar['examination_id'];
	//$examination_details=get_one_examination_details($link,$ex_id);
	//$display_format=$examination_details['display_format'];
	//$edit_specification=json_decode($examination_details['edit_specification'],true);
	//$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';
	//$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
	//$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
	
	///*
		//counter 0  tr 	counter 1
		//counter 1 			counter 2
		//counter 2 			counter 3	/tr
	
	//*/
	
	//if($print_in_header=='yes')
	//{
		//if($counter%3==0)
		//{
			//$header=$header.'<tr>';
			//$counter++;
		//}
		//else 
		//{
			//$counter++;
		//}
		
			//$header=$header.'<td>'.$examination_details['name'].'</td><td>';

			//ob_start();
			//display_png_p($ar['result'],'not important',$w,$h);
			//$png = ob_get_contents();
			//ob_end_clean();
		
			
			
	
			//$header=$header.$png; 
			
			//$header=$header.'</td>';
		
		//if($counter%3==0)
		//{
			//$header=$header.'</tr>';
		//}
	//}
//}

//blob end

if($counter%3==1){$header=$header.'<td></td><td></td><td></td><td></td></tr>';}
if($counter%3==2){$header=$header.'<td></td><td></td></tr>';}
$header=$header.'</table>';	
	
return $header;
}

?>

?>
