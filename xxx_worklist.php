<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

/////Note////
//it is not by mrd
//it is by databaase ID
main_menu($link);
echo '<h3>Search Samples</h3>';

$tok=explode("|",$_POST['action']);

if($tok[0]=='get_dbids')
{
	$sql="select * from examination order by request_route,name";
	echo '<div class="two_column">';
		echo '<div>';
				xxx_get_examination_data_for_worklist($link,$sql);
				echo '
				<div>
						<div id="select-window" class="border border-success">
									<input type=text id=my_search_text  onchange="my_search_test()">
									<button type=button class="btn btn-info btn-sm" id=my_search onclick="my_search_test()">Search Examination</button>
									<div id=my_search_result ></div>
									<div id="status-window" class="border border-success"></div>
						</div>';
				echo '</div>';
		echo '</div>';
				get_dbid($link,$tok[1],explode(',',$tok[2]),explode(',',$tok[3]));
	echo '</div>';
}

//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_dbid($link,$examination_id,$search_list_of_examination_id,$range_search_list_of_examination_id)
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
		
	echo '<form method=post action=xxx_worklist_view.php>';
	echo '<input type=hidden size=13 id=from name=examination_id value=\''.$examination_id.'\' class="form-control text-danger"\>';

	//echo '<div class="basic_form">';
	//	echo '<div>ID Range</div>';
	//	show_id_range_options($link);
	//echo '</div>';
	
	foreach(array_filter($search_list_of_examination_id) as $examination_id)
	{
		get_one_field_for_search($link,$examination_id);
	}

	foreach($range_search_list_of_examination_id as $examination_id)
	{
		if($examination_id=='sample_id')
		{
			//$max_sid=find_max_any_id($link,'sample_id');
			//get_sample_id_for_range_search($link,$max_sid-100,$max_sid);
			get_sample_id_for_range_search($link);		//bacuase sample_id have choice for slots of id range
		}
		else
		{
				$examination_details=get_one_examination_details($link,$examination_id);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				if(in_array($type,['id_single_sample','id_multi_sample']))
				{
					$max_sid=find_max_any_id($link,$examination_id);
					get_one_field_for_range_search($link,$examination_id,$max_sid-100,$max_sid);
				}
				else
				{
					get_one_field_for_range_search($link,$examination_id);
				}
				
		}
	}
	
	echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=show_worklist>View</button>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<input type=text readonly name=selected_examination_list id=selected_examination_list>';		//gets data from xxx_get_examination_data_for_worklist($link,$sql)
	echo '</form>';

}


function xxx_get_examination_data_for_worklist($link,$sql)
{
	echo '<button class="btn btn-success " data-status=off type=button id=ex_all_expand onclick="expand_all(this)"><h4>&darr;&darr;&darr;</h4></button>';
	//echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
	$tree=xxx_make_examination_tree($link,$sql,'request_route');
	//tree_to_div($tree);
	echo '<ul id="get_examination_data" style="list-style-type: none">';
	xxx_tree_to_panel($link,$tree,'',' collapse ');
	echo '</ul>';
	//xxxxxx
	//commented below. This field moved to form  in get_dbid()
	//echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';
	//tree_to_table($link,$tree,'',' show ');
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
