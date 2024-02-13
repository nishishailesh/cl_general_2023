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
	get_dbid($link,$tok[1],$tok[2]);
}

//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_dbid($link,$examination_id,$range)
{
		$examination_details=get_one_examination_details($link,$examination_id);
		$ex_name=$examination_details['name'];
		
	echo '<form method=post action=display_fast_search.php>';
	echo '<input type=hidden size=13 id=from name=examination_id value=\''.$examination_id.'\' class="form-control text-danger"\>';

	if($range!=1)
	{
		get_one_field_for_fast_search($link,$examination_id);
	}
	else
	{
		$examination_details=get_one_examination_details($link,$examination_id);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';
		if(in_array($type,['id_single_sample','id_multi_sample']))
		{
			$max_sid=find_max_any_id($link,$examination_id);
			get_one_field_for_range_fast_search($link,$examination_id,$max_sid-100,$max_sid);
		}
		else
		{
			get_one_field_for_range_fast_search($link,$examination_id);
		}
	}
	
	echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_summary>View</button>';
	echo '<button type=submit formaction=xxx_print_sequence.php formtarget=_blank class="btn btn-primary form-control m-1" name=action value=view_dbid_summary>Print</button>';
	//echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=view_dbid_detail>View (Detail)</button>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';

}



function get_one_field_for_fast_search($link,$examination_id)
{
	$ex_data=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($ex_data['edit_specification'],true);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'text';

	if($type=='select')
	{
		$option=isset($edit_specification['option'])?explode(',',$edit_specification['option']):array();
		$option_html='';
		
		foreach($option as $v)
		{
				$option_html=$option_html.'<option>'.$v.'</option>';
		}
		$option_html='<select onchange="document.getElementById(\'__ex__'.$examination_id.'\').value=this[this.selectedIndex].text">'.$option_html.'</select>';
	}
	
	else if($type=='examination_field_specification')
	{
		$examination_field_specification=get_field_spec($link,$examination_id);
		//print_r($examination_field_specification);
		if($examination_field_specification)
		{
			if($examination_field_specification['ftype']=='table')
			{
				$attributes_str=' onchange="document.getElementById(\'__ex__'.$examination_id.'\').value=this[this.selectedIndex].text" ';
				
				ob_start();
				mk_select_from_sql($link,
									'select distinct `'.$examination_field_specification['field'].'` from `'.$examination_field_specification['table'].'`',
									$examination_field_specification['field'],
									'___ex___'.$examination_field_specification['examination_id'],
									'___ex___'.$examination_field_specification['examination_id'],
									$disabled='',$value='',$blank='yes',$attributes_str=$attributes_str);
				$option_html = ob_get_contents();
				ob_end_clean();
			}
			if($examination_field_specification['ftype']=='dtable')
			{
				$attributes_str=' onchange="document.getElementById(\'__ex__'.$examination_id.'\').value=this[this.selectedIndex].text" ';
				
				ob_start();
				mk_select_from_sql($link,
									'select distinct `'.$examination_field_specification['field'].'` from `'.$examination_field_specification['table'].'`',
									$examination_field_specification['field'],
									'___ex___'.$examination_field_specification['examination_id'],
									'___ex___'.$examination_field_specification['examination_id'],
									$disabled='',$value='',$blank='yes',$attributes_str=$attributes_str);
				$option_html = ob_get_contents();
				ob_end_clean();
			}		}
	}
	else if($type=='datetime-local')
	{
		//ob_start();
		$default=strftime("%Y-%m-%dT%H:%M");
		//show_source_button('__ex__'.$examination_id,$default);
		//$option_html = ob_get_contents();
		//ob_end_clean();

		$option_html='<input type=datetime-local  value=\''.$default.'\'
						onchange="document.getElementById(\'__ex__'.$examination_id.'\').value=this.value"
						onclick="document.getElementById(\'__ex__'.$examination_id.'\').value=this.value"
						
						>';
	}

	else
	{
		$option_html='';
	}

	//echo 'x';print_r($ex_data);echo 'x';
	if(!is_array($ex_data)){return;}
	$ex_name=$ex_data['name'];

		echo '<div class="basic_form">';
			echo '<div class="d-inline p-2">';
			//echo '<button type=button formtarget=_blank class="btn btn-sm btn-info d-inline-block w-75" onclick="my_view_table(\''.$ex_name.'\')">'.$ex_name.'</button>';
			echo '<button type=button formtarget=_blank class="btn btn-sm btn-info d-inline-block w-75" >'.$ex_name.'</button>';
			echo '</div>';
			echo '<div class="d-inline-block">';
				//get_one_field_for_insert_no_readonly($link,$examination_id);
				echo '		<input type=hidden name=examination_id value="'.$examination_id.'" class="form-control text-danger"\>';
				echo '		<input type=text size=13 id=\'__ex__'.$examination_id.'\'  name=search_string class="form-control text-danger"\>';
			echo '</div>';
			echo '<div>'.$option_html.'</div>';
		echo '</div>';
}


//used in search and print
function get_one_field_for_range_fast_search($link,$examination_id,$default_from='',$default_to='')
{
	$ex_data=get_one_examination_details($link,$examination_id);
	//echo 'x';print_r($ex_data);echo 'x';
	if(!is_array($ex_data)){return;}
	$ex_name=$ex_data['name'];

	$edit_specification=json_decode($ex_data['edit_specification'],true);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'text';

	if($type=='datetime-local')
	{
		$default=strftime("%Y-%m-%dT%H:%M");
		$option_html_from='<input type=datetime-local  value=\''.$default.'\'
						onchange="document.getElementById(\'__from__'.$examination_id.'\').value=this.value"
						onclick="document.getElementById(\'__from__'.$examination_id.'\').value=this.value"
						
						>';
		$option_html_to='<input type=datetime-local  value=\''.$default.'\'
						onchange="document.getElementById(\'__to__'.$examination_id.'\').value=this.value"
						onclick="document.getElementById(\'__to__'.$examination_id.'\').value=this.value"
						>';
	}
	else
	{
		$option_html_from='';
		$option_html_to='';
	}
	
	echo '<fieldset ><legend>'.$ex_name.'</legend>';

	echo '<div class="basic_form">';	
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="from">From '.$ex_name.'</label>';
			//echo '<input class="float-right" name=\'chk^'.$examination_id.'\' type=checkbox>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 value=\''.$default_from.'\' id=\'__from__'.$examination_id.'\'  	name=from 	class="form-control text-danger"\>'.$option_html_from;
			//echo '<input type=hidden 					name=\'__ex__'.$examination_id.'\' 		value=\'\'>';

		echo '</div>';		
	echo '</div>';		
		
	echo '<div class="basic_form">';	
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="to">To '.$ex_name.'</label>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 value=\''.$default_to.'\' id=\'__to__'.$examination_id.'\'   	name=to 	class="form-control text-danger"\>'.$option_html_to;
		echo '</div>';		
	echo '</div>';
	echo '</fieldset>';		
	
	
	

					
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
