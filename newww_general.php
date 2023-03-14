<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

main_menu($link);

$tok=explode("|",$_POST['action']);
//print_r($tok);

if($tok[0]=='newww_general')
{
	$sql="select * from display_examination where route like '%".$tok[2]."%'";
	//echo $sql;
	
	get_data_specific($link,$sql,$tok[1]);
}

elseif($_POST['action']=='insert')
{
	xx_save_insert_specific($link,$_POST['selected_examination_list']);
}

echo '<div ><span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
echo '<div id="status-window" class="border border-success collapse" >status:</div></div>';

function get_data_specific($link,$sql,$ex_list)
{
	echo '<form method=post class="bg-light jumbotron" enctype="multipart/form-data">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	xx_get_basic_specific();
	
	$ex_array=array_filter(explode(",",$ex_list));
	//print_r($ex_array);
	foreach($ex_array as $ex_id)
	{
		get_one_field_for_insert($link,$ex_id);
	}
	
	
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';

	xx_get_examination_data($link,$sql,'id',$multi='no',$size=10);
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	


	echo '</form>';		
	
}


//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';
//echo '<pre>';print_r($_FILES);echo '</pre>';

//////////////Functions///////////////////////
//function xx_get_basic_specific()
//{
	//$YY=strftime("%y");
//echo '<div id=basic class="tab-pane active">';
//echo '<div class="basic_form">';
	//echo '	<label class="my_label text-danger" for="mrd">Patient Unique Identification</label>
			//<input 
				//size=13 
				//id=mrd 
				//name=\'__ex__'.$GLOBALS['mrd'].'\' 
				//class="form-control text-danger" 
				//required="required" 
				//type=text 
				//placeholder="Patient Unique Identification" >
			//<p class="help"><span class=text-danger>Must be unique to the patient</p>';
//echo '</div>';
//echo '</div>';
//}


//function xx_get_examination_data($link,$sql,$pk_name,$multi='no',$size=8)
//{
	//echo '<button class="btn btn-success " type=button id=ex_all_expand onclick="expand_all()">Expand All</button>';
	//echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
	//echo '<input type=hidden readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';
	//$tree=make_examination_tree($link,$sql);
	////tree_to_div($tree);
	//echo '<ul style="list-style-type: none">';
	//tree_to_panel($link,$tree,'',' collapse ');
	//echo '</ul>';
	////tree_to_table($link,$tree,'',' show ');

//}


//function tree_to_div($tree)
//{
	//foreach($tree as $k=>$v)
	//{
		//if(is_array($v))
		//{
			//echo '<div id='.$k.'>';
			//tree_to_div($v);
		//}
		//else
		//{
			//echo '<div id='.$k.'>'.$v;
		//}
		//echo '</div>';
	//}
//}


//function tree_to_table($link,$tree,$id_prefix='',$collapse=' collapse ')
//{
	//echo '<table class="table table-sm table-striped" border=1 >';
	//foreach($tree as $k=>$v)
	//{
		////$rand=str_replace(' ','_',$k).'_'.rand(10000,20000);
		
		//$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',$k));
		
		//if(is_array($v))
		//{
			
			//echo '<tr><th>
						//<span
							//class="text-info  border border-primary" 
							//data-toggle="collapse"
							//id=\''.$id.'\' 
							//data-target=#'.$id.'_target
							//>'
							//.$k.'
						//</span>
						//<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>
						//</th></tr>';
			//echo '<tr><td id='.$id.'_target class="'.$collapse.'" style="padding-left:60px">';
			//tree_to_table($link,$v,$id,$collapse);
			//echo'</td></tr>';
		//}
		//else
		//{
			//echo '<tr><th>
							//<span
								//class="text-info border border-primary" 
								//data-toggle="collapse" 
								//data-target=#'.$id.'_target 
								//class="text-primary"
								//>'
								//.$k.'
							//</span>
							//<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>

						//</th></tr>';
			//echo '<tr><td  id='.$id.'_target  class="'.$collapse.'"  style="padding-left:60px">';
			//foreach($ex=explode(',',$v) as $e)
			//{
				//display_one_examination($link,$e,$id);
				///*
				//echo '<button
							//id='.$id.'_'.$e.'\'
							//data-examination_id=\''.$e.'\' 
							//type=button
							//class="bg-warning" 
							//onclick="select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
							//>'.$e.'</button>';*/
			//}
			//echo'</td></tr>';
		//}
	//}
	//echo '</table>';
//}


//function tree_to_panel($link,$tree,$id_prefix='',$collapse=' collapse ')
//{
	//foreach($tree as $k=>$v)
	//{
		////$rand=str_replace(' ','_',$k).'_'.rand(10000,20000);
		
		//$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',$k));
		
		//if(is_array($v))
		//{
			
				//echo '	<span
							//class="text-info  border border-primary rounded" 
							//data-toggle="collapse"
							//id=\''.$id.'\' 
							//data-target=#'.$id.'_target
							//>'
							//.$k.'
						//</span>
						//<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>
						//';
				//echo '<ul style="list-style-type: none" class="border-left border-danger">';
						//echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:60px">';
						//tree_to_panel($link,$v,$id,' show ');
						//echo '</li>';
				//echo'</ul>';
		//}
		//else
		//{
					//echo '		<span
								//class="text-info border border-primary rounded" 
								//data-toggle="collapse" 
								//data-target=#'.$id.'_target 
								//>'
								//.$k.'
							//</span>
							//<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>

						//';
				//echo '<ul style="list-style-type: none" class="border-left border-danger">';

						//echo '<li  id='.$id.'_target  class="'.$collapse.' ex_menu"  style="padding-left:60px">';
						//echo '<div class=ex_profile>';
						//foreach($ex=explode(',',$v) as $e)
						//{
							//display_one_examination($link,$e,$id);
																		///*
																		//echo '<button
																					//id='.$id.'_'.$e.'\'
																					//data-examination_id=\''.$e.'\' 
																					//type=button
																					//class="bg-warning" 
																					//onclick="select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
																					//>'.$e.'</button>';*/
						//}
						//echo '</div>';
						//echo '</li>';
				//echo'</ul>';
		//}
	//}
//}

//function tree_to_tab($link,$tree,$id_prefix='',$collapse=' collapse ')
//{
	//foreach($tree as $k=>$v)
	//{
		////$rand=str_replace(' ','_',$k).'_'.rand(10000,20000);
		
		//$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',$k));
		
		//if(is_array($v))
		//{
			
				//echo '	<span
							//class="text-info  border border-primary rounded" 
							//data-toggle="collapse"
							//id=\''.$id.'\' 
							//data-target=#'.$id.'_target
							//>'
							//.$k.'
						//</span>
						//<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>
						//';
				//echo '<ul style="list-style-type: none">';
						//echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:60px">';
						//tree_to_panel($link,$v,$id,' show ');
						//echo '</li>';
				//echo'</ul>';
		//}
		//else
		//{
					//echo '		<span
								//class="text-info border border-primary rounded" 
								//data-toggle="collapse" 
								//data-target=#'.$id.'_target 
								//>'
								//.$k.'
							//</span>
							//<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>

						//';
				//echo '<ul style="list-style-type: none">';

						//echo '<li  id='.$id.'_target  class="'.$collapse.' ex_menu"  style="padding-left:60px">';
						//echo '<div class=ex_profile>';
						//foreach($ex=explode(',',$v) as $e)
						//{
							//display_one_examination($link,$e,$id);
																		///*
																		//echo '<button
																					//id='.$id.'_'.$e.'\'
																					//data-examination_id=\''.$e.'\' 
																					//type=button
																					//class="bg-warning" 
																					//onclick="select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
																					//>'.$e.'</button>';*/
						//}
						//echo '</div>';
						//echo '</li>';
				//echo'</ul>';
		//}
	//}
//}


//function make_examination_tree($link,$sql)
//{
	//$examination_tree=[];
	//$result=run_query($link,$GLOBALS['database'],$sql);
	//while($ar=get_single_row($result))
	//{
		////echo '<pre>';print_r($ar);echo '</pre>';
		//$path=explode("/",$ar['route']);
		////echo '<pre>';print_r($path);echo '</pre>';
		//$temp=&$examination_tree;
		//foreach($path as $v)
		//{
			//$temp=&$temp[$v];
		//}
		//$temp=$ar['examination_id_list'];
	//}
	////echo '<pre>';print_r($examination_tree);echo '</pre>';
	//return $examination_tree;
//}

//function display_one_examination($link,$ex_id,$prefix)
//{
	//$ex_data=get_one_examination_details($link,$ex_id);
	//$sr=$ex_data['sample_requirement']!='None'?$ex_data['sample_requirement']:'';
	//$edit_specification=json_decode($ex_data['edit_specification'],true);
	//$method=isset($edit_specification['method'])?$edit_specification['method']:'';
	//$ex_limit=isset($edit_specification['limit_request'])?$edit_specification['limit_request']:0;
	//$user_limit=get_user_request_limit($link);
	//$e=$ex_id;
	//if($user_limit>=$ex_limit)
	//{
		////my_on_off_ex($ex_data['name'].'<br>'.$sr.'<br>'.$method,$ex_data['examination_id']);
		//echo '<button
				//id=\''.$prefix.'_'.$e.'\'
				//data-examination_id=\''.$e.'\' 
				//type=button
				//class="bg-warning" 
				//onclick="select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
				//>'.$ex_data['name'].'<br>'.$sr.'<br>'.$method.'</button>';
	//}
//}



//function dropdown_get_examination_data($link,$sql,$pk_name,$multi='no',$size=8)
//{
	  //xx_mk_select_from_sql_with_description($link,$sql,$pk_name,$pk_name,$pk_name,$disabled='',$default='',$blank='no',$readonly='',$multi,$size);
//}


//function xx_mk_select_from_sql_with_description($link,$sql,$field_name,$select_name,$select_id,$disabled='',$default='',$blank='no',$readonly='',$multi,$size)
//{
	////echo '<h1>++'.$readonly.'</h1>';
	//$ar=xx_mk_array_from_sql_with_description($link,$sql,$field_name);
	//if($blank=='yes')
	//{
		//array_unshift($ar,array("",""));
	//}
	////echo '<pre>';print_r( $ar);echo '</pre>';
	//xx_mk_select_from_array_with_description($select_name,$ar,$disabled,$default,$readonly,$multi,$size);
//}

//function xx_mk_array_from_sql_with_description($link,$sql,$field_name)
//{
	//$result=run_query($link,$GLOBALS['database'],$sql);
	//$ret=array();
	//while($ar=get_single_row($result))
	//{
		//$ret[]=array($ar[$field_name],$ar['description']);
	//}
	//return $ret;
//}


//function xx_mk_select_from_array_with_description($name, $select_array,$disabled='',$default='',$readonly='',$multi, $size)
//{	
	////echo '<h1>--'.$readonly.'--</h1>';
	//if($readonly=='readonly')
	//{
		//foreach($select_array as $key=>$value)
		//{
			//if($value[0]==$default)
			//{
				//echo '<input type=hidden '.$readonly.' name=\''.$name.'\' id=\''.$name.'\'  value=\''.$default.'\'>';
				//echo $value[1].'('.$value[0].')';
			//}
			//else
			//{

			//}
		//}
		//return TRUE;
	//}
	
	//if($multi=='yes')
	//{
		//$selected=$name.'_selected';
		

		
		
		//echo '<select  
					//size=\''.$size.'\' multiple '.$disabled.'  
					//id=\''.$name.'\' name=\''.$name.'[]\' 
					//onclick="add_to_storage(this,\''.$selected.'\',event)"
					//onkeypress=" 
					//if(event.key==\' \')
					//{
						////alert(\'space bar pressed\');
						//add_to_storage(this,\''.$selected.'\',event)
					//}"
				//">';


	//}
	//else
	//{
		//$selected=$name.'_selected';
		////echo '<select  '.$disabled.'  id=\''.$name.'\' name=\''.$name.'\' ">';
				//echo '<select  
					//size=\''.$size.'\'  '.$disabled.'  
					//id=\''.$name.'\' name=\''.$name.'[]\' 
					//onclick="add_to_storage(this,\''.$selected.'\',event)"
					//onkeypress=" 
					//if(event.key==\' \')
					//{
						////alert(\'space bar pressed\');
						//add_to_storage(this,\''.$selected.'\',event)
					//}"
				//">';

		
	//}

	//foreach($select_array as $key=>$value)
	//{
		//if($value[0]==$default)
		//{
			//echo '<option  selected value=\''.$value[0].'\' > '.$value[1].'('.$value[0].')'.' </option>';
		//}
		//else
		//{
			//echo '<option value=\''.$value[0].'\' > '.$value[1].'('.$value[0].')'.' </option>';
		//}
	//}

	//echo '</select>';

	//if($multi=='yes')
	//{	
		//echo '<select multiple size='.$size.'
					//onclick="remove_from_storage(this,\''.$name.'\')"
					//onkeypress="remove_from_storage(this,\''.$name.'\')"
					
					//onkeypress=" 
					//if(event.key==\' \')
					//{
						////alert(\'space bar pressed\');
						//remove_from_storage(this,\''.$name.'\',event)
					//}"
					
					
					//id=\''.$selected.'\' name=\''.$selected.'\'></select>';	
		//echo '<br><input type=text id=xx name=xx size=90>';
	//}
	//else
	//{
				//echo '<select  size='.$size.'
					//onclick="remove_from_storage(this,\''.$name.'\')"
					//onkeypress="remove_from_storage(this,\''.$name.'\')"
					
					//onkeypress=" 
					//if(event.key==\' \')
					//{
						////alert(\'space bar pressed\');
						//remove_from_storage(this,\''.$name.'\',event)
					//}"
					
					
					//id=\''.$selected.'\' name=\''.$selected.'\'></select>';	
		
	//}
	//return TRUE;
//}



//function xx_save_insert_specific($link,$selected_examination_list)
//{


//////Requested examinations
	//$requested=array_filter(explode(',',$selected_examination_list));
	////echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';




//////filled examinations

	//$with_result=array();
	//foreach($_POST as $k=>$v)
	//{
		//$tok=explode('__',$k);
		//if(isset($tok[1])=='ex')
		//{
			//$with_result_id=$tok[2];
			////echo $tok[2].'<br>';
			//$with_result[]=$tok[2];
		//}
	//}

	//foreach($_FILES as $k=>$v)
	//{
		//$tok=explode('__',$k);
		//if(isset($tok[1])=='ex')
		//{
			//$with_result_id=$tok[2];
			////echo $tok[2].'<br>';
			//$with_result[]=$tok[2];
		//}
	//}
	
//////Requested + filled examinations
	//$requested=array_merge($requested,$with_result);
	//$requested=array_filter(array_unique($requested));
	////echo '<pre>following examinations are requested+filled with results:<br>';print_r($requested);echo '</pre>';



//////determine sample-type required for each and also distinct types////////////////////////////////////
	//$sample_requirement_array=array();
	//foreach($requested as $ex)
	//{
		//$psql='select examination_id,sample_requirement from examination where examination_id=\''.$ex.'\'';
		//$result=run_query($link,$GLOBALS['database'],$psql);
		//$ar=get_single_row($result);
		//$sample_requirement_array[$ar['sample_requirement']][]=$ar['examination_id'];
	//}

	////echo '<pre>following are sample_requirements [$sample_requirement_array] for requested examinations:<br>';print_r($sample_requirement_array);echo '</pre>';

//////What are tubes reuired
	////$sample_required=array_unique($sample_required); original
	//$sample_required=array_unique(array_keys($sample_requirement_array));
	////echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
//////determine sample_id to be given/////////////////////////////////
	//$sample_id_array=set_sample_id($link,$sample_required);
	
	////echo '<pre>following samples ids are alloted:<br>';print_r($sample_id_array);echo '</pre>';
	
//////Display Properly with sample ID and container types and barcode buttons
	//show_sample_required($sample_id_array);
	
	
//////insert examinations////////////////////////////////////////////

////1//Insert None type examination to all samples

	//if(array_key_exists('None',$sample_requirement_array))
	//{
		//foreach($sample_requirement_array['None'] as $ex)
		//{
			//foreach($sample_id_array as $sid)
			//{
				//if($ex==$GLOBALS['sample_requirement'])
				//{
					////already inserted during set_sample_id()
				//}
				//else
				//{
					//$examination_details=get_one_examination_details($link,$ex);
					//$edit_specification=json_decode($examination_details['edit_specification'],true);
					//$type=isset($edit_specification['type'])?$edit_specification['type']:'';
					//if($type!='blob')
					//{
						//insert_one_examination_without_result($link,$sid,$ex);
					//}
					//else
					//{
						//insert_one_examination_blob_without_result($link,$sid,$ex);
					//}
				//}
			//}
		//}
	//}
	
////2//Insert other types to respective sample_id		
		
	//foreach($sample_requirement_array as $stype=>$ex_array)
	//{
		//if($stype!='None')
		//{
			//foreach($ex_array as $ex)
			//{
				//$examination_details=get_one_examination_details($link,$ex);
				//$edit_specification=json_decode($examination_details['edit_specification'],true);
				//$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				
				//if($type!='blob')
				//{
					//insert_one_examination_without_result($link,$sample_id_array[$stype],$ex);
				//}
				//else
				//{
					//insert_one_examination_blob_without_result($link,$sample_id_array[$stype],$ex);
				//}
			//}
		//}
	//}


////3//update values for examinations with results


	////echo '<pre>';print_r(array_merge($_POST,$_FILES));echo '</pre>';

	//foreach(array_merge($_POST,$_FILES) as $k=>$v)
	//{
		//if(substr($k,0,6)=='__ex__')
		//{
			//$ex_id=substr($k,6);
			//$examination_details=get_one_examination_details($link,$ex_id);
			//$edit_specification=json_decode($examination_details['edit_specification'],true);
			//$type=isset($edit_specification['type'])?$edit_specification['type']:'';
			
			////print_r($sample_requirement_array);
			////print_r($examination_details);
			
			////echo '>>>>>sample required'.$examination_details['sample_requirement'];
			////echo '>>>>>sample id for this requirment'.$examination_details['sample_requirement'];
			
			//if($examination_details['sample_requirement']=='None')
			//{
				//foreach($sample_id_array as $sid)
				//{
					//if($type!='blob')
					//{
						//update_one_examination_with_result($link,$sid,$ex_id,$v);
					//}
					//else
					//{
						//update_one_examination_with_result_blob($link,$sid,$ex_id,$v);
					//}
				//}
			//}
			//else
			//{
				//if($type!='blob')
				//{
					//update_one_examination_with_result($link,$sample_id_array[$examination_details['sample_requirement']],$ex_id,$v);
				//}
				//else
				//{
					//update_one_examination_with_result_blob($link,$sample_id_array[$examination_details['sample_requirement']],$ex_id,$v);
				//}
			//}
		//}
	//}
	//return $sample_id_array	;
//}


//function update_one_examination_with_result_blob($link,$sid,$ex_id,$v)
//{
///*
    //[__ex__5076] => Array
        //(
            //[name] => Screenshot_2023-02-07_01-25-53.png
            //[type] => image/png
            //[tmp_name] => /tmp/phpanS50q
            //[error] => 0
            //[size] => 1186088
        //)
//*/

		////echo '================='.$sid;
		
		//$fvalue='__ex__'.$ex_id;
		//$blob=file_to_str($link,$_FILES[$fvalue]);
		//if(strlen($blob)!=0)
		//{
		//$sql='update result_blob 
				//set 
					//fname=\''.$v['name'].'\'	,
					//result=\''.$blob.'\'	
				//where 
					//sample_id=\''.$sid.'\' 
					//and
					//examination_id=\''.$ex_id.'\'';
		
		////for echo only			
		//$dsql='update result_blob 
				//set 
					//fname=\''.$v['name'].'\'	,
					//result=blob	
				//where 
					//sample_id=\''.$sid.'\' 
					//and
					//examination_id=\''.$ex_id.'\'';
					
			////echo $dsql; //$sql it will be very big;
			
			//if(!$result=run_query($link,$GLOBALS['database'],$sql))
			//{
				//echo '<br>Data not updated';
			//}
			//else
			//{
				//echo '<p>'.rows_affected($link).' results updated</p>';				
			//}	
		//}
		//else
		//{
			//echo '<p>0 size file. data not updated</p>';				
		//}
//}


?>
<script>
var selected_examination=[]


/////for tree

//when clicked on a button
function select_examination_js(me,ex_id,list_id)
{
	if(selected_examination.indexOf(ex_id) !== -1)
	{
		selected_examination.splice(selected_examination.indexOf(ex_id),1)
		document.getElementById(list_id).value=selected_examination
	}
	else
	{
		selected_examination.push(ex_id);
		document.getElementById(list_id).value=selected_examination
	}
	
	manage_all_button_for_ex_id(ex_id)
	update_sss()

}

function select_examination_by_ex_id(ex_element_id,list_id)
{
	ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
	if(selected_examination.indexOf(ex_id) !== -1)
	{
		selected_examination.splice(selected_examination.indexOf(ex_id),1)
		document.getElementById(list_id).value=selected_examination
	}
	else
	{
		selected_examination.push(ex_id);
		document.getElementById(list_id).value=selected_examination
	}
	
	manage_all_button_for_ex_id(ex_id)
	update_sss()
}

function invert_selection(target_id)
{
	//alert(target_id)
	const ul = document.querySelector('#'+target_id);

	// get all children
	const childern = ul.childNodes;

	// iterate over all child nodes
	childern.forEach(go_down_tree);

}

function go_down_tree(item, index)
{
	if(item.type=='button')
	{
		//console.log(item.id)
		select_examination_by_ex_id(item.id,'selected_examination_list')
	}
	else
	{
		item.childNodes.forEach(go_down_tree)
	}
	
}


//////////////////////sync all button
//called by select_examination_js and select_examination_by_ex_id
function manage_all_button_for_ex_id(ex_id)
{
	ul = document.getElementsByTagName("body")[0]; 
	ul.childNodes.forEach(go_down_tree_for_ex_id,{ex_id:ex_id});
}

function go_down_tree_for_ex_id(item,index)
{
	if(item.type=='button' )
	{
		item_id=item.id
		if(item_id != null)
		{
			//console.log(item_id+ "part:" + item_id.split("_")[item_id.split("_").length-1])
			if(item_id.split("_")[item_id.split("_").length-1]==this.ex_id)
			{
				//console.log(this.ex_id+ " found in id")
				display_ex_button(item_id,'selected_examination_list')
			}
		}
	}
	else
	{
		item.childNodes.forEach(go_down_tree_for_ex_id,{ex_id:this.ex_id})
	}
	
}


function display_ex_button(ex_element_id,list_id)
{
	ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
	if(selected_examination.indexOf(ex_id) !== -1)
	{
		document.getElementById(ex_element_id).classList.add('bg-success')
		document.getElementById(ex_element_id).classList.remove('bg-warning')
	}
	else
	{
		document.getElementById(ex_element_id).classList.remove('bg-success')
		document.getElementById(ex_element_id).classList.add('bg-warning')
	}
}


function update_sss()
{
	document.getElementById("status-window").innerHTML=''
	
	selected_examination.forEach(
									function (item,index)
									{
									//console.log("button[id$='_"+item+"']")
									$("button[id$='_"+item+"']").each(
																		function (i, el) 
																		{
																			if(i==0)		//even if examination display multiple, status only one button 
																			{
																				//console.log(el.id)
																				bb='<button class="btn btn-sm btn-outline-info" type=button>'+el.innerHTML+'</button>';
																				document.getElementById("status-window").innerHTML = document.getElementById("status-window").innerHTML+bb
																			}
																		}
																	 );
									}
								)	
}

//////////////////////////////////////////

</script>
