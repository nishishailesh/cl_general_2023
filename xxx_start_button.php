<?php
require_once 'base/verify_login.php';
	////////User code below/////////////////////
require_once 'project_common.php';
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<div>';
main_menu($link); 
$user=get_user_info($link,$_SESSION['login']);
$auth=explode(',',$user['authorization']);

if(isset($_POST['action']))
{
	if($_POST['action']=='set_sample_status')
	{
		insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%d %H:%M"));
	}
}


echo '<style>
.monitor_grid
{
display: grid;
grid-template-areas:
';
	for ($i=1;$i<=200;$i++)
	{
		if($i%10==1 && ($i/10)%2==0){echo '\'';}	
		echo 'a'.str_pad($i,3,0,STR_PAD_LEFT).' ';
		if($i%10==0 && ($i/10)%2==0){echo '\' ';}
	}
echo ';}

.one_cell
{
 display:grid;  
 grid-template-columns:auto auto;
}
</style>';


$sql='select distinct priority from `sample_status` order by priority';
$result=run_query($link,$GLOBALS['database'],$sql);

echo '<div>';
while($ar=get_single_row($result))
{
	echo '<div class="d-inline-block align-top m-1">';
		$sql_b='select * from `sample_status` where priority=\''.$ar['priority'].'\'';
		$result_b=run_query($link,$GLOBALS['database'],$sql_b);
		while($ar_b=get_single_row($result_b))
		{	
		echo '<div class="d-block">';
		echo '<button class="btn  w-100 btn-rounded-right p-1 m-1 btn-sm"
					style="	border:solid '.$ar_b['color'].' 3px;padding:3px;  
							border-top-right-radius: 25px; 
							border-bottom-right-radius: 25px;">'.$ar_b['name'].'
				</button>';
		echo '</div>';
		}
	echo '</div>';
}
	echo '<div class="d-inline-block align-top m-1">';
	get_id_to_change_status();
	echo '</div>';

echo '</div>';

xxx_make_unique_id_option($link);

echo '<div id=monitor>write offset(optional, for all ids), write id_range(optional, only for sample_id) and press appropriate id button</div>';

//////////////user code ends////////////////
tail();
echo '<pre>start:post';print_r($_POST);echo '</pre>';
//echo '<pre>start:session';print_r($_SESSION);echo '</pre>';

///////////////////Functions////////////////

function xxx_make_unique_id_option($link)
{
	$show_offset=isset($_POST['show_offset'])?$_POST['show_offset']:0;
	$id_range=isset($_POST['id_range'])?$_POST['id_range']:'';
	
	$sql="SELECT * from examination
	where 
	JSON_EXTRACT(edit_specification, '$.type')='id_single_sample'  or 
	JSON_EXTRACT(edit_specification, '$.type')='id_multi_sample'";
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	echo '<div class="btn-group d-block">';					
	
	echo '<form method=post>';
	
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
	echo '</div>';
	
	echo '<div class="border border-success m-1 p-0 d-inline-block">
			<label class="m-0 -p-0 " for=show_offset>offset:</label> <input type=number class="m-0 p-0" id=show_offset name=show_offset step=200 value=\''.$show_offset.'\'>
	</div>';
	
	echo '<div class="border border-success m-1 p-0 d-inline-block">
		<label class="m-0 -p-0 ">id_range for sample_id:</label>';
	show_id_range_options($link,$extra='',$default=$id_range);
	echo '</div>';
	
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '</form>';

}



function get_id_to_change_status()
{
	//echo 'id to change status for';
	echo '<input type=text id=id_for_status_change onchange="update_list_of_id(this)">';
	echo '<div name=list_of_id id=list_of_id contenteditable="true" style="minimum-height:30px;" aria-multiline="true"></div>';
}

?>

<script>

jQuery(document).ready(
	function() 
	{
		//console.log( "ready!" );
		start();
	}
);

function update_list_of_id(me)
{
	document.getElementById('list_of_id').innerHTML=document.getElementById('list_of_id').innerHTML+me.value+'<br>';
	me.value=''
}



function start()
{
	setTimeout(callServer, 0);
}

function callServer()
{
	//console.log( new Date() );
	//alert(new Date())
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (this.readyState == 4 && this.status == 200) 
		{
			document.getElementById('monitor').innerHTML = xhttp.responseText;
		}
	};
	post='unique_id=<?php echo $_POST["unique_id"];?>&session_name=<?php echo $_POST["session_name"];?>&login=<?php echo $_SESSION["login"];?>&password=<?php echo $_SESSION["password"];?>&show_offset=<?php echo $_POST["show_offset"];?>&id_range=<?php echo $_POST["id_range"];?>';
	xhttp.open('POST', 'xxx_monitor_button.php', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(post);	
	setTimeout(callServer, 10000);
}

</script>
