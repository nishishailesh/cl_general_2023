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
			//$sql="select * from examination where request_route like '%".$tok[2]."%'";
			$sql="select * from examination order by request_route,name";
			//echo $sql;
			
			get_data_specific($link,$sql,$tok[1]);
		}

		elseif($_POST['action']=='insert')
		{
			xx_save_insert_specific($link,$_POST['selected_examination_list']);
		}

	echo '</div>';
	echo '<div >
				<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
				echo '	<div id="status-window" class="border border-success">status:</div>
	</div>';

echo '</div>';

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

	xxx_get_examination_data($link,$sql,'id',$multi='no',$size=10);
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	


	echo '</form>';		
	
}


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
																				bb='<button class="btn btn-sm btn-outline-info" type=button>'+el.innerHTML+'</button><br>';
																				document.getElementById("status-window").innerHTML = document.getElementById("status-window").innerHTML+bb
																			}
																		}
																	 );
									}
								)	
}

//////////////////////////////////////////

</script>
