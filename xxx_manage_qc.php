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


if($_POST['action']=='find_qc_data')
{
	prepare_qc_data_from_search_condition($link,$_POST);
}
//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

/*
Array
(   [examination_id] => 1048
    [__ex__3001] => 
    [___ex___3001] => 
    [__ex__9000] => 
    [__from__1048] => 
    [__ex__1048] => 
    [__to__1048] => 
    [__from__10006] => 
    [__ex__10006] => 
    [__to__10006] => 
    [id_range] => 1000000-1999999
    [__from__sample_id] => 
    [__ex__sample_id] => 
    [__to__sample_id] => 
    [action] => find_qc_data
    [selected_examination_list] => 
    [session_name] => sn_1468638343 )
Array(
    [examination_id] => 1048
    
    [chk^3001] => on
    [__ex__3001] => QC/0/BlankW
    [___ex___3001] => QC/0/BlankW
    
    [chk^9000] => on
    [__ex__9000] => XL_640
    
    [chk^1048] => on
    [__from__1048] => 223
    [__ex__1048] => 
    [__to__1048] => 2333
    
    [chk^10006] => on
    [__from__10006] => 2023-08-17T22:18
    [__ex__10006] => 
    [__to__10006] => 2023-08-17T22:18
    
    [id_range] => 1000000-1999999
    
    [chk^sample_id] => on
    [__from__sample_id] => 122
    [__ex__sample_id] => 
    [__to__sample_id] => 333
    
    [action] => find_qc_data
    [selected_examination_list] => 5009,5010
    [session_name] => sn_1468638343)
*/

function prepare_qc_data_from_search_condition($link,$post)
{
	//echo '<pre>';print_r($post);echo '</pre>';
	
	$ex_list_csv=$post['selected_examination_list'];
	//echo 'reporting requested for..'.$ex_list_csv.'<br>';

	
	$sql='';
	foreach($post as $post_key => $post_val)
	{
		if(substr($post_key,0,4)=='chk^')
		{
			//echo '----------------<br>a search condition detected...<br>';
			$search_examination_id=substr($post_key,4);
			//echo 'examination_id for search is..'.$search_examination_id.'<br>';
			if(isset($post['__from__'.$search_examination_id]))
			{
				//echo 'It is a range search ..<br>';
				$from=$post['__from__'.$search_examination_id];
				$to=$post['__to__'.$search_examination_id];
				//echo 'required range is from '.$from.' to '.$to.'..<br>';
				
				$sql=$sql . '(select sample_id from result where examination_id=\''.$search_examination_id.'\' and result between \''.$from.'\' and between \''.$to.'\' ) intersect ';
			}
			else
			{
				$required_value=$post['__ex__'.$search_examination_id];
				//echo 'It is a point range search ..<br>';
				//echo 'required value is '.$required_value.'.. <br>';
				$sql=$sql . '(select sample_id from result where examination_id=\''.$search_examination_id.'\' and lower(result) like \'%'.strtolower($required_value).'%\'  ) intersect ';
			}
		}
	}
	
	if(strlen($sql)>0)
	{
		$sql=substr($sql,0,-10);
		//echo $sql.'<br>';

		if(strlen($ex_list_csv)>0)
		{
			$root_sql='select * from primary_result where examination_id in ('.$ex_list_csv.') and sample_id in ('.$sql.')';
		}
		else
		{
			$root_sql='select * from primary_result where sample_id in ('.$sql.')';		
		}

	}
	else
	{
		if(strlen($ex_list_csv)>0)
		{
			$root_sql='select * from primary_result where examination_id in ('.$ex_list_csv.') order by sample_id desc limit 200';
		}
		else
		{
			$root_sql='select * from primary_result  order by sample_id desc limit 200';
		}
	}
	

	echo $root_sql.'<br>';
	view_sql_result_as_table($link,$root_sql,$show_hide='yes');
}



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
	
	echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=find_qc_data>Search</button>';
	echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';

	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';

}
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
