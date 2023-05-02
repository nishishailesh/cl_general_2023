<?php
require_once 'base/verify_login.php';
	////////User code below/////////////////////
require_once 'project_common.php';
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<div>';
main_menu($link); 
$user=get_user_info($link,$_SESSION['login']);
$auth=explode(',',$user['authorization']);



$sql='select distinct priority from `sample_status` order by priority';
$result=run_query($link,$GLOBALS['database'],$sql);

echo '<div>';
$prev=-1;
while($ar=get_single_row($result))
{
	echo '<div class="d-inline-block align-top m-1">';
		$sql_b='select * from `sample_status` where priority=\''.$ar['priority'].'\'';
		$result_b=run_query($link,$GLOBALS['database'],$sql_b);
		while($ar_b=get_single_row($result_b))
		{	
		echo '<div class="d-block">';
		echo '<button class="btn  w-100 btn-primary btn-rounded-right p-1 m-1 btn-sm"
					style="	border:solid black 1px;padding:3px;  
							border-top-right-radius: 25px; 
							border-bottom-right-radius: 25px;">'.$ar_b['name'].'
				</button>';
		echo '</div>';
		}
	echo '</div>';

}
echo '</div>';

xxx_make_unique_id_option($link);

echo '<div id=monitor>Wait for update of recent sample status</div>';

//////////////user code ends////////////////
tail();
echo '<pre>start:post';print_r($_POST);echo '</pre>';
//echo '<pre>start:session';print_r($_SESSION);echo '</pre>';

///////////////////Functions////////////////

function xxx_make_unique_id_option($link)
{
	$sql="SELECT * from examination
	where 
	JSON_EXTRACT(edit_specification, '$.type')='id_single_sample'  or 
	JSON_EXTRACT(edit_specification, '$.type')='id_multi_sample'";
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	//echo '<button 
				//class="btn btn-outline-primary m-0 p-0 " 
				//formaction=viewww_database_id_from_to.php 
				//type=submit 
				//name=action
				//value=\'get_dbids|sample_id\'>by sample id</button>';
	
	echo '<div class="btn-group d-block">';					
	
	echo '<form method=post>';
	while($ar=get_single_row($result))
	{
		echo '<button 
					class="btn btn-outline-primary m-1 p-1 " 
					type=submit 
					name=unique_id
					value=\''.$ar['examination_id'].'\'> '.$ar['name'].'</button>';
	}
	echo '</div>';
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '</form>';

}

?>

<script>

jQuery(document).ready(
	function() 
	{
		console.log( "ready!" );
		start();
		show_offset=0;
	}
);


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
	post='unique_id=<?php echo $_POST["unique_id"];?>&session_name=<?php echo $_POST["session_name"];?>&login=<?php echo $_SESSION["login"];?>&password=<?php echo $_SESSION["password"];?>&show_offset='+show_offset;
	xhttp.open('POST', 'xxx_monitor.php', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(post);	
	setTimeout(callServer, 10000);
}

function manage_offset(math_sign)
{
	if(math_sign=='plus')
	{
		show_offset=show_offset+100;	
	}
	if(math_sign=='minus')
	{
		show_offset=show_offset-100;	
	}
	if(math_sign=='zero')
	{
		show_offset=0;	
	}	
	
	document.getElementById('current_offset').innerHTML=show_offset;
}
</script>
