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
		//print_r($tok);

		if($tok[0]=='newww_general')
		{
			echo '<div class="two_column_nine">';
				echo '<div>';
					if(strlen($tok[2])>0)
					{
						$rlike=str_replace(',','|',$tok[2]);
						$sql="select * from examination where request_route rlike '".$rlike."' order by request_route,name";
						//echo $sql;
					}
					else
					{
						$sql="select * from examination order by request_route,name";
					}
					//echo $sql;
					
					get_data_specific($link,$sql,$tok[1]);
				echo '</div>';
				
				echo '<div>
							<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
							echo '	<div id="status-window" 
										class="border border-success">status:
									</div>
							<span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Select Examinations</span>';
							echo '	<div id="status-window" class="border border-success">
										<input type=text id=my_search_text>
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
					showww_sid_button_release_status($link,$sample_id,'');
					xxx_view_sample($link,$sample_id);
			}
		}

	

//x_get_examination_data($link,$sql='select examination_id ,name as description from examination order by description ','examination_id',$multi='no',$size=8);

function get_data_specific($link,$sql,$ex_list)
{
	
	echo '<form method=post class="bg-light jumbotron" enctype="multipart/form-data">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	
	echo '<div class="two_column_one_by_two">';
		echo '<div class="border">';
			xx_get_basic_specific();
	
			$ex_array=array_filter(explode(",",$ex_list));
			//print_r($ex_array);xr
			foreach($ex_array as $ex_id)
			{
				get_one_field_for_insert($link,$ex_id);
			}
		echo '</div>';
		echo '<div>';
	
			//echo '<button class="btn btn-sm btn-outline-success " type=button id=my_lft onclick="select_super_profile(this,\'selected_examination_list\') " data-status="off" data-ex_list="1002,1031,1032,1034,5001">My LFT</button>';
			xxx_get_examination_data($link,$sql,'id',$multi='no',$size=10);
		echo '</div>';
	echo '</div>';
	
	echo '<button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button>';
	echo '</form>';
}

//echo '<pre>';print_r($_POST);echo '</pre>';
//////////////user code ends////////////////
tail();
?>

<script>
function my_search_test()
{
	search_text=document.getElementById("my_search_text").value;
	//alert("search="+search_text)

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
