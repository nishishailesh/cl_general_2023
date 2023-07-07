<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

if(!sample_exist($link,$_POST['sample_id'])){ echo '<h5>Sample Id '.$_POST['sample_id'].' does not exist</h5>';exit();}

echo '<table>
			<thead>
				<tr><td><h3>New Civil Hospital Surat Laboratory Service</h3></td></tr>
				<tr><td><h3 class="text-success">Biochemistry Laboratory, Beside Blood Bank, 2nd Floor, Above BOB ATM</h3></td></tr>
			</thead>
			<tbody>';
				echo '<tr><td>';
					xxx_view_sample_print($link,$_POST['sample_id']);
				echo '</td></tr>
			</tbody>
			<tfoot>
				<tr><td><h3>New Civil Hospital Surat Laboratory Service</h3></td></tr>
				<tr><td><h3 class="text-success">Biochemistry Laboratory, Beside Blood Bank, 2nd Floor, Above BOB ATM</h3></td></tr>
			</thead>
			<tfoot>
</table>';

//////////////user code ends////////////////
tail();


function xxx_view_sample_print($link,$sample_id,$compact='no')
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
	
echo '<div>';
		echo '<div class="basic_form">
				<div class=my_label >
					<span class="badge badge-primary ">Sample ID</span>
					<span class="badge badge-info"><h5>'.$sample_id.'</h5></span>
				</div>';
			
			//xxx_show_all_buttons_for_sample($link,$sample_id);
		echo '</div>';

		xxx_tree_to_panel_for_print($link,$ex_tree,$id_prefix='',$collapse=' collapse ',$sample_id,$compact);

echo '</div>';
}



function xxx_tree_to_panel_for_print($link,$tree,$id_prefix='',$collapse=' collapse ',$sample_id,$compact='no')
{

	$collapse=' show ';

	//echo '<pre>';print_r($tree);echo '</pre>';


	foreach($tree as $k=>$v)
	{
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',    explode('^',$k)[1]    ));
		
		if(is_array($v))
		{
			//echo '<pre>';print_r($v);echo '</pre>';
			ksort($v);
			//asort($v);
			//echo '<pre>';print_r($v);echo '</pre>';
				
				echo '
						<div class=d-block>
							<button
								type=button
								tabindex="0"
								class="text-info  border border-primary rounded" ';
								echo 'id=\''.$id.'\' 
								data-target=#'.$id.'_target
								>'
								.explode('^',$k)[1].'
							</button>
						</div>';
				echo '<ul style="list-style-type: none" >';
						echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:30px">';
						xxx_tree_to_panel_for_print($link,$v,$id,' show ',$sample_id,$compact);
						echo '</li>';
				echo'</ul>';
		}
		else
		{
			print_field_any($link,$v,$sample_id,$compact);
			//display_one_examination($link,$v,$id);
		}
	}
}


function print_field_any($link,$ex_id,$sample_id,$compact='no')
{
	//if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$ex_id,'select'))
	//{
	//	echo '<h5 class="bg-warning">This user is not authorized for [select] with examination_id='.$ex_id.'</h5>';
	//	return false;
	//}	
	//echo $compact;
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
			
			if(is_hidden_in_print($link,$ex_id)!=true)
			{
				print_field($link,$ex_id,$ex_result,$sample_id);
			}
		}
	
}


function is_hidden_in_print($link,$ex_id)
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$display_format=$examination_details['display_format'];
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';
		if($hide=='yes'){return true;}
		else{return false;}	
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
		if($img=='dw')
		{
			echo '<div class="basic_form " id="ex_'.$ex_id.'">';
			echo '	<div class="my_label border border-dark text-wrap">'.$examination_details['name'].'</div>
				<div class="border border-dark"><pre class="m-0 p-0 border-0">';
			display_dw($ex_result);
			echo '</pre></div>';							
			echo '<div class="help border border-dark"><pre style="border-color:white">'.$help.'</pre></div>';
			echo '</div>';			
		}
		elseif($type=='subsection')
		{
			echo '<div class="basic_form " id="ex_'.$ex_id.'">';
				echo '	<div class="my_label text-wrap"></div>
				<div class="border">
				<h3 class="text-center">'.$examination_details['name'].'</h3>
				</div>
				<div class="help"></div>';
			echo '</div>';
		}

		else
		{
			if(strlen($display_format)==0){$display_format='horizontal3';}
			
			
				echo '<div class="  '.$print_hide.' '.$display_format.' " id="ex_'.$ex_id.'">';
					if(in_array($type,['id_multi_sample','id_single_sample']))
					{
						echo '	<div class="my_label text-wrap lead w-auto border '.$print_hide.' ">'.$examination_details['name'];
							//get_lables_button($link,$sample_id,$ex_id);
							//xxx_set_unique_id_prev_next_button($link,$sample_id,$ex_id);
						echo '</div>';
					}
					else
					{
						echo '	<div class="my_label text-wrap lead w-auto border '.$print_hide.'">'.$examination_details['name'].':';					
						echo '</div>';

					}
						
					
					echo '<div class="border"><pre class="m-1 p-0 border-0 '.$print_hide.'" style="white-space: pre-wrap;">'.
						htmlspecialchars($ex_result.' '.
						decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h)).
						$append_info.
						'</pre></div>';
						
					echo '<div class="help border '.$print_hide.'"><pre style="border-color:white" style="white-space: pre-wrap;">'.$help.'</pre></div>';
				echo '</div>';
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


