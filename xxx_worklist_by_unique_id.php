<?php
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '	<link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<div>';
main_menu($link); 
$user=get_user_info($link,$_SESSION['login']);
//print_r($user);
$auth=explode(',',$user['authorization']);

$request_sql="select * from examination order by request_route,name";
echo '<h3 class="bg-warning">select examinations for worklist</h3>';
echo '<div  class="two_column_two_by_one">';
			echo '
			<div>
					<span class="badge badge-primary"  data-toggle="collapse" data-target="#select-window">Select Examinations</span>';
					echo '
					<div id="select-window" class="border border-success">
								<input type=text id=my_search_text  onchange="my_search_test()">
								<button type=button class="btn btn-info btn-sm" id=my_search onclick="my_search_test()">Search Examination</button>
								<div id=my_search_result ></div>
								<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>
								<div id="status-window" class="border border-success"></div>
			</div>';
			echo '
			</div>';
					echo '<form method=post action=xxx_display_worklist_by_unique_id_result.php>';
						echo '
							<div>offset (number of last results to skip)</div><input type=number name=offset value=0>
							<div>limit (number of last results to include)</div><input type=number name=limit value=100>
							<button class="btn btn-danger btn-sm" name=action value=search>Make Worklist</button>
							<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
							xxx_get_data_specific_for_search($link,$request_sql);
					echo '</form>
			</div>';
echo '</div>';


function xxx_get_data_specific_for_search($link,$sql)
{
	
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
		echo '<div>';
			xxx_get_examination_data($link,$sql);
		echo '</div>';
}

?>
<script>
function my_search_test()
{
	search_text=document.getElementById("my_search_text").value;
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
