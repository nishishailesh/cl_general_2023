<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

		main_menu($link);

echo '<div class="two_column_nine">';

	echo '<div>';

		$tok=explode("|",$_POST['action']);
		//print_r($tok);

		if($tok[0]=='newww_general')
		{
			if(strlen($tok[2])>0)
			{
				$rlike=str_replace(',','|',$tok[2]);
				$sql="select * from examination where request_route rlike '".$rlike."' order by request_route,name";
				//echo $sql;
			}
			else
			{
				$sql="select * from examination order by request_route,name";
			}
			//echo $sql;
			
			get_data_specific($link,$sql,$tok[1]);
		}

		elseif($_POST['action']=='insert')
		{
			$all_samples=xxx_save_insert_specific($link,$_POST['selected_examination_list']);
			foreach ($all_samples as $sample_id)
			{
					showww_sid_button_release_status($link,$sample_id,'');
					//xxx_view_sample($link,$sample_id);
			}
		}

	echo '</div>';
	
	//echo '<div style="position: fixed;  top: 0;  right: 0;" >';
	echo '<div>
				<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
				echo '	<div id="status-window" 
							class="border border-success">status:
						</div>
			</div>';

echo '</div>';

function get_data_specific($link,$sql,$ex_list)
{
	
	echo '<form method=post class="bg-light jumbotron" enctype="multipart/form-data">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	
	echo '<div class="two_column_one_by_two">';
		echo '<div class="border">';
			xx_get_basic_specific();
	
			$ex_array=array_filter(explode(",",$ex_list));
			//print_r($ex_array);xr
			foreach($ex_array as $ex_id)
			{
				get_one_field_for_insert($link,$ex_id);
			}
		echo '</div>';
		echo '<div>';
	
			//echo '<button class="btn btn-sm btn-outline-success " type=button id=my_lft onclick="select_super_profile(this,\'selected_examination_list\') " data-status="off" data-ex_list="1002,1031,1032,1034,5001">My LFT</button>';
			xxx_get_examination_data($link,$sql,'id',$multi='no',$size=10);
		echo '</div>';
	echo '</div>';
	
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	echo '</form>';
}

//echo '<pre>';print_r($_POST);echo '</pre>';
//////////////user code ends////////////////
tail();
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

//now deselect
function select_examination_by_ex_id(ex_element_id,list_id)
{
	ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
	if(selected_examination.indexOf(ex_id) !== -1)
	{
		selected_examination.splice(selected_examination.indexOf(ex_id),1)
		document.getElementById(list_id).value=selected_examination
	}
	//else
	//{
	//	selected_examination.push(ex_id);
	//	document.getElementById(list_id).value=selected_examination
	//}
	
	manage_all_button_for_ex_id(ex_id)
	//update_sss()		//updating at every call cause client 100% CPU usage
}

function invert_selection(target_id)
{
	//alert(target_id)
	const ul = document.querySelector('#'+target_id);

	// get all children
	const childern = ul.childNodes;

	// iterate over all child nodes
	childern.forEach(go_down_tree);
	update_sss()		//Just update once to prevent excessive client CPU usage
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



function select_all_children(target_id)
{
	//alert(target_id)
	const ul = document.querySelector('#'+target_id);

	// get all children
	const childern = ul.childNodes;

	// iterate over all child nodes
	childern.forEach(go_down_tree_to_select_all);
	update_sss()		//Just update once to prevent excessive client CPU usage
}

///////////toggle start/////////////
function toggle_all_children(me,target_id)
{
	status=me.getAttribute('data-status')
	//This status variable is available to all functions called within this function!!!!!
	//alert(target_id)
		
	// get all children
	const ul = document.querySelector('#'+target_id);
	const childern = ul.childNodes;

	if(status=='on')
	{
		me.classList.remove('btn-success')
		me.classList.add('btn-outline-success')
		me.setAttribute('data-status','off')
	}
	else if(status=='off')
	{
		me.classList.add('btn-success')
		me.classList.remove('btn-outline-success')
		me.setAttribute('data-status','on')
	}	
	
	// iterate over all child nodes
	childern.forEach(go_down_tree_to_toggle_all);
	
	update_sss()		//Just update once to prevent excessive client CPU usage
	

}

function go_down_tree_to_toggle_all(item, index)
{
	//status from parent function is made avilable
	if(item.type=='button')
	{
		//console.log(item.id)
		toggle_examination_by_ex_id(item.id,'selected_examination_list')
	}
	else
	{
		item.childNodes.forEach(go_down_tree_to_toggle_all)
	}
	
}

function toggle_examination_by_ex_id(ex_element_id,list_id)
{
	ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
	//alert(status)
	//status from parent-of-parent is available
	if(status=='off')	//now make status on
	{
		if(selected_examination.indexOf(ex_id) !== -1)
		{
		//already selected, do nothing
		//selected_examination.splice(selected_examination.indexOf(ex_id),1)
		//document.getElementById(list_id).value=selected_examination
		}
		else
		{
			selected_examination.push(ex_id);
			document.getElementById(list_id).value=selected_examination
		}
	}
	if(status=='on')	//now make status of
	{
		if(selected_examination.indexOf(ex_id) !== -1)
		{
		// selected, so, remove
		selected_examination.splice(selected_examination.indexOf(ex_id),1)
		document.getElementById(list_id).value=selected_examination
		}
		else
		{
			//do nothing
			//selected_examination.push(ex_id);
			//document.getElementById(list_id).value=selected_examination
		}
	}	
	manage_all_button_for_ex_id(ex_id)
	//update_sss()		//updating at every call cause client 100% CPU usage
}


function manage_toggle_lable(me)
{
	status=me.getAttribute("data-status")
	if(status=="off")
	{
		me.innerHTML="&uarr;"
		me.setAttribute("data-status","on")

	}
	if(status=="on")
	{
		me.innerHTML="&darr;"
		me.setAttribute("data-status","off")
	}
}
									
//////////////toggle end////////////////////
function go_down_tree_to_select_all(item, index)
{
	if(item.type=='button')
	{
		//console.log(item.id)
		select_examination_by_ex_id_not_invert(item.id,'selected_examination_list')
	}
	else
	{
		item.childNodes.forEach(go_down_tree_to_select_all)
	}
	
}


function select_examination_by_ex_id_not_invert(ex_element_id,list_id)
{
	ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
	if(selected_examination.indexOf(ex_id) !== -1)
	{
		//already selected, do nothing
		//selected_examination.splice(selected_examination.indexOf(ex_id),1)
		//document.getElementById(list_id).value=selected_examination
	}
	else
	{
		selected_examination.push(ex_id);
		document.getElementById(list_id).value=selected_examination
	}
	
	manage_all_button_for_ex_id(ex_id)
	//update_sss()		//updating at every call cause client 100% CPU usage
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
	if(item.type=='button' && item.classList.contains("ex_btn"))
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
		document.getElementById(ex_element_id).setAttribute("data-status","on")
	}
	else
	{
		document.getElementById(ex_element_id).classList.remove('bg-success')
		document.getElementById(ex_element_id).classList.add('bg-warning')
		document.getElementById(ex_element_id).setAttribute("data-status","off")
	}
}


function update_sss()
{
	document.getElementById("status-window").innerHTML=''
	
	selected_examination.forEach(
									function (item,index)
									{
									//console.log("button[id$='_"+item+"']")
									//jquery
									$("button[id$='_"+item+"']").filter(".ex_btn").each(
																		function (i, el) 
																		{
																			if(i==0)		//even if examination display multiple, status only one button 
																			{
																				//console.log(el.id)
																				//bb='<button class="btn btn-sm btn-outline-info" type=button>'+el.innerHTML+'</button><br>';
																				//bb=el.innerHTML.split('<br>')[0];
																				//document.getElementById("status-window").innerHTML = document.getElementById("status-window").innerHTML+bb
//alert(document.getElementById("status-window").innerHTML+ el.getAttribute("data-examination_name"))
document.getElementById("status-window").innerHTML = document.getElementById("status-window").innerHTML + el.getAttribute("data-examination_name") +'<br>'
																			}
																		}
																	 );
									}
								)
								

}


function select_super_profile(me,list_id)
{
	ex_list=me.getAttribute('data-ex_list').split(',')
	status=me.getAttribute('data-status')
	
	//alert(ex_list[2])
	//count=ex_list.length()
	
	if(status=='off')
	{
		ex_list.forEach
		(
			function (i,el)
			{
				if(selected_examination.indexOf(i) !== -1)
				{
					selected_examination.splice(selected_examination.indexOf(i),1)
					document.getElementById(list_id).value=selected_examination
				}
				
				selected_examination.push(i);
				document.getElementById(list_id).value=selected_examination

				manage_all_button_for_ex_id(i)
			}
		)
		
		me.classList.remove('btn-outline-success')
		me.classList.add('btn-success')
		me.setAttribute('data-status','on')
	}
	else
	{
		ex_list.forEach
		(
			function (i,el)
			{
				if(selected_examination.indexOf(i) !== -1)
				{
					selected_examination.splice(selected_examination.indexOf(i),1)
					document.getElementById(list_id).value=selected_examination
				}

				manage_all_button_for_ex_id(i)
			}
		)
		
		me.classList.remove('btn-success')
		me.classList.add('btn-outline-success')
		me.setAttribute('data-status','off')
		
	}

	update_sss()
}


//////////////////////////////////////////

</script>
