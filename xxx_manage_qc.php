<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>
		  <script src="bootstrap/chart.min.js"></script>';	
////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);
$qc_sql="select * from examination  where sample_requirement!='None' order by request_route,name";

echo '<button class="btn btn-primary" type="button" 
		data-toggle="collapse" data-target="#get_data" aria-expanded="false" >Show Hide Search Window</button>';
echo '<div id="get_data" class="show p-3 bg-light border border-dark">';
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
						get_qc_search_conditions($link,1048,array('3001','9000'),array('1048','10006','sample_id'));
				echo '</div>';
	echo '</div>';
echo '</div>';

if($_POST['action']=='find_qc_data')
{
	$data=prepare_qc_data_from_search_condition($link,$_POST);
	//echo '<pre>';print_r($data);echo '</pre>';
	$json=json_encode($data);	//used by chart.js
	//echo $json;

	$sorted_array=array();
	foreach($data as $qc)
	{
		//$sorted_array[$qc['examination_id'].'_'.$qc['equipment'].'_'.$qc['qc_lot']][]=[  'examintaion_name' =>$qc['examination_name'], 'sample_analysis'=>$qc['sample_analysis'], 'uniq'=>$qc['uniq'],'sdi'=>$qc['sdi'] ];
		$sorted_array[$qc['examination_id'].'_'.$qc['qc_lot']][]=$qc;
	}
	//echo '<pre>';print_r($sorted_array);echo '</pre>';
	$sorted=json_encode($sorted_array);		//used by chart.js
	
}


/*
echo '<canvas id=myCanvas></canvas>';
	echo '<script>
	const canvas = document.getElementById("myCanvas");
	const ctx = canvas.getContext("2d");

	// Start a new Path
	ctx.beginPath();
	ctx.moveTo(0, 0);
	ctx.lineTo(300, 150);

	// Draw the Path
	ctx.stroke();
	
	</script>';
	*/
//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

/*
Array
(   [examination_id] => 1048
    [__ex__3001] => 
    [___ex___3001] => 
    [__ex__9000] => 
    [__from__1048] => 
    [__ex__1048] => 
    [__to__1048] => 
    [__from__10006] => 
    [__ex__10006] => 
    [__to__10006] => 
    [id_range] => 1000000-1999999
    [__from__sample_id] => 
    [__ex__sample_id] => 
    [__to__sample_id] => 
    [action] => find_qc_data
    [selected_examination_list] => 
    [session_name] => sn_1468638343 )
Array(
    [examination_id] => 1048
    
    [chk^3001] => on
    [__ex__3001] => QC/0/BlankW
    [___ex___3001] => QC/0/BlankW
    
    [chk^9000] => on
    [__ex__9000] => XL_640
    
    [chk^1048] => on
    [__from__1048] => 223
    [__ex__1048] => 
    [__to__1048] => 2333
    
    [chk^10006] => on
    [__from__10006] => 2023-08-17T22:18
    [__ex__10006] => 
    [__to__10006] => 2023-08-17T22:18
    
    [id_range] => 1000000-1999999
    
    [chk^sample_id] => on
    [__from__sample_id] => 122
    [__ex__sample_id] => 
    [__to__sample_id] => 333
    
    [action] => find_qc_data
    [selected_examination_list] => 5009,5010
    [session_name] => sn_1468638343)
*/

function prepare_qc_data_from_search_condition($link,$post)
{
	//echo '<pre>';print_r($post);echo '</pre>';
	
	$ex_list_csv=$post['selected_examination_list'];
	//echo 'reporting requested for..'.$ex_list_csv.'<br>';

	
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
				$to=$post['__to__'.$search_examination_id];
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
						$sql=$sql . '(select sample_id from sample_link where sample_id between \''.$from.'\' and  \''.$to.'\' ) intersect ';
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
	
	if(strlen($sql)>0)
	{
		$sql=substr($sql,0,-10);
		//echo $sql.'<br>';

		if(strlen($ex_list_csv)>0)
		{
			$root_sql='select * from primary_result where examination_id in ('.$ex_list_csv.') and sample_id in ('.$sql.')';
		}
		else
		{
			$root_sql='select * from primary_result where sample_id in ('.$sql.')';		
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
	
	$root_sql=$root_sql.' order by sample_id,examination_id,uniq desc limit 400';
	
	echo $root_sql.'<br>';
	//view_sql_result_as_table($link,$root_sql,$show_hide='yes');
	$result=run_query($link,$GLOBALS['database'],$root_sql);
	$data=array();
	
	//	<canvas height="4" width="160" style="background-color:black;"></canvas>

	$addtional_examination_array=array(10006,1048,3001,9000);
	
	echo '<table class="table table-striped table-sm m-3">';
	echo '<tr>
	<td>Action</td>
	<td style="border-right-style: dotted;padding:0px;border-left-style: dotted;padding:0px;text-align:right">
	
				<canvas id="lj_header_negative" 
						height="30" 
						width="160" 
						></canvas>
			<script>
					can=document.getElementById("lj_header_negative");
					ctx=can.getContext("2d");
					ctx.font = "15px Arial";

					ctx.strokeText("3s", 40,20);
					ctx.strokeText("2s", 80,20);
					ctx.strokeText("1s", 120,20);

					ctx.strokeStyle = "red";
					ctx.strokeText(".", 40 , 5);
					ctx.strokeStyle = "orange";
					ctx.strokeText(".", 80 , 5);
					ctx.strokeStyle = "lightgreen";
					ctx.strokeText(".", 120 , 5);
				</script>
	</td>
	<td style="border-right-style: dotted;padding:0px;text-align:left">
	
	
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
	
	</td>
	<td>SDI</td>
	<td>Sample ID</td>
	<td>Examination ID</td>
	<td>Examination Name</td>
	<td>uniq</td>
	<td>Observed</td>
	<td>Extra</td>
	<td>QC Lot</td>
	<td>Mean</td>
	<td>SD</td>
	<td>Lot Remark</td>
	<td>Mfg</td>';
	foreach($addtional_examination_array as $ex_id)
	{
		$ex_data=get_one_examination_details($link,$ex_id);
		echo '<td>'.$ex_data['name'].'</td>';
	}
	echo '</tr>';
	
	while($ar=get_single_row($result))
	{
		$q=display_one_qc($link,$ar,$addtional_examination_array);
		$data[]=$q;
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
			$id=$q['sample_id'].$q['qc_lot'].$q['examination_id'].$q['uniq'];
			$position=160-min((-$q['sdi']*40),160 );
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
			$id=$q['sample_id'].$q['qc_lot'].$q['examination_id'].$q['uniq'].'blank';
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
			$id=$q['sample_id'].$q['qc_lot'].$q['examination_id'].$q['uniq'];
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
			$id=$q['sample_id'].$q['qc_lot'].$q['examination_id'].$q['uniq'].'blank';
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

function display_one_qc($link,$primary_result_array,$addtional_examination_array)
{
	$q=array();
	$ex_details=get_one_examination_details($link,$primary_result_array['examination_id']);
	
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
			
	//print_r($primary_result_array);echo '<br>';
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

	//print_r($ex_details);echo '<br>';
	foreach($addtional_examination_array as $ex_id)
	{
			$add_ex_details=get_one_examination_details($link,$ex_id);
			$add_ex_data=get_any_examination_result($link,$primary_result_array['sample_id'],$ex_id);
			//print_r($add_ex_details);echo '<br>';
			//echo '---'.$add_ex_data.'---<br>';
			$q[$add_ex_details['name']]=$add_ex_data;
	}

	echo '<tr>';
	echo '<td>';
	echo '<table><tr><td>';
		xxx_sample_id_edit_button($q['sample_id'],' target=_blank ','E');
		echo '</td><td>';
		xxx_edit_primary_result_extra_button($q['sample_id'],$q['examination_id'],$q['uniq'],$q['extra'],' target=_blank ',$label='+');
	echo '</td></tr></table>';
	echo '</td>';

	format_one_lj_point($q);

	foreach($q as $k=>$v)
	{
		echo '<td style="white-space: nowrap;">'.$v.'</td>';
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



function get_qc_search_conditions($link,$examination_id,$search_list_of_examination_id,$range_search_list_of_examination_id)
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
	echo '<input type=hidden size=13 id=from name=examination_id value=\''.$examination_id.'\' class="form-control text-danger"\>';

	//echo '<div class="basic_form">';
	//	echo '<div>ID Range</div>';
	//	show_id_range_options($link);
	//echo '</div>';
	
	foreach($search_list_of_examination_id as $examination_id)
	{
		get_one_field_for_search($link,$examination_id);
	}

	foreach($range_search_list_of_examination_id as $examination_id)
	{
		if($examination_id=='sample_id')
		{
			get_sample_id_for_range_search($link);
		}
		else
		{
			get_one_field_for_range_search($link,$examination_id);
		}
	}
	
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

?>

<style>
  #chart-wrapper {
    display: inline-block;
    position: relative;
    width: 1000px;
    height:500px;
  }
</style>
<div id="chart-wrapper">
<!-- <canvas id="lj_chart" ></canvas> -->
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
	chart.data.datasets[len-1].parsing.xAxisKey="uniq"
    //to ensure that it do not replace , but adds value  
    
    chart.data.datasets[len-1].backgroundColor=getRandomColor()
    chart.data.datasets[len-1].borderColor=chart.data.datasets[len-1].backgroundColor
    chart.update();
}


/*
cht=new Chart(
			document.getElementById("lj_chart"), 
			{
				type: 'line',
				data: 	{
							datasets:[
										{
											label: 'LJ Chart1',
											data:jdata,
											parsing:
											{
												yAxisKey:'sdi',
												xAxisKey:'uniq',
											}
										},
									]
						},

				options: 	{
								scales:
								{
									y:{min:-4, max:4},
								},
								responsive: true
							}
			}
         );
*/
cht2=new Chart(
				document.getElementById("lj_chart2"), 
				{
					type: 'line',
					data: 	{
								datasets:[
											{

											}
										]
							},

					options: 	{
									scales:
									{
										x:
										{
											type: 'linear',
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
																					return valuee.substring(0,4)+"-"+valuee.substring(4,6)+"-"+valuee.substring(6,8)
																				}
																				//return valuee.substring(0,4)+"-"+valuee.substring(4,6)+"-"+valuee.substring(6,8)+" "+valuee.substring(8,10)+":"+valuee.substring(10,12)+":"+valuee.substring(12,14)
																				//return ('"'+(value.toFixed())+'"').replace(",","");
																				//return value.substring(0,10);
																				//return value;
																			},
													maxRotation: 90,
													minRotation: 90,
													stepSize:1000000
													},
										},


										y:
										{
										type: 'linear',
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
											callbacks:
											{
												title: function(){return '';},
												label: function(context){return JSON.stringify(context.parsed)+', examination='+context.raw['examination_name']+',sample_id='+context.raw['sample_id']+',qc_id='+context.raw['qc_id']+',result='+context.raw['result']+',mean='+context.raw['mean']+',sd='+context.raw['sd'];}
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
