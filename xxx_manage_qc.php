<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';
	

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);
$qc_sql="select * from examination  where sample_requirement!='None' order by request_route,name";
	echo '<div class="two_column_one_by_two">';
		echo '<div>';
			xxx_get_examination_data_for_qc($link,$qc_sql);


			echo '<div>
					<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
					echo '	<div id="status-window" 
								class="border border-success">
							</div>
					<span class="badge badge-primary"  data-toggle="collapse" data-target="#select-window">Select Examinations</span>';
					echo '	<div id="select-window" class="border border-success">
								<input type=text id=my_search_text  onchange="my_search_test()">
								<button type=button id=my_search onclick="my_search_test()">search</button>
								<div id=my_search_result></div>
							</div>						
			</div>';
			
		echo '</div>';
		echo '<div>';
			get_qc_search_conditions($link,1048,array('3001','9000'),array('1048','10006','sample_id'));
		echo '</div>';
	echo '</div>';

//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//$sql_sid="select 
//				pr.result, r.sample_id from result where examination_id=1048 limit 100";

$sql_sid='			
select r.sample_id,
       r.examination_id test_id ,e.name test_name ,r.result test_result_not_imp,       
       pr.examination_id primary_test_id, pr.result primary_test_result,
       qc_id.sample_id qc_id_sample_id,qc_id.id qc_id_id,
       ur.examination_id unique_ex_id ,ur.result unique_result_not_imp

from result r, result ur, examination e, primary_result pr, qc_id

where
     r.sample_id=pr.sample_id and
     ur.sample_id=r.sample_id and
     qc_id.sample_id=r.sample_id and

     r.examination_id=pr.examination_id and
     e.examination_id=r.examination_id and

     ur.examination_id=1048
';

view_sql_result_as_table($link,$sql_sid,$show_hide='yes');

/*
$result=run_query($link,$GLOBALS['database'],$sql_sid);
while($ar=get_single_row($result))
{
	//$data=get_primary_result_of_sample_in_array($link,$ar['sample_id']);
	$data=get_primary_result_rows_of_sample_in_array($link,$ar['sample_id']);
	echo '<pre>';print_r($data);echo '</pre>';
}
*/

//////////////Functions///////////////////////

function xxx_get_examination_data_for_qc($link,$sql)
{
	echo '<button class="btn btn-success " data-status=off type=button id=ex_all_expand onclick="expand_all(this)"><h4>&darr;&darr;&darr;</h4></button>';
	//echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
	$tree=xxx_make_examination_tree($link,$sql,'request_route');
	//tree_to_div($tree);
	echo '<ul id="get_examination_data" style="list-style-type: none">';
	xxx_tree_to_panel($link,$tree,'',' collapse ');
	echo '</ul>';
	//xxxxxx
	//echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';
	//tree_to_table($link,$tree,'',' show ');
}



function get_qc_search_conditions($link,$examination_id,$search_list_of_examination_id,$range_search_list_of_examination_id)
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
		
	echo '<form method=post>';
	echo '<input type=hidden size=13 id=from name=examination_id value=\''.$examination_id.'\' class="form-control text-danger"\>';

	//echo '<div class="basic_form">';
	//	echo '<div>ID Range</div>';
	//	show_id_range_options($link);
	//echo '</div>';
	
	foreach($search_list_of_examination_id as $examination_id)
	{
		get_one_field_for_search($link,$examination_id);
	}

	foreach($range_search_list_of_examination_id as $examination_id)
	{
		if($examination_id=='sample_id')
		{
			get_sample_id_for_range_search($link);
		}
		else
		{
			get_one_field_for_range_search($link,$examination_id);
		}
	}
	
	echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_summary>View</button>';
	echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';

	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';

}



/*

Array
(
    [examination_id] => 1048
    [chk^3001] => on
    [__ex__3001] => QC/0/BlankW
    [___ex___3001] => QC/0/BlankW
    [chk^9000] => on
    [__ex__9000] => XL_1000
    [chk^1048] => on
    [__from__1048] => 12
    [__ex__1048] => 
    [__to__1048] => 12
    [chk^10006] => on
    [__from__10006] => 2023-08-08T02:05
    [__ex__10006] => 
    [__to__10006] => 2023-08-09T02:05
    [id_range] => 1000000-1999999
    [chk^sample_id] => on
    [__from__sample_id] => 34
    [__ex__sample_id] => 
    [__to__sample_id] => 34
    [action] => view_dbid_summary
    [selected_examination_list] => 5029,5001
    [session_name] => sn_1428411176
)


*/


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
