<?php
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<div>';
main_menu($link); 
$user=get_user_info($link,$_SESSION['login']);
//print_r($user);
$auth=explode(',',$user['authorization']);


echo '<div class="m-3"><fieldset  ><legend>Scan/Write single ID in box and [ Add to / remove from ] list. When Ready, Print</legend>';
print_selected_id($link);
echo '</fieldset></div>';

//////////////user code ends////////////////
tail();
//echo '<pre>start:post';print_r($_POST);echo '</pre>';
//echo '<pre>start:session';print_r($_SESSION);echo '</pre>';

///////////////////Functions////////////////
function print_selected_id($link)
{
	echo '<div>';
	echo '<input type=text class="d-block align-top p-1 m-1 " placeholder="scan barcode here" id=id_for_status_change onchange="update_list_of_id(this)">';
	echo '<form method=post id="status_change_form" class="d-inline" >';
		echo '<textarea 
						readonly 
						class="d-block w-100" 
						onfocus="document.getElementById(\'id_for_status_change\').focus()" 
						name=list_of_id name=list_of_id id=list_of_id  
						aria-multiline="true">
				</textarea>';

		echo '<button class="btn  btn-info p-2 m-2" type=button name=action value="Add to List">[Add to] / [Remove From] list</button>';
		echo '<button class="btn  btn-info p-2 m-2" type=submit formaction=xxx_print_multiple.php formtarget=_blank name=action value="view_pdf">View PDF</button>';
		echo '<button class="btn  btn-info p-2 m-2" type=submit formaction=xxx_print_multiple_change_status.php formtarget=_blank name=action value="sample_printed">Physically Printed</button>';
		echo '<button class="btn  btn-info p-2 m-2" type=submit formaction=xxx_print_multiple_change_status.php formtarget=_blank name=action value="sample_print_delivered">Print Delivered</button>';
		echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '</form>';
	echo '</div>';
}

function print_selected_range_of_id($link)
{
	echo '<div>';
	echo '<input type=text class="d-block align-top p-1 m-1 " placeholder="scan barcode here" id=id_for_status_change onchange="update_list_of_id(this)">';
	echo '<form method=post id="status_change_form" class="d-inline" action=xxx_print_multiple.php target=_blank>';
		echo '<textarea 
						readonly 
						class="d-block w-100" 
						onfocus="document.getElementById(\'id_for_status_change\').focus()" 
						name=list_of_id name=list_of_id id=list_of_id  
						aria-multiline="true">
				</textarea>';

		echo '<input class="btn btn-sm btn-info" type=submit name=action value=print_sample_id>';
		echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '</form>';
	echo '</div>';
}

?>

<script>

jQuery(document).ready(
	function() 
	{
		callServer()
	}
);

list_of_id_to_update=[]
autoupdate=1
timeOutVar=false
 
function update_list_of_id(me)
{
	//update variable
	if(list_of_id_to_update.includes(me.value))
	{
		index=list_of_id_to_update.indexOf(me.value)
		//alert(" before removal:: index:"+index+" index value: "+list_of_id_to_update[index]+" list:"+list_of_id_to_update)
		list_of_id_to_update.splice(index,1)
		//alert(" before removal:: index:"+index+" index value: "+list_of_id_to_update[index]+" list:"+list_of_id_to_update)
	}
	else
	{
		//alert("before addition:: list:"+list_of_id_to_update)
		list_of_id_to_update.push(me.value);
		//alert("before addition:: list:"+list_of_id_to_update)
	}
	
	//display selected
	document.getElementById('list_of_id').value=list_of_id_to_update.join()
	
	
	//uncheck all
	x=document.getElementsByClassName("status_check_box")
	for (i=0;i<x.length;i++){x[i].checked=false}
	
	//check if in list
	for(i=0;i<list_of_id_to_update.length;i++)
	{
		if(document.getElementById('status_check_box^'+list_of_id_to_update[i]))
		{
			document.getElementById('status_check_box^'+list_of_id_to_update[i]).checked=true
		}
	}
	
	//clear textbox
	if(document.getElementById('id_for_status_change')==me)
	{
		me.value=''
	}

}

function callServer()
{
	 x='<?php echo isset($_POST["unique_id"])?$_POST["unique_id"]:""; ?>'
	 if(x.length==0){return;}
	//console.log( new Date() );
	//alert(new Date())
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (this.readyState == 4 && this.status == 200) 
		{
			document.getElementById('monitor').innerHTML = xhttp.responseText;
		}
	};
	post='unique_id=<?php echo isset($_POST["unique_id"])?$_POST["unique_id"]:"sample_id";?>&session_name=<?php echo $_POST["session_name"];?>&login=<?php echo $_SESSION["login"];?>&password=<?php echo $_SESSION["password"];?>&show_offset=<?php echo isset($_POST["show_offset"])?$_POST["show_offset"]:0 ?>&id_range=<?php echo isset($_POST["id_range"])?$_POST["id_range"]:''?>';
	xhttp.open('POST', 'xxx_monitor_button.php', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(post);	
	if(autoupdate==1)
	{
		 timeOutVar=setTimeout(callServer, 10000);
	}
	else if(autoupdate==-1)
	{
		clearTimeout(timeOutVar);
	}
}

</script>
<style>
fieldset {
  border:1px solid;
}

legend {
  width:auto;
  margin-left: 10%;
}
</style>
