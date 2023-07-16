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
print_r($tok);

if($tok[0]=='newww_general')
{
	echo '<div class="two_column_nine">';
		echo '<div>';
			if(strlen($tok[2])>0)
			{
				$tok=explode("|",$_POST['action']);

				$rlike=str_replace(',','|',$tok[1]);
				//echo $rlike;
				$sql="select * from examination where request_route rlike '".$rlike."' order by request_route,name";
				echo $sql;
			}
			else
			{
				$sql="select * from examination order by request_route,name";
			}
			//echo $sql;
			
			get_data_specific($link,$sql,$tok[1],$tok[3]);
		echo '</div>';
		
		echo '<div>
					<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
					echo '	<div id="status-window" 
								class="border border-success">status:
							</div>
					<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Select Examinations</span>';
					echo '	<div id="status-window" class="border border-success">
								<input type=text id=my_search_text onchange="my_search_test()">
								<button type=button id=my_search onclick="my_search_test()">search</button>
								<div id=my_search_result></div>
							</div>						
		</div>';

	echo '</div>';			
}


elseif($_POST['action']=='insert')
{
	$all_samples=xxx_save_insert_specific($link,$_POST['selected_examination_list']);
	foreach ($all_samples as $sample_id)
	{
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$sample_id);
		echo '</div>';
		
			xxx_view_sample($link,$sample_id);
	}
}



if(isset($_POST['action']))
{
	if($_POST['action']=='set_sample_status')
	{
		insert_update_one_examination_with_result($link,$_POST['sample_id'],$_POST['status_examination_id'],strftime("%Y-%m-%d %H:%M"));
		echo '<div class="d-inline-block"">';
		xxx_manage_sample_status_change_horizontal($link,$_POST['sample_id']);
		echo '</div>';
		xxx_view_sample($link,$_POST['sample_id']);
	}
}



function get_data_specific($link,$sql,$ex_list,$default_value_str)
{
	$ex_defaults=explode(",",$default_value_str);
	$ex_default_array=array();
	foreach($ex_defaults as $ex_default)
	{
		$temp=explode('^',$ex_default);
		$ex_default_array[$temp[0]]=$temp[1];
	}

	print_r($ex_default_array);
	
	echo '<form method=post class="bg-light jumbotron" enctype="multipart/form-data">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	
	echo '<div class="two_column_one_by_two">';
		echo '<div class="border">';
			//xxx_get_basic_specific();

			$ex_array=array_filter(explode(",",$ex_list));
			//print_r($ex_array);xr
			foreach($ex_array as $ex_id)
			{
				if(array_key_exists($ex_id,$ex_default_array)){$default_value=$ex_default_array[$ex_id];}else{$default_value='';}
				//echo '<h1>'.$default_value.'</h1>';
				get_one_field_for_insert($link,$ex_id,$default_value);
			}
		echo '</div>';
		echo '<div>';
	
			xxx_get_examination_data($link,$sql,'id',$multi='no',$size=10);
		echo '</div>';
	echo '</div>';
	
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	echo '</form>';
}

echo '<pre>';print_r($_POST);echo '</pre>';
//////////////user code ends////////////////
tail();
?>
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


</script>
