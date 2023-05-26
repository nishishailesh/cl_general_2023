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
	get_dbid($link,$tok[1],explode(',',$tok[2]),explode(',',$tok[3]));
}

//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

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
		
	echo '<form method=post action=viewww_from_to_opd_for_unique_id.php>';
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
	
	echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_summary>View (Summary)</button>';
	//echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_detail>View (Detail)</button>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';

}

function get_one_field_for_search($link,$examination_id)
{
	$ex_data=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($ex_data['edit_specification'],true);
	$accr_status=isset($edit_specification['accr_status'])?$edit_specification['accr_status']:'';


	//echo 'x';print_r($ex_data);echo 'x';
	if(!is_array($ex_data)){return;}
	$ex_name=$ex_data['name'];

		echo '<div class="basic_form">';
			echo '<div class="d-inline p-2">';
			echo '<button type=button formtarget=_blank class="btn btn-sm btn-info d-inline-block w-75" onclick="my_view_table(\''.$ex_name.'\')">'.$ex_name.'</button>';
				echo '<input class="float-right d-inline-block w-25" name=\'chk^'.$examination_id.'\' type=checkbox>';
			echo '</div>';
			echo '<div class="d-inline-block">';
				//get_one_field_for_insert_no_readonly($link,$examination_id);
				echo '		<input type=text size=13 id=from name=\'__ex__'.$examination_id.'\' class="form-control text-danger"\>';

			echo '</div>';
		echo '</div>';
}

function get_one_field_for_range_search($link,$examination_id)
{
	$ex_data=get_one_examination_details($link,$examination_id);
	//echo 'x';print_r($ex_data);echo 'x';
	if(!is_array($ex_data)){return;}
	$ex_name=$ex_data['name'];


	echo '<fieldset ><legend>'.$ex_name.'</legend>';

	echo '<div class="basic_form">';	
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="from">From '.$ex_name.'</label>';
			echo '<input class="float-right" name=\'chk^'.$examination_id.'\' type=checkbox>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=from  	name=\'__from__'.$examination_id.'\' 	class="form-control text-danger"\>';
			echo '<input type=hidden 					name=\'__ex__'.$examination_id.'\' 		value=\'\'>';

			//get_one_field_for_insert_no_readonly($link,$examination_id);
		echo '</div>';		
	echo '</div>';		
		
	echo '<div class="basic_form">';	
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="to">To '.$ex_name.'</label>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=from  	name=\'__to__'.$examination_id.'\' 		class="form-control text-danger"\>';
			//echo '<input type=hidden 					name=\'__ex__'.$examination_id.'\' 		value=\'\'>';
		echo '</div>';		
	echo '</div>';
	echo '</fieldset>';						
}


function get_sample_id_for_range_search($link)
{
	$ex_name='sample_id';


	echo '<fieldset ><legend>'.$ex_name.'</legend>';

		echo '<div class="basic_form">';
		echo '<p class="my_label text-danger" >Select sample ID range</p>';	
		show_id_range_options($link);
		echo '</div>';
		
	echo '<div class="basic_form">';	
			echo '<div class="d-inline p-2">';
				echo '	<label class="my_label text-danger" for="from">From '.$ex_name.'</label>';
				echo '<input class="float-right" name=\'chk^sample_id\' type=checkbox>';
			echo '</div>';
		
			echo '<div class="d-inline p-2">';
				echo '		<input type=text size=13 id=from  	name=\'__from__sample_id\'	class="form-control text-danger"\>';
				echo '<input type=hidden 					name=\'__ex__sample_id\'		value=\'\'>';
		echo '</div>';		
	echo '</div>';		
		
	echo '<div class="basic_form">';	
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="to">To '.$ex_name.'</label>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=from  	name=\'__to__sample_id\' 		class="form-control text-danger"\>';
		echo '</div>';		
	echo '</div>';
	echo '</fieldset>';						
}



function get_one_field_for_insert_no_readonly($link,$examination_id)
{
	$examination_details=get_one_examination_details($link,$examination_id);
	if($examination_details===null || count($examination_details)<1){return;}
	//echo 'yyy';
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){$edit_specification=array();}

		$result='';

	$type=isset($edit_specification['type'])?$edit_specification['type']:'text';//echo '<h4>'.$type.'</h4>';
	//$readonly=isset($edit_specification['readonly'])?$edit_specification['readonly']:'';
	$readonly='';
	$help=isset($edit_specification['help'])?$edit_specification['help']:'';
	$pattern=isset($edit_specification['pattern'])?$edit_specification['pattern']:'';
	$required=isset($edit_specification['required'])?$edit_specification['required']:'';
	$placeholder=isset($edit_specification['placeholder'])?$edit_specification['placeholder']:'';
	$minlength=isset($edit_specification['minlength'])?$edit_specification['minlength']:'';
	$zoom=isset($edit_specification['zoom'])?$edit_specification['zoom']:'';
	
	$element_id='r_id_'.$examination_id;


	if($type=='yesno')
	{
				//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';			////
			echo '<div class="m-0 p-0 no-gutters">';
					echo '
							<select 
							
							id="'.$element_id.'" 
								name="__ex__'.$examination_id.'" 
								class="form-control btn btn-info mb-1"
								type=button
								value=no
								><option>no</option><option>yes</option></select>';
			echo '</div>';
			echo '<p class="help">'.nl2br(htmlspecialchars($help)).'</p>';	
		echo '</div>';
	}
	else if($type=='select')
	{
		$option=isset($edit_specification['option'])?explode(',',$edit_specification['option']):array();
		$option_html='';
		
		foreach($option as $v)
		{
				$option_html=$option_html.'<option>'.$v.'</option>';
		}
		
				//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';	
				
			echo '
					<select  
					id="'.$element_id.'" 
						name="__ex__'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						
						
						class="form-control">'.$option_html.'</select>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//get_primary_result($link,$sample_id,$examination_id);
				echo '</div>';
			echo '</div>';
			echo '<p class="help">'.$help.'</p>';	
		echo '</div>';
	}
	elseif($type=='number')
	{//echo '<h4>'.$type.'</h4>';
		$step=isset($edit_specification['step'])?$edit_specification['step']:1;
		
				//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';	
				
			echo '
					<input 
						
					id="'.$element_id.'" 
						name="__ex__'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						
						
						class="form-control" 
						type=number 
						step=\''.$step.'\' 
						>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//get_primary_result($link,$sample_id,$examination_id);
				echo '</div>';
			echo '</div>';
			echo '<p class="help">'.$help.'</p>';	
		echo '</div>';
	}
	elseif($type=='date' || $type=='time')
	{
		if($type=='date'){$default=strftime("%Y-%m-%d");}
		elseif($type=='time'){$default=strftime("%H:%M");}
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';			
			echo '
						<input 
						
					id="'.$element_id.'" 
						name="__ex__'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						
						class="form-control" 
						type=\''.$type.'\' 
						>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					show_source_button($element_id,$default);
				echo '</div>';
			echo '</div>';
			echo '<p class="help">'.$help.'</p>';	
		echo '</div>';
	}
	elseif($type=='datetime-local')
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';
			echo '
						<input 
						
					id="'.$element_id.'" 
						name="__ex__'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						
					pattern="'.$pattern.'" 
						class="form-control" 
						type=\''.$type.'\' 
						>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//get_primary_result($link,$sample_id,$examination_id);
				echo '</div>';
			echo '</div>';
			echo '<p class="help">'.$help.'</p>';	
		echo '</div>';
	}
	elseif($type=='blob')
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
				
						echo '<input 
									id="'.$element_id.'" 
									name="__ex__'.$examination_id.'" 
									data-exid="'.$examination_id.'" 
									type=file 
								>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//get_primary_result($link,$sample_id,$examination_id);
				echo '</div>';
			echo '</div>';
			echo '<p class="help">'.$help.'</p>';	
		echo '</div>';
	} 

	 else  if($type=='subsection')
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			echo '<h3 class="bg-warning">'.$examination_details['name'].'</h3>';
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';

				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//if($frill){get_primary_result($link,$sample_id,$examination_id);}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	} 

	elseif($type=='realtext')	//type=text
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
					echo $examination_details['name'];
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
				echo '<input 
					'.$readonly.'
					id="'.$element_id.'" 
					name="__ex__'.$examination_id.'" 
					data-exid="'.$examination_id.'" 
					data-user="'.$_SESSION['login'].'" 
					class="form-control autosave p-0 m-0 no-gutters " 
					style="resize: both;"
					';

					if(strlen($required)>0)	{echo 'required=\''.$required.'\'';}
					
					echo 'type=text value=\''.
					htmlspecialchars($result,ENT_QUOTES).'\'>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//if($frill){get_primary_result($link,$sample_id,$examination_id);}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	} 


	elseif(in_array($type,['id_multi_sample','id_single_sample']))	//type=text
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
					echo $examination_details['name'];
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
				echo '<input 
					'.$readonly.'
					id="'.$element_id.'" 
					name="__ex__'.$examination_id.'" 
					data-exid="'.$examination_id.'" 
					data-user="'.$_SESSION['login'].'" 
					class="form-control autosave p-0 m-0 no-gutters " 
					style="resize: both;"
					';

					if(strlen($required)>0)	{echo 'required=\''.$required.'\'';}
					
					echo 'type=text value=\''.
					htmlspecialchars($result,ENT_QUOTES).'\'>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//if($frill){get_primary_result($link,$sample_id,$examination_id);}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	} 


	else  
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';
			////
				echo '<div class="m-0 p-0 no-gutters">';
					////
					echo '<div class="d-inline-block no-gutters">';
					echo '<textarea rows=1
					'.$readonly.'

						id="'.$element_id.'"
						name="__ex__'.$examination_id.'"
						data-exid="'.$examination_id.'"';
						
						if(strlen($required)>0) {echo 'required=\''.$required.'\'';}

						echo 'pattern="'.$pattern.'"
						class="form-control autosave p-0 m-0 no-gutters '.$zoom.' "
						type=\''.$type.'\' ></textarea>';
					echo '</div>';
					echo '<div class="d-inline  no-gutters">';
						//get_primary_result($link,$sample_id,$examination_id);
					echo '</div>';
				echo '</div>';
			////
			echo '<p class="help">'.nl2br(htmlspecialchars($help)).'</p>';
		echo '</div>';
	}

}


?>
<style>
fieldset {
  border:1px solid;
}

legend {
  width:auto;
  margin-left: 10%;
}


</style>


<script>
function my_view_table()
{
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
