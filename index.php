<?php
session_name('sn_'.rand(1000000000,1999999999));
session_start();
require_once 'base/common.php';
require_once 'config.php';
require_once $GLOBALS['main_user_location'];
require_once 'project_common.php';

echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';

head($GLOBALS['application_name']);
echo '<div class="index_page">';

	echo '<div 
			style=	"
					grid-area: login;
					background-color:green;
					padding:5px;
					">';
		login('xxx_start_button.php');
	echo '</div>';
	
	echo '<div 
			style=	"
					grid-area: mmenu;
					background-color:lightgray;
					padding:5px;
					">';
					
		index_menu();
	echo '</div>';
	
	echo '<div 
			style=	"
					grid-area: sstatus;
					background-color:lightblue;
					padding:5px;
					">';
			display_info();
	echo '</div>';
	
echo '</div>';

tail();


function display_info()
{
	$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
	$sql='select
	accr_status as `NABL Accreditation` ,
	examination_id, name,
	sample_requirement,
	display_help as `units/reference_range/(method)`
	from examination 
	where 
	sample_requirement!=\'None\'
	and
	displayed_scope=\'yes\'
	order by name,sample_requirement
	';
	$result=run_query($link,$GLOBALS['database'],$sql);
	display_sql_result_data($result,$show_hide='no');
}


function index_menu()
{
	echo '<h1><center>Department of Biochemistry, NCHS and GMCS</center></h1>';
	echo '<h2><center>Majura Gate, Surat</center></h2>';

}

function mget_dbid()
{
	$YY=strftime("%y");

echo '<form method=post action=print_single_no_login.php target=_blank class="jumbotron m-0 p-3 border border-primary">';
echo '<h3>Get Report without Login</h3>';
echo '<div class="text-center"><span class="bg-warning">Both <span class="badge badge-primary ">Sample_ID</span> and <span class="badge badge-primary ">MRD</span> must exactly match to retrive report</span></div>';

echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="sid">Sample ID</label>
			<input type=number size=13 id=sid name=sample_id class="form-control text-danger" required="required" \>
			<p class="help"><span class=text-danger>Must be</span> number</p>';
echo '</div>';
//get_basic();
get_basic_specific_no_restriction();    //MRD


echo '<button type=submit class="btn btn-primary form-control" name=action value=view_dbid>Get Report (No login Required)</button>';
echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
echo '</form>';
}

?>


