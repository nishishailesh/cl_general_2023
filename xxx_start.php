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

if(isset($_POST['action']))
{
	if($_POST['action']=='set_sample_status')
	{
		xxx_update_sample_status($link,$_POST['sample_id'],$_POST['status_examination_id']);
		//insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%d %H:%M"));
	}

	if($_POST['action']=='bulk_status_change')
	{
		$list_of_unique_id=explode(',',$_POST['list_of_id']);
		foreach($list_of_unique_id as $unique_id)
		{
			insert_update_one_examination_with_result_using_unique_id($link,$unique_id,$_POST['status_change_examination_id'],strftime("%Y-%m-%d %H:%M"));
		}
	}
}

$horizontal_status_lot_size=get_config_value($link,'horizontal_status_lot_size');

echo '<style>
.monitor_grid_horizontal
{
display: grid;
grid-gap: 5px;
align-items: start;
grid-template-areas:
';
	for ($i=1;$i<=$horizontal_status_lot_size;$i++)
	{
		echo '"auto auto auto auto auto"';
	}
echo ';}

.one_cell
{
 display:grid;  
 grid-template-columns:auto auto;
}
</style>';
////////for status change display//////////////



/////////////for status display/////////////
xxx_make_unique_id_option($link);
echo '<div class="m-3"><fieldset  ><legend>Change Sample Status</legend>';
manage_bulk_status_change($link);
echo '</fieldset></div>';
echo '<div class="m-3">
	<fieldset  ><legend>Filter by Sample Status</legend>';
		filter_by_status($link);
	echo '</fieldset>';
echo '</div>';
echo '<div id=monitor>write offset(optional, for all ids), write id_range(optional, only for sample_id) and press appropriate id button</div>';


//////////////user code ends////////////////
tail();
//echo '<pre>start:post';print_r($_POST);echo '</pre>';
//echo '<pre>start:session';print_r($_SESSION);echo '</pre>';

///////////////////Functions////////////////

function manage_bulk_status_change($link)
{
$sql='select distinct priority from `sample_status` order by priority';
$result=run_query($link,$GLOBALS['database'],$sql);


	$show_offset=isset($_POST['show_offset'])?$_POST['show_offset']:0;
	$unique_id=isset($_POST['unique_id'])?$_POST['unique_id']:'sample_id';
	$id_range=isset($_POST['id_range'])?$_POST['id_range']:'';

echo '<div>';
echo '<input type=text class="d-block align-top p-1 m-1 " placeholder="scan barcode here" id=id_for_status_change onchange="update_list_of_id(this)">';
echo '<form method=post id="status_change_form" class="d-inline">';
	echo '<textarea 
					readonly 
					class="d-block w-100" 
					onfocus="document.getElementById(\'id_for_status_change\').focus()" 
					name=list_of_id name=list_of_id id=list_of_id  
					aria-multiline="true">
			</textarea>';
			//					style="minimum-height:30px;" 

	while($ar=get_single_row($result))
	{
		echo '<div class="d-inline-block align-top m-1">';
			$sql_b='select * from `sample_status` where priority=\''.$ar['priority'].'\'';
			$result_b=run_query($link,$GLOBALS['database'],$sql_b);
			while($ar_b=get_single_row($result_b))
			{	
			if($ar_b['shortcut']<1){continue;}
			echo '<div class="d-block">';
			echo '<button class="btn  w-100 btn-rounded-right p-1 m-1 btn-sm"
						style="	border:solid '.$ar_b['color'].' 3px;padding:3px;  
								border-top-right-radius: 25px; 
								border-bottom-right-radius: 25px;"
						name=status_change_examination_id value='.$ar_b['examination_id'].'>'.$ar_b['name'].'
					</button>';
			echo '</div>';
			}
		echo '</div>';
	}

	echo '<input type=hidden name=action value=bulk_status_change>';
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '<input type=hidden name=show_offset value=\''.$show_offset.'\'>';
	echo '<input type=hidden name=unique_id value=\''.$unique_id.'\'>';
	echo '<input type=hidden name=id_range value=\''.$id_range.'\'>';
 
echo '</form>';
echo '</div>';

}

function xxx_make_unique_id_option($link)
{
	$show_offset=isset($_POST['show_offset'])?$_POST['show_offset']:0;
	$id_range=isset($_POST['id_range'])?$_POST['id_range']:'';


	//id_multi_sample is not suitable box box placement, due to multiple items making sequence impossible
	$sql="SELECT * from examination
	where 
	JSON_EXTRACT(edit_specification, '$.type')='id_single_sample'  or 
	JSON_EXTRACT(edit_specification, '$.type')='id_multi_sample'";	

	//button not suitable for multi sample ID. But, such id are OK with linerar display
	//$sql="SELECT * from examination
	//where 
	//JSON_EXTRACT(edit_specification, '$.type')='id_single_sample'";
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	echo '<div class="btn-group d-block">';					
	
		echo '<form method=post>';
		
			echo '<div class="border border-success m-1 p-0 d-inline-block">
					<label class="m-0 -p-0 " for=show_offset>offset:</label> <input type=number class="m-0 p-0" id=show_offset name=show_offset step=200 value=\''.$show_offset.'\'>
			</div>';
			echo '<div class="border border-success m-1 p-0 d-inline-block">
				<label class="m-0 -p-0 ">id_range for sample_id:</label>';
				show_id_range_options($link,$extra='',$default=$id_range);
			echo '</div>';
			
			echo '<div class="border border-success m-1 p-0 d-inline-block">
				<button 
					class="btn"
					id=autoupdate_button 
					type=button 
					onclick=
							"autoupdate=autoupdate*-1; 
							if(autoupdate==1)
							{
								this.textContent=\'update-on\';callServer();
							};
							if(autoupdate==-1)
							{
								this.textContent=\'update-off\';callServer();
							}" 
							>update-on
				</button>';
			echo '</div>';		
					
			echo '<button 
				class="btn btn-outline-primary m-1 p-1 " 
				type=submit 
				name=unique_id
				value=sample_id>sample_id</button>';
					
		
			while($ar=get_single_row($result))
			{
				echo '<button 
							class="btn btn-outline-primary m-1 p-1 " 
							type=submit 
							name=unique_id
							value=\''.$ar['examination_id'].'\'> '.$ar['name'].'</button>';
			}
		

		
		echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
		echo '</form>';
	echo '</div>';

}


?>

<script>

jQuery(document).ready(
	function() 
	{
		//alert('hi');
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


/*
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
*/

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
	//post='unique_id=<?php echo isset($_POST["unique_id"])?$_POST["unique_id"]:"sample_id";?>&session_name=<?php echo $_POST["session_name"];?>&login=<?php echo $_SESSION["login"];?>&password=<?php echo $_SESSION["password"];?>&show_offset=<?php echo isset($_POST["show_offset"])?$_POST["show_offset"]:0 ?>&id_range=<?php echo isset($_POST["id_range"])?$_POST["id_range"]:''?>';


	post1='unique_id=<?php echo isset($_POST["unique_id"])?$_POST["unique_id"]:"sample_id";?>'
	post2='session_name=<?php echo $_POST["session_name"];?>'
	post3='login=<?php echo $_SESSION["login"];?>'
	post4='password=<?php echo $_SESSION["password"];?>'
	post5='show_offset=<?php echo isset($_POST["show_offset"])?$_POST["show_offset"]:0; ?>'
	post6='id_range=<?php echo isset($_POST["id_range"])?$_POST["id_range"]:'';?>'
	post7='filter_examination_id=<?php echo isset($_POST["filter_examination_id"])?$_POST["filter_examination_id"]:0; ?>'

	post=post1+'&'+post2+'&'+post3+'&'+post4+'&'+post5+'&'+post6+'&'+post7






	xhttp.open('POST', 'xxx_monitor.php', true);
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
