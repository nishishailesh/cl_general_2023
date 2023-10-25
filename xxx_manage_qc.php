<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>
		  <script src="bootstrap/chart.min.js"></script>';	
		  
//<script src="https://cdn.jsdelivr.net/npm/chart.js/dist/chart.min.js"></script>
//<script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns/dist/chartjs-adapter-date-fns.bundle.min.js"></script>

		  
////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);
//echo '<h1>'.find_max_qc_id($link).'</h1>';
$sar=find_today_qc_id($link);
//print_r($sar);


$limit=isset($_POST['row_limit'])?$_POST['row_limit']:get_config_value($link,'qc_result_limit');


$qc_sql="select * from examination  where sample_requirement!='None' order by request_route,name";

echo '<a  data-toggle="collapse" href="#get_data" aria-expanded="false" class="m-2 p-2">Show/Hide Search Window</a>';
echo '<div id="get_data" class=" p-3 bg-light border border-dark collapse">';
	echo '<div class="two_column_one_by_two show" >';
				echo '<div>';

						xxx_get_examination_data_for_qc($link,$qc_sql);

						echo '<div>
								<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
								echo '	<div id="status-window" 
											class="border border-success">
										</div>
								<span class="badge badge-primary"  data-toggle="collapse" data-target="#select-window">Select Examinations</span>';
								echo '	<div id="select-window" class="border border-success">
											<input type=text id=my_search_text  onchange="my_search_test()">
											<button type=button id=my_search onclick="my_search_test()">search</button>
											<div id=my_search_result></div>
										</div>						
						</div>';
				echo '</div>';
		
				echo '<div>';
						get_qc_search_conditions($link,1048,array('3001','9000'),array('1048','10006','sample_id'),$limit);
				echo '</div>';
	echo '</div>';
echo '</div>';

if($_POST['action']=='find_qc_data')
{
	echo '<a  data-toggle="collapse" href="#lj_table" class="m-2 p-2" aria-expanded="false" >Show/Hide Results</a>';
	//echo '<button class="btn btn-primary" type="button"  data-toggle="collapse" data-target="#lj_table" aria-expanded="false" >Show Hide Results</button>';
			echo '<div id="lj_table" class="show p-3 bg-light border border-dark">';
				$data=prepare_qc_data_from_search_condition($link,$_POST,$limit);
			echo '</div>';

	//echo '<pre>';print_r($data);echo '</pre>';
	$json=json_encode($data);	//used by chart.js
	//echo $json;

	$sorted_array=array();
	foreach($data as $qc)
	{
		$ex_data=get_one_examination_details($link,$qc['examination_id']);
		
		//$sorted_array[$qc['examination_id'].'^'.$qc['qc_lot(sample)'].'^'.$qc['qc_equipment']][]=$qc;
		$sorted_array[$ex_data['name'].'^'.$qc['qc_lot(sample)'].'^'.$qc['qc_equipment']][]=$qc;
	}
	//echo '<pre>';print_r($sorted_array);echo '</pre>';
	$sorted=json_encode($sorted_array);		//used by chart.js
	
	
	//convert in to csv and upload in database and display download link
	$csv='';
	foreach($sorted_array as $v)
	{
		foreach($v as $vv)
		{
			$csv=$csv.'"'.implode('","',$vv).'"'.PHP_EOL;
		}
	}
	
	$safe_csv=my_safe_string($link,$csv);
	$csv_sql='insert into upload_data (upload_data,upload_data_name) values (\''.$safe_csv.'\', \'qc.csv\')';
	//echo $csv_sql.'<br>';
	$result_csv=run_query($link,$GLOBALS['database'],$csv_sql);
	if($result_csv!==false)
	{
		$upload_id=last_autoincrement_insert($link);
		xxx_echo_download_button($link,'upload_data','upload_data',$upload_id);
	}
}
else if(count($sar)>0)
{
	//echo implode(',',$sar);
	
	$sql='select * from primary_result where sample_id in ('.implode(',',$sar).') order by sample_id';
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)>=1)
	{
		echo '<a  data-toggle="collapse" href="#lj_table" class="m-2 p-2" aria-expanded="false" >Show/Hide Results</a>';
		//echo '<button class="btn btn-primary" type="button"  data-toggle="collapse" data-target="#lj_table" aria-expanded="false" >Show Hide Results</button>';
		echo '<div id="lj_table" class="show p-3 bg-light border border-dark">';
						echo $sql;
					
						echo '<table class="table table-striped table-sm m-3 table-responsive">';
						
						$first='yes';
						$data=[];
						while($ar=get_single_row($result))
						{
							$q=display_one_qc($link,$ar,$first);
							$data[]=$q;
							$first='no';
						}
						echo '</table>';
		
		echo '</div>';
		$json=json_encode($data);
		$sorted_array=array();
		foreach($data as $qc)
		{
			$ex_data=get_one_examination_details($link,$qc['examination_id']);
			
			//$sorted_array[$qc['examination_id'].'^'.$qc['qc_lot(sample)'].'^'.$qc['qc_equipment']][]=$qc;
			$sorted_array[$ex_data['name'].'^'.$qc['qc_lot(sample)'].'^'.$qc['qc_equipment']][]=$qc;
		}
		//echo '<pre>';print_r($sorted_array);echo '</pre>';
		$sorted=json_encode($sorted_array);		//used by chart.js
	}
}
else if(count($sar)<=0){echo '<h2 class="text-warning">no qc results available today</h2>';}


//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function prepare_qc_data_from_search_condition($link,$post,$limit=400)
{
	/* required $post
	 * 		$post['selected_examination_list']
	 * 		
	 * 
	 * 
	 * */
	 
	//echo '<pre>';print_r($post);echo '</pre>';
	
	$ex_list_csv=$post['selected_examination_list'];
	//echo 'reporting requested for..'.$ex_list_csv.'<br>';

	/////////////make selection of sample id/////////////////////
	$sql='';
	foreach($post as $post_key => $post_val)
	{
		if(substr($post_key,0,4)=='chk^')
		{
			//echo '----------------<br>a search condition detected...<br>';
			$search_examination_id=substr($post_key,4);
			//echo 'examination_id for search is..'.$search_examination_id.'<br>';
			if(isset($post['__from__'.$search_examination_id]))
			{
				//echo 'It is a range search ..<br>';
				$from=$post['__from__'.$search_examination_id];
				if(strlen($post['__to__'.$search_examination_id])>0)
				{
					$to=$post['__to__'.$search_examination_id];
				}
				else
				{
					$to=$from;
				}
				//echo 'required range is from '.$from.' to '.$to.'..<br>';
				
				if($search_examination_id!=='sample_id')
				{
					$examination_details=get_one_examination_details($link,$search_examination_id);
					$edit_specification=json_decode($examination_details['edit_specification'],true);
					//print_r($edit_specification);
					$type=isset($edit_specification['type'])?$edit_specification['type']:'';
					//echo $type;
					if(in_array($type,['id_multi_sample','id_single_sample']))
					{
						$sql=$sql . '(select sample_id from `'.$edit_specification['table'].'` where id between \''.$from.'\' and  \''.$to.'\' ) intersect ';
					}
					else
					{
						$sql=$sql . '(select sample_id from result where examination_id=\''.$search_examination_id.'\' and result between \''.$from.'\' and  \''.$to.'\' ) intersect ';
					}
				}
				else
				{
						//echo 'hiiiii';
						$sql=$sql . '(select sample_id from sample_link where sample_id between \''.$from.'\' and  \''.$to.'\' ) intersect ';
						//echo $sql;
				}
	
				
				
			}
			else
			{
				$required_value=$post['__ex__'.$search_examination_id];
				//echo 'It is a point range search ..<br>';
				//echo 'required value is '.$required_value.'.. <br>';
				$sql=$sql . '(select sample_id from result where examination_id=\''.$search_examination_id.'\' and lower(result) like \'%'.strtolower($required_value).'%\'  ) intersect ';
			}
		}
	}
	
	$sample_id_csv='';
	if(strlen($sql)>0)
	{
		$sql=substr($sql,0,-10);
		$result=run_query($link,$GLOBALS['database'],$sql);
		$sample_id_ar=array();
		while($ar=get_single_row($result))
		{
			$sample_id_ar[]=$ar['sample_id'];
		}
		$sample_id_csv=implode(',',$sample_id_ar);
	}
	///////////////////find primary results of sample id selected above//////////////////////
	if(strlen($sample_id_csv)>0)
	{
		//echo $sql.'<br>';

		if(strlen($ex_list_csv)>0)
		{
			$root_sql='select * from primary_result where examination_id in ('.$ex_list_csv.') and sample_id in ('.$sample_id_csv.')';
		}
		else
		{
			$root_sql='select * from primary_result where sample_id in ('.$sample_id_csv.')';		
		}

	}
	else
	{
		if(strlen($ex_list_csv)>0)
		{
			$root_sql='select * from primary_result where examination_id in ('.$ex_list_csv.') ';
		}
		else
		{
			$root_sql='select * from primary_result  ';
		}
	}
	

	
	/////////////add ordering//////////////////////////
	
	if($_POST['sort_order']=='sample_id')
	{
		$root_sql=$root_sql.' order by sample_id desc,examination_id,uniq desc limit '.$limit;
	}
	else if($_POST['sort_order']=='examination_id')
	{
		$root_sql=$root_sql.' order by examination_id,sample_id desc,uniq desc limit '.$limit;
	}
	else
	{
		$root_sql=$root_sql.' order by examination_id,sample_id desc,uniq desc limit '.$limit;
	}
	
	
	//////////final//////////////////
	echo '<a data-toggle="collapse" href="#root_sql" role="button">View SQL</a>';
	echo '<div id=root_sql class="collapse">';
		echo $root_sql;
	echo '</div>';
	
	//view_sql_result_as_table($link,$root_sql,$show_hide='yes');
	$result=run_query($link,$GLOBALS['database'],$root_sql);
	$data=array();
		
	echo '<table class="table table-striped table-sm m-3 table-responsive">';

	$first='yes';
	while($ar=get_single_row($result))
	{
		$q=display_one_qc($link,$ar,$first);
		$data[]=$q;
		$first='no';
	}
	echo '</table>';
	return $data;
}

function format_one_lj_point($q)
{
	$bar_color=["green","lightgreen","orange","red"];
	echo '<td style="border-right-style: dotted;padding:0px;border-left-style: dotted;padding:0px;text-align:right">';
	if(is_numeric($q['sdi']))
	{
		if($q['sdi']<0)
		{
			$id=$q['sample_id'].$q['qc_lot(sample)'].$q['examination_id'].$q['uniq'];
			$position=160-min(-$q['sdi']*40,160);
			echo '<canvas id="'.$id.'" 
						height="30" 
						width="160" 
						></canvas>';
			echo '<script>
					can=document.getElementById("'.$id.'");
					ctx=can.getContext("2d");
					ctx.font = "15px Arial";
					ctx.strokeStyle = "'.$bar_color[ min(floor(-$q['sdi']),3) ].'";
					ctx.strokeText("X", '.$position.', 20);

					ctx.strokeStyle = "red";
					ctx.strokeText(".", 40 , 5);
					ctx.strokeStyle = "orange";
					ctx.strokeText(".", 80 , 5);
					ctx.strokeStyle = "lightgreen";
					ctx.strokeText(".", 120 , 5);
				</script>';

		}
		else
		{
			$id=$q['sample_id'].$q['qc_lot(sample)'].$q['examination_id'].$q['uniq'].'blank';
			echo '<canvas id="'.$id.'" 
			height="30" 
			width="160" 
			></canvas>';
			
			echo '<script>
					can=document.getElementById("'.$id.'");
					ctx=can.getContext("2d");
				
					ctx.strokeStyle = "red";
					ctx.strokeText(".", 40 , 5);
					ctx.strokeStyle = "orange";
					ctx.strokeText(".", 80 , 5);
					ctx.strokeStyle = "lightgreen";
					ctx.strokeText(".", 120 , 5);
									</script>';
		}
	}
	echo '</td>';
	
	echo '<td style="padding:0px;border-right-style: dotted;padding:0px;">';
	if(is_numeric($q['sdi']))
	{
		if($q['sdi']>=0)
		{		
			$id=$q['sample_id'].$q['qc_lot(sample)'].$q['examination_id'].$q['uniq'];
			$position=min( ($q['sdi']*40),150 );
			echo '<canvas id="'.$id.'" 
			height="30" 
			width="160" 
			></canvas>';
			
			echo '<script>
					can=document.getElementById("'.$id.'");
					ctx=can.getContext("2d");
					ctx.font = "15px Arial";
					
					ctx.strokeStyle = "'.$bar_color[ min(floor($q['sdi']),3) ].'";
					ctx.strokeText("X", '.$position.', 20);
					
					ctx.strokeStyle = "lightgreen";
					ctx.strokeText(".", 40 , 5);
					ctx.strokeStyle = "orange";
					ctx.strokeText(".", 80 , 5);
					ctx.strokeStyle = "red";
					ctx.strokeText(".", 120 , 5);
									</script>';
		}
		
		else
		{
			$id=$q['sample_id'].$q['qc_lot(sample)'].$q['examination_id'].$q['uniq'].'blank';
			echo '<canvas id="'.$id.'" 
			height="30" 
			width="160" 
			></canvas>';
			
			echo '<script>
					can=document.getElementById("'.$id.'");
					ctx=can.getContext("2d");
				
					ctx.strokeStyle = "lightgreen";
					ctx.strokeText(".", 40 , 5);
					ctx.strokeStyle = "orange";
					ctx.strokeText(".", 80 , 5);
					ctx.strokeStyle = "red";
					ctx.strokeText(".", 120 , 5);
									</script>';
		}
	}
	echo '</td>';		
	
}
//			style="background-color:'.$bar_color[ min(floor($q['sdi']),3) ].';"></canvas>';
//					ctx.strokeText("'.$q['sdi'].'", 20, 20);
//					ctx.fillStyle = "'.$bar_color[ min(floor($q['sdi']),3) ].'";

function display_one_qc($link,$primary_result_array,$first)
{
	$q=array();
	$ex_details=get_one_examination_details($link,$primary_result_array['examination_id']);
	//echo '<h3 class="text-danger">'.$primary_result_array['examination_id'].'</h3>';
	//print_r($ex_details);
	$ref_val_array=xxx_get_lab_reference_value($link,$primary_result_array['sample_id'],$primary_result_array['examination_id']);
	if($ref_val_array==False){$ref_val_array=array();}
	$mean=isset($ref_val_array['mean'])?$ref_val_array['mean']:'';
	$sd=isset($ref_val_array['sd'])?$ref_val_array['sd']:'';
	if(is_numeric($primary_result_array['result']) && is_numeric($mean) && is_numeric($sd))
	{
		$sdi=round(($primary_result_array['result']-$ref_val_array['mean'])/$ref_val_array['sd'],2);
	}
	else
	{
		$sdi='?';
	}


		$qc_analysis_time_examination_id=get_config_value($link,'qc_analysis_time_examination_id');
		$qc_analysis_time=get_any_examination_result($link,$primary_result_array['sample_id'],$qc_analysis_time_examination_id);

		$qc_id_examination_id=get_config_value($link,'qc_id_examination_id');
		$qc_id=get_any_examination_result($link,$primary_result_array['sample_id'],$qc_id_examination_id);

		$qc_lot_examination_id=get_config_value($link,'qc_lot_examination_id');
		$qc_lot=get_any_examination_result($link,$primary_result_array['sample_id'],$qc_lot_examination_id);

		$qc_equipment_examination_id=get_config_value($link,'qc_equipment_examination_id');
		$qc_equipment=get_any_examination_result($link,$primary_result_array['sample_id'],$qc_equipment_examination_id);


	$q['sdi']=$sdi;
	$q['sample_id']=$primary_result_array['sample_id'];
	$q['examination_id']=$primary_result_array['examination_id'];
	$q['examination_name']=$ex_details['name'];
	//$q['equipment']=$primary_result_array['equipment'];
	$q['uniq']=$primary_result_array['uniq'];
	$q['result']=$primary_result_array['result'];
	$q['extra']=$primary_result_array['extra'];
	
	$q['qc_lot']=isset($ref_val_array['qc_lot'])?$ref_val_array['qc_lot']:'';
	$q['mean']=isset($ref_val_array['mean'])?$ref_val_array['mean']:'';
	$q['sd']=isset($ref_val_array['sd'])?$ref_val_array['sd']:'';
	$q['remark']=isset($ref_val_array['remark'])?$ref_val_array['remark']:'';
	$q['manufacturer_data']=isset($ref_val_array['manufacturer_data'])?$ref_val_array['manufacturer_data']:'';
	
	$final_q=array(
	'qc_lot(sample)'=>$qc_lot,
	'qc_id'=>$qc_id,
	'examination_id'=>$q['examination_id'],
	'examination_name'=>$q['examination_name'],
	'qc_equipment'=>$qc_equipment,
	'result'=>$q['result'],
	'mean'=>$q['mean'],
	'sd'=>$q['sd'],
	'manufacturer_data'=>$q['manufacturer_data'],
	'remark(result)'=>$q['extra'],
	'sdi'=>$q['sdi'],
	'uniq'=>$q['uniq'],
	'qc_analysis_time'=>$qc_analysis_time,
	'qc_lot(ref)'=>$q['qc_lot'],
	'remark(ref)'=>$q['remark'],
	'sample_id'=>$q['sample_id']
	);
	
	$q=$final_q;


	if($first=='yes')
	{

		$lj_graphics= '
		<th style="border-right-style: dotted;padding:0px;border-left-style: dotted;padding:0px;text-align:right">
		
					<canvas id="lj_header_negative" 
							height="30" 
							width="160" 
							></canvas>
				<script>
						can=document.getElementById("lj_header_negative");
						ctx=can.getContext("2d");
						ctx.font = "15px Arial";

						ctx.strokeText("-3s", 40,20);
						ctx.strokeText("-2s", 80,20);
						ctx.strokeText("-1s", 120,20);

						ctx.strokeStyle = "red";
						ctx.strokeText(".", 40 , 5);
						ctx.strokeStyle = "orange";
						ctx.strokeText(".", 80 , 5);
						ctx.strokeStyle = "lightgreen";
						ctx.strokeText(".", 120 , 5);
					</script>
		</th>
		<th style="border-right-style: dotted;padding:0px;text-align:left">
		
		
					<canvas id="lj_header_positive" 
							height="30" 
							width="160" 
							></canvas>
				<script>
						can=document.getElementById("lj_header_positive");
						ctx=can.getContext("2d");
						ctx.font = "15px Arial";

						ctx.strokeText("1s", 25,20);
						ctx.strokeText("2s", 65,20);
						ctx.strokeText("3s", 105,20);

						ctx.strokeStyle = "lightgreen";
						ctx.strokeText(".", 40 , 5);
						ctx.strokeStyle = "orange";
						ctx.strokeText(".", 80 , 5);
						ctx.strokeStyle = "red";
						ctx.strokeText(".", 120 , 5);
					</script>	
		
		</th>';
	
		echo '<tr>
		<th>sample_id</th>';
		
		//echo '<td>'.$lj_graphics.'</td>';
		foreach($q as $k=>$v)
		{
			if(!in_array($k,['sample_id']))
			{
				echo '<th style="border-right-style: dotted;border-right-color: lightgray;">'.$k.'</th>';
			}
			if(in_array($k,['sdi']))
			{
				echo $lj_graphics;
			}
		}
		echo '</tr>';
	}
			
	echo '<tr>';

	echo '<td>';
		xxx_sample_id_edit_button($q['sample_id'],' target=_blank ',$q['sample_id']);
	echo '</td>';

	//format_one_lj_point($q);



			
	foreach($q as $k=>$v)
	{
			if ( ($q['sdi']>=2 and $q['sdi']<3) or ($q['sdi']<=-2 and $q['sdi']>-3) ){$style="text-warning";}
			elseif($q['sdi']>=3 or $q['sdi']<=-3){$style="text-danger";}
			else{$style="text-success";}
			
		if(in_array($k,['result','mean','sd']))
		{
			echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;" class=" '.$style.'" >'.$v.'</td>';
		}
		elseif(in_array($k,['remark(result)']))
		{
			echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;"><button class="btn btn-sm btn-info" title="'.$v.'" type=button onclick="alert(\''.$v.'\')" >'.substr($v,0,3).'.</button></td>';
		}
		elseif(in_array($k,['qc_id']))
		{

						/*
						Array
							(
								[__ex__3001] => 
								[___ex___3001] => 
								[chk^9000] => on
								[__ex__9000] => XL_1000
								[chk^1048] => on
								[__from__1048] => 246
								[__ex__1048] => 
								[__to__1048] => 266
								[__from__10006] => 
								[__ex__10006] => 
								[__to__10006] => 
								[id_range] => 1000-1999999
								[__from__sample_id] => 
								[__ex__sample_id] => 
								[__to__sample_id] => 
								[sort_order] => sample_id
								[row_limit] => 400
								[action] => find_qc_data
								[selected_examination_list] => 
								[session_name] => sn_1532328930
							)
						*/
						//post ex_id, lot, equipment
						//
			echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;">
					<form method=post>
						<button type=submit class="btn btn-sm btn-info" title="'.$v.'" formtarget=_blank formaction="xxx_manage_qc.php" name=action value=find_qc_data >'.$v.'.</button>
						<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
						<input type=hidden name=selected_examination_list value=\''.$q['examination_id'].'\'>
						
						<input type=hidden name=__ex__3001 value=\''.$q['qc_lot(sample)'].'\'>
						<input type=hidden name=chk^3001 value=\'on\'>
						
						<input type=hidden name=__ex__9000 value=\''.$q['qc_equipment'].'\'>
						<input type=hidden name=chk^9000 value=\'on\'>

						<input type=hidden name="sort_order" value="sample_id"></div>
						<input type=hidden name="row_limit" value="100"></div>

					</form>
			</td>';
		}
		elseif(in_array($k,['sdi']))
		{

			echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;" class="'.$style.'">'.$v.'</td>';
			format_one_lj_point($q);
		}
		elseif(in_array($k,['sample_id']))
		{
			//echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;">'.$v.'</td>';
		}
		
		else
		{
			echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;">'.$v.'</td>';
		}
	}

	echo '</tr>';
	
	return $q;
}

function xxx_get_lab_reference_value($link,$sample_id,$examination_id)
{
	$analysis_time=get_any_examination_result($link,$sample_id,get_config_value($link,'qc_analysis_time_examination_id'));
	$qc_equipment=get_any_examination_result($link,$sample_id,get_config_value($link,'qc_equipment_examination_id'));
	$qc_lot=get_any_examination_result($link,$sample_id,get_config_value($link,'qc_lot_examination_id'));

//							str_to_date(concat(start_date," ",start_time),\'%Y-%m-%d %H:%i:%s\') 


	$sql='select * from xxx_lab_reference_value where 
			qc_lot=\''.$qc_lot.'\'
				and
			examination_id=\''.$examination_id.'\'
				and
				start_datetime < str_to_date(\''.$analysis_time.'\',\'%Y-%m-%dT%H:%i:%s\')
								and
				end_datetime > str_to_date(\''.$analysis_time.'\',\'%Y-%m-%dT%H:%i:%s\')
				and
			equipment=\''.$qc_equipment.'\'
			';

	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(rows_affected($link)!=1)
	{
		//echo 'exact one raw for lab_reference_value is required. got (('.rows_affected($link).'))<br>';
		return false;
	}
	$ar=get_single_row($result);
	return $ar;
	//database user is responsible to see that only one such row is avaialble
}

function xxx_get_examination_data_for_qc($link,$sql)
{
	echo '<button class="btn btn-success " data-status=off type=button id=ex_all_expand onclick="expand_all(this)"><h4>&darr;&darr;&darr;</h4></button>';
	//echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
	$tree=xxx_make_examination_tree($link,$sql,'request_route');
	//tree_to_div($tree);
	echo '<ul id="get_examination_data" style="list-style-type: none">';
	xxx_tree_to_panel($link,$tree,'',' collapse ');
	echo '</ul>';
	//xxxxxx
	//echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';
	//tree_to_table($link,$tree,'',' show ');
}



function get_qc_search_conditions($link,$examination_id,$search_list_of_examination_id,$range_search_list_of_examination_id,$limit)
{
	if($examination_id=='sample_id')
	{
		$ex_name='sample_id';
	}
	else
	{
		$examination_details=get_one_examination_details($link,$examination_id);
		$ex_name=$examination_details['name'];
	}	
		
	echo '<form method=post>';
	
	//echo '<input type=hidden size=13 id=from name=examination_id value=\''.$examination_id.'\' class="form-control text-danger"\>';

	//echo '<div class="basic_form">';
	//	echo '<div>ID Range</div>';
	//	show_id_range_options($link);
	//echo '</div>';
	
	foreach($search_list_of_examination_id as $examination_id)
	{
		get_one_field_for_search($link,$examination_id);
	}

	$qc_id_examination_id=get_config_value($link,'qc_id_examination_id');
	foreach($range_search_list_of_examination_id as $examination_id)
	{
		if($examination_id=='sample_id')
		{
			get_sample_id_for_range_search($link);
		}
		else
		{
			
			if($qc_id_examination_id==$examination_id)
			{
				$max_qc_id=find_max_qc_id($link);
				get_one_field_for_range_search($link,$examination_id,$max_qc_id-20,$max_qc_id);
			}
			else
			{
				get_one_field_for_range_search($link,$examination_id);
			}
		}
	}

	echo '<fieldset ><legend>Sort</legend>';
	echo '<div><label for="sample_id_sort" >sample_id sort</lable><input type="radio" checked="checked" id="sample_id_sort" name="sort_order" value="sample_id"></div>';
	echo '<div><label for=examination_id_sort >examination_id sort</lable><input type="radio" name="sort_order" id=examination_id_sort value="examination_id"></div>';
	echo '</fieldset>';
	echo '<label for="row_limit" >limit</lable><input id=row_limit value=\''.$limit.'\' type=number name=row_limit>';

	echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=find_qc_data>Search</button>';

	
	echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';

	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';

}

function xxx_edit_primary_result_extra_button($sample_id,$examination_id,$uniq,$extra,$target=' target=_blank ',$label='extra')
{
	echo '<div class="d-inline-block" ><form method=post '.$target.' action=xxx_edit_primary_result_extra.php class=print_hide>
	<button class="btn btn-outline-primary btn-sm" onclick="return confirm(\'Current Extra Remark is : '.$extra.' \n presss ok to edit.\');" name=sample_id value=\''.$sample_id.'\' >'.$label.'</button>
	<input type=hidden name=examination_id value=\''.$examination_id.'\' >
	<input type=hidden name=uniq value=\''.$uniq.'\' >
	<input  type=hidden name=extra value=\''.$extra.'\' >
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=edit_qc_extra>
	</form></div>';
}


function find_max_qc_id($link)
{
	$qc_id_examination_id=get_config_value($link,'qc_id_examination_id');
	$examination_details=get_one_examination_details($link,$qc_id_examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){echo 'No such examination_id??'; return false;}
	$table=$edit_specification['table'];
	$sql='select max(id) max_id from `'.$table.'`';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	//print_r($ar);
	return $ar['max_id'];
}


function find_today_qc_id($link)
{
	$qc_id_examination_id=get_config_value($link,'qc_id_examination_id');
	$examination_details=get_one_examination_details($link,$qc_id_examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){echo 'No such examination_id??'; return false;}
	$table=$edit_specification['table'];
	
	$qc_analysis_time_examination_id=get_config_value($link,'qc_analysis_time_examination_id');

	$sql='select  s.sample_id sid,r.sample_id, r.result , q.sample_id,q.id
			from sample_link s 
			
			join result r 
			join `'.$table.'` q
			
			on 
				s.sample_id=r.sample_id and 
				r.examination_id=\''.$qc_analysis_time_examination_id.'\' and 
				r.result like concat(date(sysdate()),"%")
				and q.sample_id=r.sample_id';
				
	$result=run_query($link,$GLOBALS['database'],$sql);
	$sar=[];
	while($ar=get_single_row($result))
	{
		//print_r($ar);
		$sar[]=$ar['sid'];
	}
	return $sar;
}

?>

<div class="d-block" style="width:80%">
	<canvas id="lj_chart2" ></canvas>
</div>

<script>
function my_search_test()
{
	search_text=document.getElementById("my_search_text").value;
	//alert("search="+search_text)
	if(search_text==="")
	{
		return false;
	}
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (this.readyState == 4 && this.status == 200) 
		{
			document.getElementById('my_search_result').innerHTML = xhttp.responseText;
		}
	};

	post1='search_text='+search_text
	post2='session_name=<?php echo $_POST["session_name"];?>'
	post3='login=<?php echo $_SESSION["login"];?>'
	post4='password=<?php echo $_SESSION["password"];?>'
	
	post=post1+'&'+post2+'&'+post3+'&'+post4
	xhttp.open('POST', 'xxx_search_examination.php', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(post);	
}

jdata=<?php echo $json; ?>;
sdata=<?php echo $sorted; ?>;

//alert(JSON.stringify(sdata));

//original linear scale
function addData(chart, label, newData) 
{
	len=chart.data.datasets.push({"data":newData})	
	//len is length of returned array with one more member (new member is JSON)
	//push creates new member
	
	chart.data.datasets[len-1].label=label
	//now take its index and add a member (it is not json)
	
	chart.data.datasets[len-1].parsing={yAxisKey:"sdi"}
	//now add one member whose value is json array
	
	//chart.data.datasets[len-1].parsing.xAxisKey="sample_analysis"
	//chart.data.datasets[len-1].parsing.xAxisKey="uniq"
	//chart.data.datasets[len-1].parsing.xAxisKey="qc_id"
	chart.data.datasets[len-1].parsing.xAxisKey="sample_id"
    //to ensure that it do not replace , but adds value  
    
    chart.data.datasets[len-1].backgroundColor=getRandomColor()
    chart.data.datasets[len-1].borderColor=chart.data.datasets[len-1].backgroundColor
    chart.update();
}



cht2=new Chart(
				document.getElementById("lj_chart2"), 
				{
					/*type: 'line',*/
					type: 'scatter',

					options: {	
									showLine: true,
									locale: 'en-EN', // Uncomment this line for "wrong" options
									scales:
									{
										
										x:
										{
											type: 'linear',
											reverse: true,
											grid:	{
														/*color:["black","red","orange","green","green","green","orange","red","black"],*/
														display:false
												},
											title: {text:"sample id",display:true,color:"red"},
											ticks: {
														callback: function(value, index, values) 
																			{
																				valuee=value.toString()
																				if(valuee.substring(6,8)>31)
																				{
																					return ''
																				}
																				else
																				{
																					return valuee.replace(/,/g, '');
																					//return valuee.substring(0,4)+"-"+valuee.substring(4,6)+"-"+valuee.substring(6,8)
																				}
																				//return valuee.substring(0,4)+"-"+valuee.substring(4,6)+"-"+valuee.substring(6,8)+" "+valuee.substring(8,10)+":"+valuee.substring(10,12)+":"+valuee.substring(12,14)
																				//return ('"'+(value.toFixed())+'"').replace(",","");
																				//return value.substring(0,10);
																				//return value;
																			},
													maxRotation: 90,
													minRotation: 90,
													/*stepSize:1000000*/
													},
										},
										

										y:
										{
										type: 'linear',										
										grid:	{
													color:["black","red","orange","green","green","green","orange","red","black"],
												},
										ticks: {
													callback: function(value, index, values) 
																		{
																			valuee=value.toString()+' SD'
																			return valuee
																		},
												},
												min:-4,
												max:4
										},																							
									},
									responsive: true,
									plugins:
									{
										tooltip:
										{
											enabled: true,
											bodyFont:{size:24},
											callbacks:
											{
												title: function(){return '';},
												//label: function(context){return JSON.stringify(context.parsed)+',<br>'+context.raw['qc_analysis_time']+', examination='+context.raw['examination_name']+',sample_id='+context.raw['sample_id']+',qc_id='+context.raw['qc_id']+',result='+context.raw['result']+',mean='+context.raw['mean']+',sd='+context.raw['sd'];}
												label: function(context){
																			return [
																					'datetime='+context.raw['qc_analysis_time'],
																					'examination='+context.raw['examination_name'],
																					'sample_id='+context.raw['sample_id'],
																					'qc_id='+context.raw['qc_id'],
																					'result='+context.raw['result'],
																					'mean='+context.raw['mean'],
																					'sd='+context.raw['sd']
																					]
																		}
												//label: function(context){return JSON.stringify(context.raw,null,"\t");}
												//label: function(context){ return JSON.stringify(context.raw).replace(",","\t"); }
												//label: function(context){ return JSON.stringify(context.raw) ;}
												//label: function(context){ return JSON.stringify(JSON.parse(JSON.stringify(context.raw)),null,"\t");}
											},
										},
										
									}
								}
				}
			);
         
for(let x in sdata)
{
	addData(cht2,x,sdata[x])
}


function addData_original(chart, label, newData) {
    chart.data.labels.push(label);
    chart.data.datasets.forEach((dataset) => {
        dataset.data.push(newData);
    });
    chart.update();
}

function getRandomColor() {
   var letters = '0123456789ABCDEF'.split('');
   var color = '#';
      for (var x = 0; x < 6; x++) {
          color += letters[Math.floor(Math.random() * 16)];
      }
   return color
} 

</script>
