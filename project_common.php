<?php
//require_once 'Evaluator.php';
//require_once('/usr/share/php/tcpdf/tcpdf.php');
//require_once('/usr/share/php/tcpdf/tcpdf_barcodes_2d.php');
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');


function requestonly_check($link)
{
	$user=get_user_info($link,$_SESSION['login']);
	$auth=explode(',',$user['authorization']);
	if(in_array('requestonly',$auth))
	{
		return true;
	}
	else
	{
		return false;
	}
}


function get_user_request_limit($link)
{
    $user=get_user_info($link,$_SESSION['login']);
    $auth=explode(',',$user['authorization']);
	foreach($auth as $value)
	{
		$limit=explode("=",$value);
	        if(isset($limit[0])&& isset($limit[1]))
		{
			if($limit[0]=='limit_request')
        		{
		                return $limit[1];
	        	}
		}
	}
	return 1;	//default limit
}


function get_incomplete_reminder_count($link)
{
	if(!isset($GLOBALS['reminders_table'])){return false;}
	
	$sql='select count(id) incomplete_reminders from `'.$GLOBALS['reminders_table'].'` where completed=0';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	return($ar['incomplete_reminders']);
}
//select count(id) from reminders where completed=0

function main_menu($link)
{
	//$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
	$user=get_user_info($link,$_SESSION['login']);
	$auth=explode(',',$user['authorization']);
	if(in_array('requestonly',$auth))
	{
		echo '
		<form method=post class="form-group m-0 p-0">
		<input type=hidden name=session_name value=\''.session_name().'\'>

		<div class="btn-group">
			<div class="dropdown m-0 p-0">
				<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">New</button>
				<div class="dropdown-menu m-0 p-0 ">
					<div class="btn-group-vertical d-block">
						<button class="btn btn-outline-primary m-0 p-0 " formaction=new_requestonly.php type=submit name=action value=direct>New Request(Doctor)</button>
					</div>
				</div>
			</div>


			<div class="dropdown m-0 p-0">
				<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">View</button>
					<div class="dropdown-menu m-0 p-0">
						<div class="btn-group-vertical  d-block">
							<button class="btn btn-outline-primary m-0 p-0" formaction=view_database_id.php type=submit name=action value=get_dbid>View Sample ID</button>
							<button class="btn btn-outline-primary m-0 p-0" formaction=search_si.php type=submit name=action value=get_search_condition>Search-SI</button>			
						</div>
					</div>
			</div>

			<div class="dropdown m-0 p-0">
				<button class="btn btn-outline-primary m-0 p-0" formaction=location_report.php type=submit name=action value=get_location_list>LocationWise Report</button>			
			</div>
			
			<button class="btn btn-outline-primary m-0 p-0" formaction=start.php type=submit name=action value=home><img src=img/home.jpeg height=20></button>
			<button class="btn btn-outline-primary m-0 p-0" formaction=start.php type=submit formtarget=_blank name=action value=home>+</button>

		</div>

		</form>';		
		return;
	}

	echo '
	<form method=post class="form-group m-0 p-0 print_hide">
	<input type=hidden name=session_name value=\''.session_name().'\'>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menu_strip" ><span class="navbar-toggler-icon"></span></button>

		<div class="collapse navbar-collapse" id="menu_strip">  
				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">QC</button>
						<div class="dropdown-menu m-0 p-0">
							<div class="btn-group-vertical  d-block">
								<button class="btn btn-outline-primary m-0 p-0" formaction=get_data_for_lj_chart.php type=submit name=action value=get_data>LJ Chart</button>					
								<button class="btn btn-outline-primary m-0 p-0" formaction=get_data_for_delta_check.php type=submit name=action value=get_data>Delta Check</button>					
								<button class="btn btn-outline-primary m-0 p-0" formaction=moving_average.php type=submit name=action value=cup_barcode_range>MovAvg</button>
							</div>
						</div>
				</div>

				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Misc</button>
						<div class="dropdown-menu m-0 p-0">
							<div class="btn-group-vertical  d-block">
								<button class="btn btn-outline-primary m-0 p-0" formaction=single_table_edit.php type=submit name=action value=get_record_list>Tables</button>
								<button class="btn btn-outline-primary m-0 p-0" formaction=reminders.php type=submit name=action value=reminders>Reminders('.get_incomplete_reminder_count($link).')</button>
														
								<button class="btn btn-outline-primary m-0 p-0" formaction=manage_label.php type=submit name=action value=manage_label>Labels</button>
								<button class="btn btn-outline-primary m-0 p-0" formaction=manage_reagent.php type=submit name=action value=manage_reagent>Reagent</button>
								
								<button class="btn btn-outline-primary m-0 p-0" formaction=TAT.php type=submit name=action value=get_TAT_search_condition>TAT</button>
								<button class="btn btn-outline-primary m-0 p-0" formaction=sms.php type=submit name=action value=sms>SMS</button>
								<button class="btn btn-outline-primary m-0 p-0" formaction=statistics_and_info.php type=submit name=action value=statistics>Statistics and Info</button>
								<button class="btn btn-outline-primary m-0 p-0" formaction=dashboard.php type=submit name=action value=dashboard>Dashboard</button>
								<button class="btn btn-outline-primary m-0 p-0" formaction=get_id_range_for_cup_barcode.php type=submit name=action value=cup_barcode_range>Cup Barcode</button>
								<button class="btn btn-outline-primary m-0 p-0" formaction=request.php type=submit name=action value=request>Request</button>
							</div>
						</div>
				</div>

				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Biochemistry</button>
						<div class="dropdown-menu m-0 p-0">
							<div class="btn-group-vertical  d-block">
								<button class="btn btn-outline-primary m-0 p-0" formaction=import_erba_xl_640_results.php type=submit name=action value=get_file>Import XL-640 Result</button>					
								<button class="btn btn-outline-primary m-0 p-0" formaction=import_erba_xl_1000_results.php type=submit name=action value=get_file>Import XL-1000 Result</button>											

							</div>
						</div>
				</div>

							
				<button class="btn btn-outline-primary m-0 p-0" formaction=xxx_start_button.php type=submit name=action value=home><img src=img/home.jpeg height=20></button>
				<button class="btn btn-outline-primary m-0 p-0" formaction=xxx_start_button.php type=submit formtarget=_blank name=action value=home> (+) </button>
				
				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">New-N</button>
					<div class="dropdown-menu m-0 p-0 ">
						<div class="btn-group-vertical d-block">
							<!--<button class="btn btn-outline-primary m-0 p-0 " formaction=newww_general.php type=submit name=action value="newww_general||">New</button>-->';
							create_newww_special($link);
						echo '</div>
					</div>
				</div>
				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">View-N</button>
					<div class="dropdown-menu m-0 p-0 ">
						<div class="btn-group-vertical d-block">
							<!--<button class="btn btn-outline-primary m-0 p-0 " formaction=viewww_database_id_from_to.php type=submit name=action value="get_dbids||">by Sample ID(s)</button>-->'; 
							xxx_make_view_menu($link);
						echo '</div>
					</div>
				</div>
				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Worklist-N</button>
					<div class="dropdown-menu m-0 p-0 ">
						<div class="btn-group-vertical d-block">
							<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_worklist_by_unique_id.php type=submit name=action value="get_worklist">by Examination</button>
						</div>
					</div>
				</div>
				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Print-N</button>
					<div class="dropdown-menu m-0 p-0 ">
						<div class="btn-group-vertical d-block">
							<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_get_print_id.php type=submit name=action value="get_print_id">Scan and Print</button>
						</div>
					</div>
				</div>
				
				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">QC-N</button>
					<div class="dropdown-menu m-0 p-0 ">
						<div class="btn-group-vertical d-block">
							<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_manage_qc.php type=submit name=action value="get_print_id">Manage QC</button>
						</div>
					</div>
				</div>
				
				<div class="dropdown m-0 p-0">
					<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Manage Status</button>
					<div class="dropdown-menu m-0 p-0 ">
						<div class="btn-group-vertical d-block">
							<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_start.php type=submit name=action value="view">Status-1</button>
							<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_start_button.php type=submit name=action value="view">Status-2</button>'; 
						echo '</div>
					</div>
				</div>
				
		</div>
	</nav>
	</form>';		
}



//backup before playing with responsive nav
function main_menu_old($link)
{
	//$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
	$user=get_user_info($link,$_SESSION['login']);
	$auth=explode(',',$user['authorization']);
	if(in_array('requestonly',$auth))
	{
		echo '
		<form method=post class="form-group m-0 p-0">
		<input type=hidden name=session_name value=\''.session_name().'\'>

		<div class="btn-group">
			<div class="dropdown m-0 p-0">
				<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">New</button>
				<div class="dropdown-menu m-0 p-0 ">
					<div class="btn-group-vertical d-block">
						<button class="btn btn-outline-primary m-0 p-0 " formaction=new_requestonly.php type=submit name=action value=direct>New Request(Doctor)</button>
					</div>
				</div>
			</div>


			<div class="dropdown m-0 p-0">
				<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">View</button>
					<div class="dropdown-menu m-0 p-0">
						<div class="btn-group-vertical  d-block">
							<button class="btn btn-outline-primary m-0 p-0" formaction=view_database_id.php type=submit name=action value=get_dbid>View Sample ID</button>
							<button class="btn btn-outline-primary m-0 p-0" formaction=search_si.php type=submit name=action value=get_search_condition>Search-SI</button>			
						</div>
					</div>
			</div>

			<div class="dropdown m-0 p-0">
				<button class="btn btn-outline-primary m-0 p-0" formaction=location_report.php type=submit name=action value=get_location_list>LocationWise Report</button>			
			</div>
			
			<button class="btn btn-outline-primary m-0 p-0" formaction=start.php type=submit name=action value=home><img src=img/home.jpeg height=20></button>
			<button class="btn btn-outline-primary m-0 p-0" formaction=start.php type=submit formtarget=_blank name=action value=home>+</button>

		</div>

		</form>';		
		return;
	}

	echo '
	<form method=post class="form-group m-0 p-0 print_hide">
	<input type=hidden name=session_name value=\''.session_name().'\'>
	
	<div class="btn-toolbar">
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">New</button>
			<div class="dropdown-menu m-0 p-0 ">
				<div class="btn-group-vertical d-block">
					<button class="btn btn-outline-primary m-0 p-0 " formaction=new_general.php type=submit name=action value=new_general>New</button>
				
					<div class="text-center">--Patho--</div>
					<button class="btn btn-outline-primary m-0 p-0 " formaction=new_s1.php type=submit name=action value=direct>New Direct(Patho)</button>
					<button class="btn btn-outline-primary m-0 p-0 " formaction=new_covid_patho_stem.php type=submit name=action value=direct>New Covid(Stem) Patho</button>

					<div class="text-center">--Bio--</div>
					<button class="btn btn-outline-primary m-0 p-0 " formaction=new_specific_biochemistry.php type=submit name=action value=direct>New Direct(Age/Sex)</button>
					<button class="btn btn-outline-primary m-0 p-0 " formaction=new_covid_biochemistry.php type=submit name=action value=direct>New Direct(Transporter)</button>
		<!-- <button class="btn btn-outline-primary m-0 p-0 " formaction=new_covid_biochemistry_stem.php type=submit name=action value=direct>New Covid(Stem)</button> -->
		<button class="btn btn-outline-primary m-0 p-0 " formaction=new_covid_biochemistry_stem_coll.php type=submit name=action value=direct>New Direct(Collection)</button>
		<button class="btn btn-outline-primary m-0 p-0 " formaction=new_qc_biochemistry.php type=submit name=action value=qc>New QC</button>';
	create_new_special($link);
	echo '</div>
			</div>
		</div>



		
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">View</button>
				<div class="dropdown-menu m-0 p-0">
					<div class="btn-group-vertical  d-block">
						<!-- <button class="btn btn-outline-primary m-0 p-0" formaction=view_database_id.php type=submit name=action value=get_dbid>View Sample ID</button>			-->
						<button class="btn btn-outline-primary m-0 p-0" formaction=view_database_id_from_to.php type=submit name=action value=get_dbids>by Sample ID(s)</button>			
						<!-- <button class="btn btn-outline-primary m-0 p-0" formaction=search.php type=submit name=action value=get_search_condition>by Search Conditions</button>			-->
						<button class="btn btn-outline-primary m-0 p-0" formaction=search_si.php type=submit name=action value=get_search_condition>by Search Conditions</button>			
						<button class="btn btn-outline-primary m-0 p-0" formaction=view_worklist.php type=submit name=action value=get_sid_eid_for_worklist>Worklist</button>			
						<button class="btn btn-outline-primary m-0 p-0" formaction=view_worklist_sample_wise.php type=submit name=action value=get_sid_eid_for_worklist>Worklist(Sample-wise)</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=location_report.php type=submit name=action value=get_location_list>LocationWise Report</button>			
						<button class="btn btn-outline-primary m-0 p-0" formaction=update_status.php type=submit name=action value=update_status>Update Status</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=report.php type=submit name=action value=get_report_sample_id>Ex-Report</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=start_filtered.php type=submit name=action value=get_report_sample_id>Filtered Monitor</button>
					</div>
				</div>
		</div>

		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Print</button>
				<div class="dropdown-menu m-0 p-0">
					<div class="btn-group-vertical  d-block">
						<!-- <button class="btn btn-outline-primary m-0 p-0" formaction=view_database_id_from_to_for_print.php type=submit name=action value=get_from_to>Print From-To</button>			-->
						<button class="btn btn-outline-primary m-0 p-0" formaction=view_database_id_from_to_for_print_opd.php type=submit name=action value=get_from_to>by Sample ID(s)</button>			
						<button class="btn btn-outline-primary m-0 p-0" formaction=view_database_id_from_to_for_print_opd_nabl.php type=submit name=action value=get_from_to>by Sample ID(s), NABL</button>			
						<button class="btn btn-outline-primary m-0 p-0" formaction=search_and_print.php type=submit name=action value=get_search_condition>by Search Conditions</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=print_multiple_scanned_barcode.php type=submit name=action value=get_scan>by Scanning Barcode</button>						
						<button class="btn btn-outline-primary m-0 p-0" formaction=cumulative_report.php type=submit name=action value=get_data>QReport</button>					
					</div>
				</div>
		</div>

		<button class="btn btn-outline-primary m-0 p-0" formaction=copy_prototype.php type=submit name=action value=copy_prototype>Copy Prototype</button>			



		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">QC</button>
				<div class="dropdown-menu m-0 p-0">
					<div class="btn-group-vertical  d-block">
						<button class="btn btn-outline-primary m-0 p-0" formaction=get_data_for_lj_chart.php type=submit name=action value=get_data>LJ Chart</button>					
						<button class="btn btn-outline-primary m-0 p-0" formaction=get_data_for_delta_check.php type=submit name=action value=get_data>Delta Check</button>					
						<button class="btn btn-outline-primary m-0 p-0" formaction=moving_average.php type=submit name=action value=cup_barcode_range>MovAvg</button>
					</div>
				</div>
		</div>

		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Misc</button>
				<div class="dropdown-menu m-0 p-0">
					<div class="btn-group-vertical  d-block">
						
						<button class="btn btn-outline-primary m-0 p-0" formaction=single_table_edit.php type=submit name=action value=get_record_list>Tables</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=reminders.php type=submit name=action value=reminders>Reminders('.get_incomplete_reminder_count($link).')</button>
						
						<!-- <button class="btn btn-outline-primary m-0 p-0" formaction=open_reagent.php type=submit name=action value=get_id>Open Reagent</button> -->
						<!-- <button class="btn btn-outline-primary m-0 p-0" formaction=get_id_range_for_small_barcode.php type=submit name=action value=get_sample_id_range>Sample Tube Barcode</button> -->
						<!-- <button class="btn btn-outline-primary m-0 p-0" formaction=get_4_line.php type=submit name=action value=get_4_line>4 Line Label</button> -->
						
						<button class="btn btn-outline-primary m-0 p-0" formaction=manage_label.php type=submit name=action value=manage_label>Labels</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=manage_reagent.php type=submit name=action value=manage_reagent>Reagent</button>
						
						<button class="btn btn-outline-primary m-0 p-0" formaction=TAT.php type=submit name=action value=get_TAT_search_condition>TAT</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=sms.php type=submit name=action value=sms>SMS</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=statistics_and_info.php type=submit name=action value=statistics>Statistics and Info</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=dashboard.php type=submit name=action value=dashboard>Dashboard</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=get_id_range_for_cup_barcode.php type=submit name=action value=cup_barcode_range>Cup Barcode</button>
						<button class="btn btn-outline-primary m-0 p-0" formaction=request.php type=submit name=action value=request>Request</button>
					</div>
				</div>
		</div>

		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Biochemistry</button>
				<div class="dropdown-menu m-0 p-0">
					<div class="btn-group-vertical  d-block">
						<button class="btn btn-outline-primary m-0 p-0" formaction=import_erba_xl_640_results.php type=submit name=action value=get_file>Import XL-640 Result</button>					
						<button class="btn btn-outline-primary m-0 p-0" formaction=import_erba_xl_1000_results.php type=submit name=action value=get_file>Import XL-1000 Result</button>											

					</div>
				</div>
		</div>

		<!-- <div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Support</button>
				<div class="dropdown-menu m-0 p-0">
					<div class="btn-group-vertical  d-block">
						<a target="_blank"  href="/proj1/dementia/all_records">Reminders</a>
					</div>
				</div>
		</div> -->
    				
		<button class="btn btn-outline-primary m-0 p-0" formaction=xxx_start_button.php type=submit name=action value=home><img src=img/home.jpeg height=20></button>
		<button class="btn btn-outline-primary m-0 p-0" formaction=xxx_start_button.php type=submit formtarget=_blank name=action value=home> (+) </button>
		
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">New-N</button>
			<div class="dropdown-menu m-0 p-0 ">
				<div class="btn-group-vertical d-block">
					<!--<button class="btn btn-outline-primary m-0 p-0 " formaction=newww_general.php type=submit name=action value="newww_general||">New</button>-->';
					create_newww_special($link);
				echo '</div>
			</div>
		</div>
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">View-N</button>
			<div class="dropdown-menu m-0 p-0 ">
				<div class="btn-group-vertical d-block">
					<!--<button class="btn btn-outline-primary m-0 p-0 " formaction=viewww_database_id_from_to.php type=submit name=action value="get_dbids||">by Sample ID(s)</button>-->'; 
					xxx_make_view_menu($link);
				echo '</div>
			</div>
		</div>
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Worklist-N</button>
			<div class="dropdown-menu m-0 p-0 ">
				<div class="btn-group-vertical d-block">
					<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_worklist_by_unique_id.php type=submit name=action value="get_worklist">by Examination</button>
				</div>
			</div>
		</div>
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Print-N</button>
			<div class="dropdown-menu m-0 p-0 ">
				<div class="btn-group-vertical d-block">
					<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_get_print_id.php type=submit name=action value="get_print_id">Scan and Print</button>
				</div>
			</div>
		</div>
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">QC-N</button>
			<div class="dropdown-menu m-0 p-0 ">
				<div class="btn-group-vertical d-block">
					<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_manage_qc.php type=submit name=action value="get_print_id">Manage QC</button>
				</div>
			</div>
		</div>
		<div class="dropdown m-0 p-0">
			<button class="btn btn-outline-primary dropdown-toggle m-0 p-0" type="button" data-toggle="dropdown">Manage Status</button>
			<div class="dropdown-menu m-0 p-0 ">
				<div class="btn-group-vertical d-block">
					<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_start.php type=submit name=action value="view">Status-1</button>
					<button class="btn btn-outline-primary m-0 p-0 " formaction=xxx_start_button.php type=submit name=action value="view">Status-2</button>'; 
				echo '</div>
			</div>
		</div>			
	</div>
	</form>';		
}


function mk_select_from_array($name, $select_array,$disabled='',$default='',$extra='')
{	
	echo '<select  '.$extra.'  '.$disabled.' id=\''.$name.'\' name=\''.$name.'\'>';
	foreach($select_array as $key=>$value)
	{
				//echo $default.'?'.$value;
		if($value==$default)
		{
			echo '<option  selected > '.$value.' </option>';
		}
		else
		{
			echo '<option > '.$value.' </option>';
		}
	}
	echo '</select>';	
	return TRUE;
}


function mk_select_from_array_kv($name, $select_array,$disabled='',$default='')
{	
	echo '<select  '.$disabled.' name=\''.$name.'\'>';
	foreach($select_array as $key=>$value)
	{
				//echo $default.'?'.$value;
		if($key==$default)
		{
			echo '<option  selected value=\''.$key.'\' > '.$value.' </option>';
		}
		else
		{
			echo '<option   value=\''.$key.'\' >'.$value.' </option>';
		}
	}
	echo '</select>';	
	return TRUE;
}


function mk_array_from_sql($link,$sql,$field_name)
{
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ret=array();
	while($ar=get_single_row($result))
	{
		$ret[]=$ar[$field_name];
	}

	return $ret;
}

function mk_array_from_sql_kv($link,$sql,$field_name_k,$field_name_v,$blank='no')
{
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ret=array();
	while($ar=get_single_row($result))
	{
		$ret[$ar[$field_name_k]]=$ar[$field_name_v];
	}

 	if($blank=='yes')
         {
		$ret[0]='(all)';
         }

	return $ret;
}

function mk_select_from_sql($link,$sql,$field_name,$select_name,$select_id,$disabled='',$default='',$blank='no',$extra='')
{
	//echo '<h1>'.$blank.'</h1>';
	$ar=mk_array_from_sql($link,$sql,$field_name);
	if($blank=='yes')
	{
		array_unshift($ar,"");
	}
	mk_select_from_array($select_name,$ar,$disabled,$default,$extra);
}


function mk_select_from_sql_kv($link,$sql,$field_name_k,$field_name_v,$select_name,$select_id,$disabled='',$default='',$blank='no')
{
	$ar=mk_array_from_sql_kv($link,$sql,$field_name_k,$field_name_v,$blank);
	//echo '<pre>';print_r($ar);echo '</pre>';
	//if($blank=='yes')
	//{
	//	array_unshift($ar,"");
	//}
	mk_select_from_array_kv($select_name,$ar,$disabled,$default);
}


function get_one_examination_details($link,$examination_id)
{
	//echo 'first dump++++++++++++++++++<br>';
	//var_dump($link);
	//echo '>>>>======get_one_examination_details==========<br>';
	$sql='select * from examination where examination_id=\''.$examination_id.'\'';
	//echo $sql.'mmmmmmmmm<br>';
	//echo '2nd dump#######################<br>';
	//	var_dump($link);

	$result=run_query($link , $GLOBALS['database'],$sql);
	//echo '<<<<=======end of =get_one_examination_details=======<br>';

	return $ar=get_single_row($result);
}

function get_protoype_name($link,$prototype_id)
{
	$sql='select * from prototype where prototype_id=\''.$prototype_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	return $ar['name'];
}
function view_sample_table($link,$sample_id)
{
	$sql='select * from result where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	echo '<table class="table table-striped table-bordered">';
	echo '<tr>
			<td>Encounter ID</td>
			<td colspan=2>';
			sample_id_edit_button($sample_id);
			echo '</td></tr>';
	echo '<tr><th>Examination ID</th><th>Name</th><th>Result</th></tr>';
	while($ar=get_single_row($result))
	{
		//print_r($ar);
		$examination_details=get_one_examination_details($link,$ar['examination_id']);
		//print_r($examination_details);
		echo '	<tr><td>'.$examination_details['examination_id'].'</td>
				<td>'.$examination_details['name'].'</td>
				<td>'.$ar['result'].'</td></tr>';
	}
	
	$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\'';
	$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
	while($ar_blob=get_single_row($result_blob))
	{
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$ar_blob['examination_id']);
		//print_r($examination_details);
		echo '	<tr><td>'.$examination_blob_details['examination_id'].'</td>
				<td>'.$examination_blob_details['name'].'</td>
				<td>';
				echo_download_button_two_pk('result_blob','result',
									'sample_id',$sample_id,
									'examination_id',$examination_blob_details['examination_id'],
									$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$ar_blob['fname'],
									round(strlen($ar_blob['result'])/1024,0));
				echo '</td></tr>';
	}	
		
	echo '</table>';
}

function echo_result_header()
{
	echo '<div class="basic_form">
			<div class=my_label >Examination</div>
			<div>Result</div>
			<div class=help>Unit, Ref. Intervals ,(Method)</div>';
	echo '</div>';	
}

function show_all_buttons_for_sample($link,$sample_id)
{
	$released_by=get_one_ex_result($link,$sample_id,$GLOBALS['released_by']);
	$interim_released_by=get_one_ex_result($link,$sample_id,$GLOBALS['interim_released_by']);
	
	echo '<div class="btn-group" role="group">';
	if(requestonly_check($link))		//no interim, no release, no edit , no delete 
	{
		sample_id_barcode_button($sample_id);
		sample_id_prev_button($sample_id);
		sample_id_view_button($sample_id);
		sample_id_next_button($sample_id);
		sample_id_bill_button($sample_id);
		if(strlen($released_by)!=0 || strlen($interim_released_by)!=0)
		{
			sample_id_print_button($sample_id);						
		}
		return;
	}
	

	
	if(strlen($released_by)==0 && strlen($interim_released_by)==0)		//no interim, no release -> no print/xmpp/email/sms
	{
		sample_id_barcode_button($sample_id);
		sample_id_prev_button($sample_id);
		sample_id_view_button($sample_id);
		sample_id_next_button($sample_id);
		sample_id_release_button($sample_id);	
		sample_id_interim_release_button($sample_id);	
		sample_id_edit_button($sample_id);
		sample_id_delete_button($sample_id);
		sample_id_copy_button($sample_id);
		sample_id_bill_button($sample_id);
	}
	else if(strlen($released_by)==0 && strlen($interim_released_by)!=0)	//interim but not released, so allow telegram/print/xmpp/email/sms
	{
		sample_id_barcode_button($sample_id);		
		sample_id_prev_button($sample_id);
		sample_id_view_button($sample_id);
		sample_id_next_button($sample_id);
		sample_id_release_button($sample_id);	
		sample_id_interim_release_button($sample_id);					
		
		sample_id_print_button($sample_id);			
		sample_id_email_button($sample_id);
		sample_id_telegram_button($sample_id);
		sample_id_sms_button($sample_id,$link);
		sample_id_xmpp_button($sample_id);
		
		sample_id_edit_button($sample_id);
		sample_id_delete_button($sample_id);
		sample_id_copy_button($sample_id);
		sample_id_bill_button($sample_id);

	}	
	else 																//released with/without interim, so do not allow edit/delete
	{
		sample_id_barcode_button($sample_id);
		//sample_id_edit_button($sample_id);
		sample_id_prev_button($sample_id);
		sample_id_view_button($sample_id);
		sample_id_next_button($sample_id);
		//sample_id_delete_button($sample_id);
		
		sample_id_unrelease_button($sample_id);			
		
		sample_id_print_button($sample_id);			
		sample_id_email_button($sample_id);
		sample_id_telegram_button($sample_id);
		sample_id_sms_button($sample_id,$link);
		sample_id_xmpp_button($sample_id);
		sample_id_copy_button($sample_id);
		sample_id_bill_button($sample_id);
	}
	echo '</div>';
}




function sample_exist($link,$sample_id)
{
	$sql='select  * from sample_link where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)==1)
	{
		return True;
	}
	else
	{
		return false;
	}
	
	/*	
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$result_plus_blob_requested=$ex_list+$rblob;
	//print_r($result_plus_blob_requested);

	if(count($result_plus_blob_requested)!=0)
	{
		return true;
	}	
	return false;
	*/
}



function view_sample($link,$sample_id)
{

	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$result_plus_blob_requested=$ex_list+$rblob;
	//print_r($result_plus_blob_requested);

	$profile_wise_ex_list=ex_to_profile($link,$result_plus_blob_requested);

	if(count($result_plus_blob_requested)!=0)
	{
		$sr=get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement']);
		//echo $sr;
		$sr_array=explode('-',$sr);
		//print_r($sr_array);
		$header=$GLOBALS[$sr_array[2]];
		echo '<H2 class="text-center only_print">'.$header['name'].'</H2>
		<H3 class="text-center only_print">'.$header['section'].'</H3>
		<H4 class="text-center only_print">'.$header['address'].'</H4>
		<H5 class="text-center only_print">'.$header['phone'].'</H5>
		<hr>';
	
	
		echo '<div class="basic_form">
				<div class=my_label ><span class="badge badge-primary ">Sample ID</span>
									<span class="badge badge-info"><h5>'.$sample_id.'</h5></span>
				</div>';
			
			show_all_buttons_for_sample($link,$sample_id);
			echo '</div>
			<div class="help print_hide"></div>';
		echo '</div>';	
	}
	else
	{
		sample_id_prev_button($sample_id);
		sample_id_next_button($sample_id);
	}
	
	if(count($result_plus_blob_requested)==0)
	{
		echo '<h3>No such sample with sample_id='.$sample_id.'</h3>';
		return;
	}
		
	foreach($profile_wise_ex_list as $kp=>$vp)
	{
		$pinfo=get_profile_info($link,$kp);
		$div_id=$pinfo['name'].'_'.$sample_id;
		echo '<img src="img/show_hide.png" height=32 data-toggle="collapse" class=sh href=\'#'.$div_id.'\' ><div></div><div></div>';
		echo '<div class="collapse show" id=\''.$div_id.'\'>';
		echo '<h3>'.$pinfo['name'].'</h3><div></div><div></div>';
		$profile_edit_specification=json_decode($pinfo['edit_specification'],true);
		$print_style=isset($profile_edit_specification['print_style'])?$profile_edit_specification['print_style']:'';		
	
		if($print_style=='horizontal')
		{
			echo '<div class=horiz>';
			foreach($vp as $ex_id)
			{
				$examination_details=get_one_examination_details($link,$ex_id);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$img=isset($edit_specification['img'])?$edit_specification['img']:'';
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				
				
				if($type!='blob')
				{
					view_field_hr($link,$ex_id,$ex_list[$ex_id]);	
				}
				else
				{
					view_field_blob_hr($link,$ex_id,$sample_id);
					if($img=='dw')
					{
						$ex_result=get_one_ex_result_blob($link,$sample_id,$ex_id);
						display_dw($ex_result,$examination_details['name']);
					}	
				}
			}
			echo '</div>';			
		}
		
		elseif($print_style=='vertical')
		{
			foreach($vp as $ex_id)
			{
				$examination_details=get_one_examination_details($link,$ex_id);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';					
				if($type!='blob')
				{
					view_field_vr($link,$ex_id,$ex_list[$ex_id]);	
				}
				else
				{
					view_field_blob_vr($link,$ex_id,$sample_id);	
				}
			}
		}
		
		else
		{
			echo_result_header();
		
			foreach($vp as $ex_id)
			{
				
				$examination_details=get_one_examination_details($link,$ex_id);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$img=isset($edit_specification['img'])?$edit_specification['img']:'';
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
						
				if($type!='blob')
				{
					view_field($link,$ex_id,$ex_list[$ex_id],$sample_id);	
				}
				else
				{
					view_field_blob($link,$ex_id,$sample_id);
					if($img=='dw')
					{
						$ex_result=get_one_ex_result_blob($link,$sample_id,$ex_id);
						display_dw($ex_result,$examination_details['name']);
					}
				}
			}
		}		
		echo '</div>';
	}
	
	echo '<br><footer></footer>';	
}


function view_sample_compact($link,$sample_id)
{

	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$result_plus_blob_requested=$ex_list+$rblob;
	//print_r($result_plus_blob_requested);
	echo '<div style="width:300px;">';
		echo '<table><tr>';
		echo '<td>';
		sample_id_prev_button($sample_id);
		echo '</td>';
		echo '<td>';
		sample_id_next_button($sample_id);
		echo '</td>';
		echo '<td>';
		sample_id_analysis_started_button($sample_id);
		echo '</td>';
		echo '</tr></table>';

		$sr=get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement']);
		$opd_ward=get_one_ex_result($link,$sample_id,$GLOBALS['OPD/Ward']);
		if($opd_ward=='OPD')
		{
			echo '<span class="bg-warning">'.$sample_id.'-'.$sr.'</span><h5 class="bg-primary">'.$opd_ward.'</h5>';
		}
		else
		{
			echo '<span class="bg-warning ">'.$sample_id.'-'.$sr.'</span><h5 class="bg-secondary">'.$opd_ward.'</h5>';
		}

		if(count($result_plus_blob_requested)==0)
		{
			echo '<h3>No such sample with sample_id='.$sample_id.'</h3>';
			return;
		}
		$profile_wise_ex_list=ex_to_profile($link,$result_plus_blob_requested);

		foreach($profile_wise_ex_list as $kp=>$vp)
		{
			$pinfo=get_profile_info($link,$kp);
			$profile_edit_specification=json_decode($pinfo['edit_specification'],true);
			$compact=isset($profile_edit_specification['compact'])?$profile_edit_specification['compact']:'';		
			if($compact!='no')
			{
				echo '<h5 class="text-danger">'.$pinfo['name'].'</h5>';
				echo '<table border=1>';
				foreach($vp as $ex_id)
				{
					$examination_details=get_one_examination_details($link,$ex_id);
					$edit_specification=json_decode($examination_details['edit_specification'],true);
					$type=isset($edit_specification['type'])?$edit_specification['type']:'';

					if($type!='blob')
					{
						echo '<tr><td>'.$examination_details['name'].'</td><td>'.$ex_list[$ex_id].'</td></tr>';
					}
					else
					{
						echo $examination_details['name'];
					}
				}
				echo '</table>';
			}
		}
	echo '</div>';

}


function edit_sample_compact($link,$sample_id,$ex_id_array)
{
	
	//print_r($ex_id_array);
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	if(count(array_intersect(array_keys($ex_list),$ex_id_array))==0){return;}
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$result_plus_blob_requested=$ex_list+$rblob;
	//print_r($result_plus_blob_requested);
		echo '<div class="m-2 p-2 border border-dark">';
		echo show_sid_button_release_status($link,$sample_id);
		//sample_id_prev_button($sample_id);
		//sample_id_next_button($sample_id);
		$sr=get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement']);
		$opd_ward=get_one_ex_result($link,$sample_id,$GLOBALS['OPD/Ward']);
		if($opd_ward=='OPD')
		{
			echo '<span class="bg-warning">'.$sr.' '.$opd_ward.'</h5>';
		}
		else
		{
			echo '<span class="bg-info">'.$sr.' '.$opd_ward.'</h5>';
		}

		if(count($result_plus_blob_requested)==0)
		{
			echo '<h3>No such sample with sample_id='.$sample_id.'</h3>';
			return;
		}
		$profile_wise_ex_list=ex_to_profile($link,$result_plus_blob_requested);

		foreach($profile_wise_ex_list as $kp=>$vp)
		{
			$pinfo=get_profile_info($link,$kp);
			$profile_edit_specification=json_decode($pinfo['edit_specification'],true);
			$compact=isset($profile_edit_specification['compact'])?$profile_edit_specification['compact']:'';		
			if($compact!='no')
			{
				echo '<h5 class="text-danger">'.$pinfo['name'].'</h5>';
				echo '<table border=1>';
				foreach($vp as $ex_id)
				{
					if(in_array($ex_id,$ex_id_array) || count($ex_id_array)==0)
					{
						$examination_details=get_one_examination_details($link,$ex_id);
						$edit_specification=json_decode($examination_details['edit_specification'],true);
						$type=isset($edit_specification['type'])?$edit_specification['type']:'';
						
						if($type!='blob')
						{
							echo '<tr>';
								edit_field($link,$ex_id,array($ex_id=>$ex_list[$ex_id]),$sample_id,'',$frill=False);
								//edit_field($link,$ex_id,array($ex_id=>$ex_list[$ex_id]),$sample_id,'',$frill=True);
							echo '</tr>';
						}
						else
						{
							echo $examination_details['name'];
						}
					}
				}
				echo '</table>';
			}
		}
	echo '</div>';
}


function view_field_blob($link,$kblob,$sample_id,$display_class='horizontal3')
{
	
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';
		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);
	
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);
		$display_format=$examination_blob_details['display_format'];


		
	///////////formatting
			if(strlen($display_format)==0){$display_format='horizontal3';}
			
				$edit_specification=json_decode($examination_blob_details['edit_specification'],true);
				$img=isset($edit_specification['img'])?$edit_specification['img']:'';
				$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
				$h=isset($edit_specification['height'])?$edit_specification['height']:'200';
				$help=isset($edit_specification['help'])?$edit_specification['help']:'';
				$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';	
				if($hide=='yes'){  $print_hide=" print_hide ";}else{$print_hide='';}
											
				echo '<div class="  '.$display_format.' " id="ex_'.$kblob.'">';
				
						echo '	<div class="my_label text-wrap lead w-auto border '.$print_hide.'">'.$examination_blob_details['name'].':';					
						echo '</div>';
					
						echo '<div class="border '.$print_hide.'">';
								echo_download_button_two_pk('result_blob','result',
												'sample_id',$sample_id,
												'examination_id',$examination_blob_details['examination_id'],
												$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$ar_blob['fname']
												);



								if($img=='png')
								{
										//echo '<div><b>';
										//echo $examination_blob_details['name'];
										//echo ':</b></div>';
										echo '<div>';
										//no effect of last three parameters, not implemented
										display_png($ar_blob['result'],$ar_blob['fname'],$w,$h);      
										echo '</b></div>';
								}
						
						echo '</div>';
						
						echo '<div class="help border '.$print_hide.'">';
								echo '<div  class="help border"  >Current File:'.$ar_blob['fname'].'</div>';
								echo '<div  class="help border"  >'.$help.'</div>';					
						echo '</div>';
						
				echo '</div>';
	

	//////////////////////

		
		//print_r($examination_blob_details);
		//echo '	<div class="'.$display_class.'">
	
				//<div class="my_label border">'.$examination_blob_details['name'].'</div>
				//<div>';
				//echo_download_button_two_pk('result_blob','result',
									//'sample_id',$sample_id,
									//'examination_id',$examination_blob_details['examination_id'],
									//$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$ar_blob['fname']
									//);

                //$edit_specification=json_decode($examination_blob_details['edit_specification'],true);
                //$img=isset($edit_specification['img'])?$edit_specification['img']:'';
                //$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
                //$h=isset($edit_specification['height'])?$edit_specification['height']:'200';
                //$help=isset($edit_specification['help'])?$edit_specification['help']:'';


                //if($img=='png')
                //{
                        ////echo '<div><b>';
                        ////echo $examination_blob_details['name'];
                        ////echo ':</b></div>';
                        //echo '<div>';
                        ////no effect of last three parameters, not implemented
                        //display_png($ar_blob['result'],$ar_blob['fname'],$w,$h);      
                        //echo '</b></div>';
                //}



				//echo '</div>';
				//echo '<div  class="help border"  >Current File:'.$ar_blob['fname'].'</div>';
				//echo '<div  class="help border"  >'.$help.'</div>';
		//echo '</div>';
}



function view_field_blob_p($link,$kblob,$sample_id)
{
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';
		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);
		
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);
		$edit_specification=json_decode($examination_blob_details['edit_specification'],true);		
		$img=isset($edit_specification['img'])?$edit_specification['img']:'';
		$wd=isset($edit_specification['width'])?$edit_specification['width']:'400';
		$ht=isset($edit_specification['height'])?$edit_specification['height']:'200';
		

		
		echo '<tr><td  colspan="3"><b>';
		echo $examination_blob_details['name'];
		echo ':</b></td></tr><tr>';

		echo '<td colspan="3">';
		//print_r($examination_details);
		if($img=='png')
		{
			//no effect of last three parameters, not implemented
			//width bigger than nature have no effect
			display_png_p($ar_blob['result'],$ar_blob['fname'],$wd,$ht);	
		}
		echo '</td></tr>';
}


function view_field_blob_hr($link,$kblob,$sample_id)
{
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';
		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);
	
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);
		
		//print_r($examination_details);
		echo '	
				<div class="print_hide">'.$examination_blob_details['name'].'
				:';
				echo_download_button_two_pk('result_blob','result',
									'sample_id',$sample_id,
									'examination_id',$examination_blob_details['examination_id'],
									$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$ar_blob['fname']
									);
				echo ':'.$ar_blob['fname'].'</div>
				';


}

function view_field_blob_vr($link,$kblob,$sample_id)
{
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';
		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);
	
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);
		$edit_specification=json_decode($examination_blob_details['edit_specification'],true);		
		$img=isset($edit_specification['img'])?$edit_specification['img']:'';
		
		//print_r($examination_details);
		echo '	
				<div class="print_hide"><b>'.$examination_blob_details['name'].'
				:</b>';
				echo_download_button_two_pk('result_blob','result',
									'sample_id',$sample_id,
									'examination_id',$examination_blob_details['examination_id'],
									$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$ar_blob['fname']
									);
				echo ':'.$ar_blob['fname'].'</div>
				';
		
		if($img=='png')
		{
			echo '<div><b>';
			echo $examination_blob_details['name'];
			echo ':</b></div>';
			echo '<div>';
			//no effect of last three parameters, not implemented
			display_png($ar_blob['result'],$ar_blob['fname'],500,200);	
			echo '</b></div>';
		}
}


function view_field_blob_vr_p($link,$kblob,$sample_id)
{
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';
		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);
	
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);
		$edit_specification=json_decode($examination_blob_details['edit_specification'],true);		
		$img=isset($edit_specification['img'])?$edit_specification['img']:'';
		$wd=isset($edit_specification['width'])?$edit_specification['width']:'400';
		$ht=isset($edit_specification['height'])?$edit_specification['height']:'200';
		echo '<tr><td colspan="3"><b>';
		echo $examination_blob_details['name'];
		echo ':</b></td></tr>';

		echo '<tr><td colspan="3">';
		//print_r($examination_details);
		if($img=='png')
		{
			//no effect of last three parameters, not implemented
			//width bigger than nature have no effect
			display_png_p($ar_blob['result'],$ar_blob['fname'],$wd,$ht);	
		}
		echo '</td></tr>';
}
/*
function view_sample($link,$sample_id)
{
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	$profile_wise_ex_list=ex_to_profile($link,$ex_list);
	//echo '<pre>';
	//print_r($profile_wise_ex_list);
	//echo '</pre>';
	echo '<div class="basic_form">
			<div class=my_label >Database ID:'.$sample_id.'</div>
			<div>';
				sample_id_edit_button($sample_id);
				sample_id_view_button($sample_id);
			echo '</div>
			<div class=help>Unique Number to get this data</div>';
	echo '</div>';	
	
	foreach($profile_wise_ex_list as $kp=>$vp)
	{
		$pinfo=get_profile_info($link,$kp);
		$div_id=$pinfo['name'].'_'.$sample_id;
		//echo '<h6 data-toggle="collapse" class=sh href=\'#'.$div_id.'\' >X</h6><div></div><div></div>';
		echo '<img src="img/show_hide.png" height=32 data-toggle="collapse" class=sh href=\'#'.$div_id.'\' ><div></div><div></div>';
		echo '<div class="collapse show" id=\''.$div_id.'\'>';
		echo '<h3>'.$pinfo['name'].'</h3><div></div><div></div>';
		if($pinfo['profile_id']>$GLOBALS['max_non_ex_profile'])
		{
			echo_result_header();
		}
		foreach($vp as $ex_id)
		{
			if($ex_id==$GLOBALS['mrd']){$readonly='readonly';}else{$readonly='';}
			
			view_field($link,$ex_id,$ex_list[$ex_id]);	
		}
		echo '</div>';
	}
	
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	foreach($rblob as $kblob=>$vblob)
	{
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';
		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);
	
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);
		
		//print_r($examination_details);
		echo '	<div class="basic_form">
	
				<div class=my_label>'.$examination_blob_details['name'].'</div>
				<div>';
				echo_download_button_two_pk('result_blob','result',
									'sample_id',$sample_id,
									'examination_id',$examination_blob_details['examination_id'],
									$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$vblob
									);
				echo '</div>';
				echo '<div  class=help  >Current File:'.$ar_blob['fname'].'</div>
				</div>';
				
	}
	echo '<br><footer></footer>';	
}
*/

function view_sample_no_profile($link,$sample_id)
{
	$sql='select * from result where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	echo '<div class="basic_form">';
	echo '	<div class="my_label border border-dark">ID</div>
			<div class=" border border-dark">';
			sample_id_edit_button($sample_id);
			echo '</div>
			<div class="help border border-dark">Click on ID number (green button) to edit</div>';
			
	echo '<div class="my_label border border-info  data_header">Name</div>
	<div class=" border border-info  data_header">Data</div>
	<div class="help  border border-info  data_header">Help</div>';
	while($ar=get_single_row($result))
	{
		//print_r($ar);
		$examination_details=get_one_examination_details($link,$ar['examination_id']);
		$edit_specification=json_decode($examination_details['edit_specification']);
		$h=isset($edit_specification->{'help'})?($edit_specification->{'help'}):'No help';
		//print_r($edit_specification);
		//print_r($examination_details);
		echo '	<div class="my_label border border-dark text-wrap">'.$examination_details['name'].'</div>
				<div class="border border-dark">'.$ar['result'].'</div>
				<div class="help border border-dark">'.($h).'</div>';
	}
	
	$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\'';
	$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
	while($ar_blob=get_single_row($result_blob))
	{
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$ar_blob['examination_id']);
		//print_r($examination_details);
		echo '	
				<div class=my_label>'.$examination_blob_details['name'].'</div>
				<div>';
				echo_download_button_two_pk('result_blob','result',
									'sample_id',$sample_id,
									'examination_id',$examination_blob_details['examination_id'],
									$sample_id.'-'.$examination_blob_details['examination_id'].'-'.$ar_blob['fname'],
									round(strlen($ar_blob['result'])/1024,0));
				echo '</div>';
				echo '<div  class=help  >Current File:'.$ar_blob['fname'].'</div>';
	}	
		
	echo '</div>';
}

function sample_id_edit_button($sample_id,$target='',$label='Edit')
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post '.$target.' action=edit_general.php class=print_hide>
	<button class="btn btn-outline-primary btn-sm" name=sample_id value=\''.$sample_id.'\' >'.$label.'</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=edit_general>
	</form></div>';
}



function sample_id_barcode_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;">
	<form method=post target=_blank action=print_single_barcode.php class=print_hide>
	<div class="btn-group" role="group">
	<button class="btn btn-outline-primary btn-sm" name=action value=one_barcode >[B1]||||</button>
	<button class="btn btn-outline-primary btn-sm" name=action value=two_barcode >[B1B2]||||</button>
	<button class="btn btn-outline-primary btn-sm" name=action value=second_barcode >[B2]||||</button>
	</div>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=sample_id value=\''.$sample_id.'\'>
	</form></div>';
}

function sample_id_barcode_button_array($sample_id_array)
{
	$serialized=base64_encode(serialize($sample_id_array));
	echo '<div class="d-inline-block"  style="width:100%;">
	<form method=post target=_blank action=print_multiple_barcode.php class=print_hide>

	<button class="btn btn-outline-primary btn-sm" name=action value=one_barcode >[1]||||,||||</button>
	<button class="btn btn-outline-primary btn-sm" name=action value=two_barcode >[2]||||,||||</button>
		
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=sample_id_array value=\''.$serialized.'\'>
	</form></div>';
}

function sample_id_calculate_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=edit_general.php class=print_hide>
	<button class="btn btn-outline-primary btn-sm" name=sample_id value=\''.$sample_id.'\' >Calculate</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=calculate>
	</form></div>';
}

function sample_id_verify_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=edit_general.php class=print_hide>
	<button class="btn btn-outline-primary btn-sm" name=sample_id value=\''.$sample_id.'\' >Verify</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=verify>
	</form></div>';
}

function sample_id_delta_button($sample_id)
{
        echo '<div class="d-inline-block"  style="width:100%;">
		<form method=post action=get_data_for_delta_check.php 
			class=print_hide 
			target=_blank>
        <button class="btn btn-outline-primary btn-sm" name=one_by_one_sample_id value=\''.$sample_id.'\' >Delta</button>
        <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
        <input type=hidden name=get_data value=one_by_one>
        </form></div>';
}

function sample_id_verification_done_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=edit_general.php class=print_hide>
	<button class="btn btn-outline-primary btn-sm" name=sample_id value=\''.$sample_id.'\' >Verification Done</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=verification_done>
	</form></div>';
}

function sample_id_view_button($sample_id,$target='',$label='View')
{
	echo '<div class="d-inline-block" style="width:100%;"><form method=post action=view_single.php class=print_hide '.$target.'>
	<button class="btn btn-outline-success btn-sm text-dark " name=sample_id value=\''.$sample_id.'\' >'.$label.'</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=view_single>';
	echo '</form></div>';
}

function sample_id_sync_all_button($sample_id,$target='')
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=edit_general.php class=print_hide>
	<button class="btn btn-sm btn-warning" name=sample_id value=\''.$sample_id.'\' >Sync ALL</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=sync_ALL>
	</form></div>';
}

function sample_id_print_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=print_single.php target=_blank class=print_hide>
	<button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >Print</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=print>
	</form></div>';
}

function sample_id_bill_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=get_bill.php target=_blank class=print_hide>
	<button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >Bill</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=bill>
	</form></div>';
}

function sample_id_email_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=email_single.php class=print_hide>
	<button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >Email</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=email_single>
	</form></div>';
}

function sample_id_telegram_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=telegram.php class=print_hide>
	<button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >Telegram</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=telegram>
	</form></div>';
}


function sample_id_sms_button($sample_id,$link)
{
	$sms_status=get_one_ex_result($link,$sample_id,$GLOBALS['sms_date']);
        if(strlen($sms_status)>0){$tick="&#10003";}else{$tick="";}

        echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=single_sms_for_report.php class=print_hide>
        <button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >SMS'.$tick.'</button>
        <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
        <input type=hidden name=action value=sms>
        </form></div>';
}


function sample_id_xmpp_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=im_single.php class=print_hide>
	<button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >XMPP</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=xmpp>
	</form></div>';
}


function sample_id_next_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=view_single.php  class=print_hide>
	<button class="btn btn-outline-danger btn-sm m-0 p-0" name=sample_id value=\''.($sample_id+1).'\' >Next</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=view_single>
	</form></div>';
}

function sample_id_analysis_started_button($sample_id)
{
        echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=view_single.php  class=print_hide>
        <button class="btn btn-outline-danger btn-sm m-0 p-0" name=sample_id value=\''.$sample_id.'\' >Analysis Started</button>
        <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
        <input type=hidden name=action value=analysis_started>
        </form></div>';
}


function sample_id_prev_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;" ><form method=post action=view_single.php class=print_hide>
	<button class="btn btn-outline-danger  btn-sm m-0 p-0" name=sample_id value=\''.($sample_id-1).'\' >Previous</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=view_single>
	</form></div>';
}

function sample_id_prev_button_edit($sample_id)
{
	echo '<div class="d-inline-block "  style="width:100%;"><form method=post action=edit_general.php class=print_hide>
	<button class="btn btn-outline-danger  btn-sm m-0 p-0" name=sample_id value=\''.($sample_id-1).'\' >Previous</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=edit_general>
	</form></div>';
}

function sample_id_next_button_edit($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=edit_general.php  class=print_hide>
	<button class="btn btn-outline-danger btn-sm m-0 p-0" name=sample_id value=\''.($sample_id+1).'\' >Next</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=edit_general>
	</form></div>';
}


function sample_id_delete_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=delete_sample.php class=print_hide>
	<button onclick="return confirm(\'delete really?\')" class="btn btn-outline-dark btn-sm" name=sample_id value=\''.$sample_id.'\' >Delete</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=delete_sample>
	</form></div>';
}


function sample_id_release_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=release_sample.php class=print_hide>
	<button class="btn btn-outline-secondary btn-sm" name=sample_id value=\''.$sample_id.'\' >Release</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=release_sample>
	</form></div>';
}


function sample_id_interim_release_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=interim_release_sample.php class=print_hide>
	<button class="btn btn-outline-secondary btn-sm" name=sample_id value=\''.$sample_id.'\' >Interim Release</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=interim_release_sample>
	</form></div>';
}

function sample_id_unrelease_button($sample_id)
{
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=unrelease_sample.php class=print_hide>
	<button class="btn btn-outline-secondary btn-sm" name=sample_id value=\''.$sample_id.'\' >Un-Release</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=unrelease_sample>
	</form></div>';
}



function sample_id_copy_button($sample_id)
{
        echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=copy_sample_id.php class=print_hide>
        <button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >copy</button>
        <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
        <input type=hidden name=action value=copy_sample_id>
        </form></div>';
}


function echo_download_button_two_pk($table,$field,$primary_key,$primary_key_value,$primary_key2,$primary_key_value2,$postfix='')
{
	echo '<form method=post action=download2.php class="print_hide d-inline" >
			<input type=hidden name=table value=\''.$table.'\'>
			<input type=hidden name=field value=\''.$field.'\' >
			<input type=hidden name=primary_key value=\''.$primary_key.'\'>
			<input type=hidden name=primary_key2 value=\''.$primary_key2.'\'>
			<input type=hidden name=fname_postfix value=\''.$postfix.'\'>
			<input type=hidden name=primary_key_value value=\''.$primary_key_value.'\'>
			<input type=hidden name=primary_key_value2 value=\''.$primary_key_value2.'\'>
			<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
			
			<button class="btn btn-info  btn-sm print_hide"  
			formtarget=_blank
			type=submit
			name=action
			value=download>Download</button>
		</form>';
}

function ex_to_profile($link,$ex_array)
{
	$sql='select * from profile';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ret=array();
	while($ar=get_single_row($result))
	{
		$ex_of_profile=array_merge(
									explode(',',$ar['examination_id_list']),
									explode(',',$ar['extra'])
									);
		foreach($ex_of_profile as $v)
		{
			if(array_key_exists($v,$ex_array))
			{
				$ret[$ar['profile_id']][]=$v;
			}
		}
	}
	return $ret;
}

function copy_bin_text($link)
{
	$sql='select * from copy_bin_text';
	//echo $sql;
	$result=run_query($link,$GLOBALS['database'],$sql);
	while($ar=get_single_row($result))
	{
		//echo $ar['text'];
		echo '<span style="width: 400px;" class="text-truncate d-block" onclick="copy_to_bin(this)">'.htmlspecialchars($ar['text']).'.&#13;</span>';
	}
	
}

function edit_sample($link,$sample_id)
{
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$result_plus_blob_requested=$ex_list+$rblob;
	//print_r($result_plus_blob_requested);
	$profile_wise_ex_list=ex_to_profile($link,$result_plus_blob_requested);

	//echo '<pre>';
	//print_r($profile_wise_ex_list);
	//echo '</pre>';
	echo 
	'<div class="position-fixed bg-secondary">
		<button 
		type=button
		class="btn btn-warning btn-sm p-0 m-0 d-inline"
		 data-toggle="collapse" 
		data-target="#advice" href="#advice"><img src="img/copypaste.png" width=20></button>
		<div class="p-3 collapse" id="advice">';
		echo '<p id=cb_4 onclick="clear_bin()" class="bg-danger d-inline">clear</p>
			<p id=cb_5 onclick="copy_binn()" class="bg-warning d-inline">copy</p>';
		copy_bin_text($link);	
			//<span class="d-block" id=cb_1 onclick="copy_to_bin(this)">A for apple.&#13;</span>
			//<span class="d-block" id=cb_2 onclick="copy_to_bin(this)">B for Big apple.&#13;</span>
			//<span class="d-block"  id=cb_3 onclick="copy_to_bin(this)">C for Chota apple.&#13;</span>
			echo '<textarea id=cb_ta cols=50 rows=4></textarea>';
		echo '</div>
	</div>';
		
	echo '<div class="basic_form">
			<div class=my_label ><span class="badge badge-primary ">Sample ID</span>
			<span class="badge badge-info"><h5>'.$sample_id.'</h5></span></div>
			<div class="btn-group" role="group">';
				sample_id_prev_button_edit($sample_id);
				sample_id_next_button_edit($sample_id);
				
				$released_by=get_one_ex_result($link,$sample_id,$GLOBALS['released_by']);
				if(strlen($released_by)==0)		//no interim, no release, allow edit/delete no print
				{
					sample_id_edit_button($sample_id);
					sample_id_calculate_button($sample_id);
					sample_id_verify_button($sample_id);
					sample_id_delta_button($sample_id);
					sample_id_verification_done_button($sample_id);
					sample_id_sync_all_button($sample_id);
				}
				
				sample_id_view_button($sample_id);

			//echo_sample_action_button_for_sample_id($s);
			
			echo '</div>
			<div class=help>Unique Number to get this data</div>';
	echo '</div>';	

	if(strlen($released_by)>0)		//no interim, no release, allow edit/delete no print
	{
		echo '<h4 class="text-danger">Sample Report Released. Can not Edit</h4>';
		return 0;
	}	
	
	foreach($profile_wise_ex_list as $kp=>$vp)
	{
		$pinfo=get_profile_info($link,$kp);
		$div_id=$pinfo['name'];
		$profile_edit_specification=json_decode($pinfo['edit_specification'],true);
		$showhide=isset($profile_edit_specification['showhide'])?$profile_edit_specification['showhide']:'show';		
	

		//echo '<img src="img/show_hide.png" height=32 data-toggle="collapse" class=sh href=\'#'.$div_id.'\' ><div></div><div></div>';
		echo '<p data-toggle="collapse" class="sh bg-info d-inline" href=\'#'.$div_id.'\' >'.$pinfo['name'].'</p><div></div><div></div>';
		echo '<div class="collapse '.$showhide.'" id=\''.$div_id.'\'>';

			echo '<h3>'.$pinfo['name'].'</h3><div></div><div></div>';
			foreach($vp as $ex_id)
			{
				if($ex_id==$GLOBALS['mrd'] || $ex_id==$GLOBALS['sample_requirement'] ){$readonly='readonly';}else{$readonly='';}

					$examination_details=get_one_examination_details($link,$ex_id);
					$edit_specification=json_decode($examination_details['edit_specification'],true);
					$type=isset($edit_specification['type'])?$edit_specification['type']:'';
									
				if($type!='blob')
				{
					edit_field($link,$ex_id,array('result'=>$ex_list[$ex_id]),$sample_id,$readonly);	
				}
				else
				{
					edit_blob_field($link,$ex_id,$sample_id);
				}
			}
		echo '</div>';
	}

    add_get_data($link,$sample_id);
   
}

function get_result_of_sample_in_array($link,$sample_id)
{
	$sql='select * from result where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	while($ar=get_single_row($result))
	{
		$result_array[$ar['examination_id']]=$ar['result'];
	}
	//print_r($result_array);
	return $result_array;
}

function get_result_blob_of_sample_in_array($link,$sample_id)
{
	$sql='select * from result_blob where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	while($ar=get_single_row($result))
	{
		$result_array[$ar['examination_id']]=$ar['fname'];	//no blob as result
	}
	//print_r($result_array);
	return $result_array;
}
function get_result_of_sample_in_array_with_ex_name($link,$sample_id)
{
	$sql='select name,result from examination,result where sample_id=\''.$sample_id.'\' 
						and examination.examination_id=result.examination_id';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	while($ar=get_single_row($result))
	{
		$result_array[str_pad(substr($ar['name'],0,19),20,' ')]=$ar['result'];
	}
	//print_r($result_array);
	return $result_array;
}

//never used
function get_primary_result_of_sample_in_array($link,$sample_id)
{
	$sql='select * from primary_result where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	while($ar=get_single_row($result))
	{
		$result_array[$ar['examination_id']]=$ar['result'];
	}
	//print_r($result_array);
	return $result_array;
}

function get_primary_result_rows_of_sample_in_array($link,$sample_id)
{
	$sql='select * from primary_result where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	while($ar=get_single_row($result))
	{
		$result_array[]=$ar;
	}
	//print_r($result_array);
	return $result_array;
}



function edit_basic($link,$result_array)//not used
{
	if(array_key_exists('1',$result_array)){$mrd=$result_array['1'];}else{$mrd='';}
	
	echo '<div id=basic class="tab-pane active">';
	echo '<div class="basic_form">';
		echo '	<label class="my_label text-danger" for="mrd">MRD</label>
				<input size=13 id=mrd name=mrd class="form-control text-danger" 
				required="required" type=text pattern="SUR/[0-9][0-9]/[0-9]{8}" placeholder="MRD"
				value=\''.$mrd.'\'>
				<p class="help"><span class=text-danger>Must have</span> 8 digit after SUR/YY/</p>';			
	echo '</div>';
	echo '</div>';
}

function delete_examination($link,$sample_id,$examination_id)
{
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'delete'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [delete] with examination_id='.$examination_id.'</h5>';
		return;
	}
	$examination_details=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){$edit_specification=array();}
	
	$type=isset($edit_specification['type'])?$edit_specification['type']:'text';
	
	if($type=='blob')
	{
		$sql='DELETE FROM `result_blob`
          WHERE `sample_id` = \''.$sample_id.'\' AND `examination_id` = \''.$examination_id.'\'';
	}
	else
	{
		$sql='DELETE FROM `result`
          WHERE `sample_id` = \''.$sample_id.'\' AND `examination_id` = \''.$examination_id.'\'';
	}
		$result=run_query($link,$GLOBALS['database'],$sql);
		//echo $sql;
		if($result==false)
			{
					echo '<h3 style="color:green;"> record not Deleted</h3>';
			}
			else
			{
					echo '<h3 style="color:green;"> '.rows_affected($link).' records  deleted</h3>';
			}
		
}

function get_primary_result($link,$sample_id,$examination_id)
{
	$sql='select * from primary_result where sample_id=\''.$sample_id.'\' and examination_id=\''.$examination_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	
	$values='';
	while($ar=get_single_row($result))
	{
		//$values=$values.$ar['result'].',';
		$element_id='pr_id_'.$sample_id.'_'.$examination_id;
		
		//comneted java script based update
		/*echo '<button onclick="sync_result(this)"
					class="btn btn-sm btn-outline-dark  no-gutters align-top"
					id=\''.$element_id.'\' 
					data-sid=\''.$sample_id.'\' 
					data-exid=\''.$examination_id.'\' 
					value=\''.$ar['result'].'\' >'.$ar['result'].'</button>';
		*/			
		echo '<form class="d-inline" method=post><button type=submit title=\''.$ar['uniq'].'\'
					class="btn btn-sm btn-outline-important  no-gutters align-top"
					name=result value=\''.$ar['result'].'\' >'.$ar['result'].'</button>
					<input type=hidden name=sample_id value=\''.$sample_id.'\' >
					<input type=hidden name=examination_id value=\''.$examination_id.'\'> 
					<input type=hidden name=action value=sync_single>
					<input type=hidden name=session_name value=\''.session_name().'\'>
			</form>';
	}
	
	//get primary result
	
			echo '<button id=\'button_'.$sample_id.$examination_id.'\'
					class="btn btn-sm d-inline   no-gutters align-top"
					data-toggle="modal" 
					data-target=\'#modal_'.$sample_id.$examination_id.'\' >+</button>';
			echo '<div id=\'modal_'.$sample_id.$examination_id.'\' class="modal">';
				echo '<div class="modal-dialog">';
      				echo 
      				'<div class="modal-content">
      				
						<div class="modal-header">
							<h4 class="modal-title">add primary result for Sample ID:'.$sample_id.' Examination ID:'.$examination_id.'<br>
							Refresh main page for reflecting changes</h5>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						
						<div class="modal-body">';
						//get primary data
						echo '<form method=post>';
							echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
							echo '<input type=hidden name=sample_id value=\''.$sample_id.'\' >';
							echo '<input type=hidden name=examination_id value=\''.$examination_id.'\'>';
								
							get_one_field_for_insert_in_primary_result($link,$sample_id,$examination_id);
							echo '<input type=text name=uniq value=\''.strftime("%Y%m%d%H%M%S").'\'>';
						  	echo '<button 
						  			id=\'submit_'.$sample_id.$examination_id.'\' 
						  			type=submit
						  			name=action
						  			value=save_primary_result
						  			class="btn btn-danger insert_primary_result" 
						  			>Save
						  	</button>';						  
						echo '</form>';
						//end of get primary data
						echo '</div>
						
						
						<div class="modal-footer">
						  
						</div>';
											
    				echo '</div>';
				echo '</div>';
			echo '</div>';
	//return $values;
}


//used to supply default
//calls sync_with_that() from project_common.js
function show_source_button($link_element_id,$my_value)
{
	$element_id='source_for_'.$link_element_id;
	echo '<button onclick="sync_with_that(this,\''.$link_element_id.'\')"
				type=button
				class="btn btn-sm btn-outline-dark  no-gutters align-top"
				id=\''.$element_id.'\' 
				value=\''.$my_value.'\'>'.$my_value.'</button>';
}

function get_primary_result_blob($link,$sample_id,$examination_id)
{
	$sql='select * from primary_result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$examination_id.'\'';
	//echo $sql;
	$result=run_query($link,$GLOBALS['database'],$sql);
	$result_array=array();
	
	$values='';
	while($ar=get_single_row($result))
	{
		//$values=$values.$ar['result'].',';
		$element_id='pr_id_'.$sample_id.'_'.$examination_id;
		
		//commneted javascript based updation
		/*echo '<button onclick="sync_result_blob(this)"
					class="btn btn-sm btn-outline-dark  no-gutters align-top"
					id=\''.$element_id.'\' 
					data-sid=\''.$sample_id.'\' 
					data-type=\'blob\' 
					data-exid=\''.$examination_id.'\' 
					data-uniq=\''.$ar['uniq'].'\' 
					value=\''.$ar['uniq'].'\' >'.$ar['uniq'].'</button>';
		*/			
					
		echo '<form class="d-inline" method=post><button type=submit
					class="btn btn-sm btn-outline-important  no-gutters align-top"
					name=uniq value=\''.$ar['uniq'].'\' >'.$ar['uniq'].'</button>
					<input type=hidden name=sample_id value=\''.$sample_id.'\' >
					<input type=hidden name=examination_id value=\''.$examination_id.'\'> 
					<input type=hidden name=is_blob value=yes>
					<input type=hidden name=action value=sync_single>
					<input type=hidden name=session_name value=\''.session_name().'\'>
			</form>';					
	}
	//return $values;
}

function show_calculate_button($link,$sample_id,$examination_id,$equation)
{
	$target_element_id='r_id_'.$sample_id.'_'.$examination_id;
	
	$this_element_id='cal_for_'.$target_element_id;
	echo '<button onclick="calcuate_for_target(this,\''.$target_element_id.'\',\''.$equation.'\')"
				type=button
				class="btn btn-sm btn-outline-dark  no-gutters align-top"
				id=\''.$this_element_id.'\' 
				value=\''.$equation.'\'>'.$equation.'</button>';
}


//apt install apcalc
function calculate_result($link,$equation,$ex_list,$sample_id,$decimal=0)
{
	//check devide by zero,  e is not allowed to have 0
	//check if ex result is empty
	//echo $equation;
	$data=explode(',',$ex_list);
	$data_count=count($data);
	//print_r($data);
	$eq=$equation;
	$eq_length=strlen($eq);
	
	$parameter=0;
	
	$ret='';
	for($i=0;$i<$eq_length;$i++)
	{
		if($eq[$i]=='E')
		{		
			$ex_result=get_one_ex_result($link,$sample_id,$data[$parameter]);
			//echo $data[$parameter].'-result = '.$ex_result;
			$ret=$ret.$ex_result;
			$parameter++;
		}
		elseif($eq[$i]=='e')
		{		
			$ex_result=get_one_ex_result($link,$sample_id,$data[$parameter]);
			if($ex_result>0)
			{
				//echo $ex_result;
				$ret=$ret.$ex_result;
				$parameter++;
			}
			else
			{
				//echo $data[$parameter].'-result = 0';
				return false;
			}
		}
		else{$ret=$ret.$eq[$i];}
	}
	echo 'round('.$ret.','.$decimal.')<br>';
	return trim(shell_exec('calc "round('.$ret.','.$decimal.')"'));
	
}


function sync_all($link,$sample_id)
{
	//echo 'Sync All';
	
	//result////////////////////////////////
	$sql='select * from result where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);

	while($ar=get_single_row($result))
	{
		
		$sql_primary='select * from primary_result 
							where 	sample_id=\''.$sample_id.'\' and 
									examination_id=\''.$ar['examination_id'].'\' order by uniq desc limit 1';									
		$result_primary=run_query($link,$GLOBALS['database'],$sql_primary);
		
		$arr=get_single_row($result_primary);
		if($arr !==NULL )
		{
			//print_r($arr);
			//echo $ar['sample_id'].'>>'.$ar['examination_id'].'>>'.$ar['result'].'||||'.
		    //$arr['sample_id'].'>>'.$arr['examination_id'].'>>'.$arr['result'].'>>'.$arr['uniq'].'<br>';
		
			$update_sql='update result set result=\''.my_safe_string($link,$arr['result']).'\' where
									sample_id=\''.$sample_id.'\' and 
									examination_id=\''.$ar['examination_id'].'\'';
			//echo $update_sql.'<br>';
			if(!run_query($link,$GLOBALS['database'],$update_sql))
			{echo 'data synchronization failed';}
		}	
	}
	
	//result_blob////////////////////////////	
	$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\'';
	//echo ($sql_blob);
	$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
	
	while($ar_blob=get_single_row($result_blob))
	{
		
		$sql_primary_blob='select * from primary_result_blob 
							where 	sample_id=\''.$sample_id.'\' and 
									examination_id=\''.$ar_blob['examination_id'].'\' order by uniq desc limit 1';									
		//echo $sql_primary_blob;
		$result_primary_blob=run_query($link,$GLOBALS['database'],$sql_primary_blob);
		
		$arr_blob=get_single_row($result_primary_blob);
		if($arr_blob !==NULL )
		{
			//print_r($arr);
			//echo $ar_blob['sample_id'].'>>'.$ar_blob['examination_id'].'>>'.$ar_blob['fname'].'||||'.
		    //$arr_blob['sample_id'].'>>'.$arr_blob['examination_id'].'>>'.$arr_blob['fname'].'>>'.$arr_blob['uniq'].'<br>';
		
			$update_sql_blob='update result_blob 
								set 
									result=\''.my_safe_string($link,$arr_blob['result']).'\' ,
									fname=\''.my_safe_string($link,$arr_blob['fname']).'\' 
								where
									sample_id=\''.$sample_id.'\' and 
									examination_id=\''.$arr_blob['examination_id'].'\'';
			//echo $update_sql_blob.'<br>';
			if(!run_query($link,$GLOBALS['database'],$update_sql_blob))
			{echo 'blob data synchronization failed';}
		}	
	}
	
		
}

function edit_field($link,$examination_id,$result_array,$sample_id,$readonly='',$frill=True,$extra_array=array())
{
	//print_r($result_array);
	$result=$result_array['result'];
	
	$examination_details=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){$edit_specification=array();}
	
	$type=isset($edit_specification['type'])?$edit_specification['type']:'text';
	$readonly=isset($edit_specification['readonly'])?$edit_specification['readonly']:'';
	if(!is_authorized($link,$_SESSION['login'],$examination_id,'update')){$readonly='readonly';}
	
	//echo $readonly;
	
	if($frill){
				$help=isset($edit_specification['help'])?$edit_specification['help']:'';
			}
	else
	{
		$help='';
	}
	
	$pattern=isset($edit_specification['pattern'])?$edit_specification['pattern']:'';
	$placeholder=isset($edit_specification['placeholder'])?$edit_specification['placeholder']:'';
	$step=isset($edit_specification['step'])?$edit_specification['step']:0;
	$zoom=isset($edit_specification['zoom'])?$edit_specification['zoom']:'';
	$minlength=isset($edit_specification['minlength'])?$edit_specification['minlength']:'';
	$required=isset($edit_specification['required'])?$edit_specification['required']:'';
	
	
	$element_id='r_id_'.$sample_id.'_'.$examination_id;
	if($type=='yesno')
	{
				//////
		//if(strlen('result')==0){$result='no';}
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';
					echo '
					<button 
						'.$readonly.'
						id="'.$element_id.'" 
						name="'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						data-sid="'.$sample_id.'" 
						data-session_name="'.$_POST['session_name'].'", 
						data-user="'.$_SESSION['login'].'" 
						class="form-control btn btn-info mb-1 autosave-yesno"
						value=\''.$result.'\'
						type=button
						>'.$result.'</button>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
				if($readonly!='readonly')
				{
					if($frill){get_primary_result($link,$sample_id,$examination_id);}
				}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	}
	else if($type=='select')
	{
		$option=isset($edit_specification['option'])?explode(',',$edit_specification['option']):array();
		$option_html='';
		
		foreach($option as $v)
		{
			if($v==$result)
			{
				$option_html=$option_html.'<option selected>'.$v.'</option>';
			}
			else
			{
				$option_html=$option_html.'<option>'.$v.'</option>';
			}
		}
		
				//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';	
				
			if($readonly=='readonly'){$select_readonly='disabled';}else{$select_readonly='';}
			
			echo '
					<select '.$select_readonly.' 
					id="'.$element_id.'" 
						name="'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						data-sid="'.$sample_id.'" 
						data-session_name="'.$_POST['session_name'].'", 
						data-user="'.$_SESSION['login'].'" 
						class="form-control autosave-select">'.$option_html.'</select>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
				if($readonly!='readonly')
				{
					if($frill){get_primary_result($link,$sample_id,$examination_id);}
				}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	}
	
	elseif($type=='number')
	{
		$decimal=isset($edit_specification['decimal'])?$edit_specification['decimal']:0;
		$calculate=isset($edit_specification['calculate'])?$edit_specification['calculate']:'';	
		$ex_list=isset($edit_specification['ex_list'])?$edit_specification['ex_list']:'';	
		//if(strlen($calculate)>0)
		//{
			//$result=calculate_result($link,$calculate,$sample_id,$decimal);
		//}
				//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';	
				
				
			//type=\''.$type.'\' changed to text

			echo '
					<input 
						'.$readonly.'
					id="'.$element_id.'" 
						name="'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						data-session_name="'.$_POST['session_name'].'", 
						data-sid="'.$sample_id.'" 
						data-user="'.$_SESSION['login'].'" 
						class="form-control autosave" 
						type=text 
				
						step=\''.$step.'\' 
						value=\''.$result.'\'>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
				if($readonly!='readonly')
				{
					if($frill){get_primary_result($link,$sample_id,$examination_id);}
				}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	}
	elseif($type=='date' || $type=='time')
	{
		if($type=='date'){$default=strftime("%Y-%m-%d");}
		elseif($type=='time'){$default=strftime("%H:%M");}
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';			
			echo '
						<input 
						'.$readonly.'
					id="'.$element_id.'" 
						name="'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						data-session_name="'.$_POST['session_name'].'", 
						data-sid="'.$sample_id.'" 
						data-user="'.$_SESSION['login'].'" 
						class="form-control autosave" 
						type=\''.$type.'\' 
						value=\''.$result.'\'>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					if($readonly!='readonly')
					{
						if($frill){get_primary_result($link,$sample_id,$examination_id);}
						show_source_button($element_id,$default);
					}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	}
	elseif($type=='datetime-local')
	{
		$default=strftime("%Y-%m-%d %H:%M");
		$step=isset($edit_specification['step'])?$edit_specification['step']:1;
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block  no-gutters">';
			echo '
						<input 
						'.$readonly.'
					id="'.$element_id.'" 
						name="'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						data-sid="'.$sample_id.'" 
						data-session_name="'.$_POST['session_name'].'", 
						data-user="'.$_SESSION['login'].'" 
					pattern="'.$pattern.'" 
						class="form-control autosave" 
						type=\''.$type.'\' 
						value=\''.$result.'\'>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
				if($readonly!='readonly')
				{
						if($frill){get_primary_result($link,$sample_id,$examination_id);}
						show_source_button($element_id,$default);
				}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	}
	elseif($type=='blob')
	{
		edit_blob_field($link,$examination_id,$sample_id);
	} 

	 else  if($type=='subsection')
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			set_lable_subsection($_POST['session_name'],$sample_id,$examination_details,$examination_id);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';

				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
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
			set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
				echo '<input 
					'.$readonly.'
					id="'.$element_id.'" 
					name="'.$examination_id.'" 
					data-exid="'.$examination_id.'" 
					data-sid="'.$sample_id.'" 
					data-user="'.$_SESSION['login'].'" 
					data-session_name="'.$_POST['session_name'].'", 
					pattern="'.$pattern.'" 
					class="form-control autosave p-0 m-0 no-gutters '.$zoom.' " 
					style="resize: both;"
					minlength=\''.$minlength.'\'';

					if(strlen($required)>0)	{echo 'required=\''.$required.'\'';}
					
					echo 'type=text value=\''.
					htmlspecialchars($result,ENT_QUOTES).'\'>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
				if($readonly!='readonly')
				{
					if($frill){get_primary_result($link,$sample_id,$examination_id);}
				}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	} 



//////////////////////

	elseif($type=='examination_field_specification')
	{
		$attributes_str=
					' '.$readonly.' '.'
					id="'.$element_id.'"
					name="'.$examination_id.'" 
					data-exid="'.$examination_id.'" 
					data-sid="'.$sample_id.'" 
					data-user="'.$_SESSION['login'].'" 
					data-session_name="'.$_POST['session_name'].'", 
					pattern="'.$pattern.'" 
					class="form-control autosave p-0 m-0 no-gutters '.$zoom.' " 
					style="resize: both;"
					minlength=\''.$minlength.'\'';
					
		
		
				echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
				//echo $examination_details['name'];
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
					read_field($link,$examination_id,$value=$result, $search='',$readonly=$readonly, $attributes_str=$attributes_str);
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					if($frill){get_primary_result($link,$sample_id,$examination_id);}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
		
		
		
	}



///////////////////////


	else 		//type=textarea 
	{
		//////
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
			set_lable($_POST['session_name'],$sample_id,$examination_details,$examination_id,$frill);
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
				echo '<PRE><textarea rows=1 
					'.$readonly.'
					id="'.$element_id.'" 
					name="'.$examination_id.'" 
					data-exid="'.$examination_id.'" 
					data-sid="'.$sample_id.'" 
					data-user="'.$_SESSION['login'].'" 
					pattern="'.$pattern.'" 
					data-session_name="'.$_POST['session_name'].'", 
					class="form-control autosave p-0 m-0 no-gutters '.$zoom.' " 
					style="resize: both;"
					minlength=\''.$minlength.'\'';
					if(strlen($required)>0)	{echo 'required=\''.$required.'\'';}
					echo 'type=\''.$type.'\' >'.
					htmlspecialchars($result,ENT_QUOTES).'</textarea></PRE>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					if($readonly!='readonly')
					{
						if($frill){get_primary_result($link,$sample_id,$examination_id);}
					}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
	} 
}

function edit_blob_field($link,$examination_id,$sample_id)
{
	//get examination details
	
	$examination_details=get_one_examination_details($link,$examination_id);
	//get result_blob details
	$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$examination_id.'\' ';
	$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
	//$ar_blob=get_single_row($result_blob);

	$element_id='r_id_'.$sample_id.'_'.$examination_id;

	echo '<div class="basic_form">';
	set_lable($_POST['session_name'],$_POST['sample_id'],$examination_details,$examination_id);
	//echo '	<div class=my_label>'.$examination_details['name'].'</div>
	echo'<div class="border ">';	
	
	if(get_row_count($result_blob)>0)
	{
		$ar_blob=get_single_row($result_blob);
		echo_download_button_two_pk('result_blob','result',
								'sample_id',$sample_id,
								'examination_id',$examination_details['examination_id'],
								$sample_id.'-'.$examination_details['examination_id'].'-'.$ar_blob['fname'],
								round(strlen($ar_blob['result'])/1024,0));
	}
	
	if(is_authorized($link,$_SESSION['login'],$examination_id,'update'))
	{
		echo_upload_two_pk($sample_id,$examination_id);	
		echo '<input type=hidden
						id="'.$element_id.'" 
						name="'.$examination_id.'" 
						data-exid="'.$examination_id.'" 
						data-sid="'.$sample_id.'" 
						data-type="blob" 
						data-user="'.$_SESSION['login'].'" 
						class="form-control autosave-blob p-0 m-0 no-gutters" 
						>';
		get_primary_result_blob($link,$sample_id,$examination_id);
	}					
	//echo
	echo '</div>';
	if(isset($ar_blob['fname']))
	{
		echo '<div  class=help  >Current File:'.$ar_blob['fname'].'</div>';
	}
	echo '</div>';
}


function edit_field_any($link,$ex_id,$sample_id,$readonly='',$frill=True,$extra_array=array())
{
	//echo $compact;
	$examination_details=get_one_examination_details($link,$ex_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	$ex_compact=isset($edit_specification['compact'])?$edit_specification['compact']:'';

		//echo 'xxxx';
		if($type=='blob')
		{	
			edit_blob_field($link,$ex_id,$sample_id);
		}
		else
		{
			if(in_array($type,['id_multi_sample','id_single_sample']))
			{
				$ex_result=['result'=>get_id_type_examination_result($link,$sample_id,$ex_id)];
			}
			else
			{
				$ex_result=get_one_ex_result_row($link,$sample_id,$ex_id);
			}
			edit_field($link,$ex_id,$ex_result,$sample_id,$readonly,$frill,$extra_array);
		}
}

//function edit_field($link,$examination_id,$result_array,$sample_id,$readonly='',$frill=True)


function edit_single_field($link,$examination_id,$result,$sample_id,$readonly='',$frill=True)
{
	edit_field($link,$examination_id,array($result),$sample_id,$readonly,$frill);
}

/*
function decide_alert($result,$interval)
{
	if(strlen($interval)==0){return '';}
	if(strlen($result)==0){return '';}
	$is=explode('-',$interval);
	//100-1000-4000-11000-20000-200000
	if($result<$is[2]) //below ref
	{
		if($result<$is[1])	//below critical
		{
			if($result<$is[0])	//below absurd
			{
				return '<<<Absurd Low>>>';
			}
			else
			{
				return '<<<Critical Low>>>';
			}
		}
		else
		{
			return '<<<Abnormal Low>>>';
		}
	}
	elseif($result>$is[3])
	{
		if($result>$is[4])
		{
			if($result>$is[5])
			{
				return '('.$result.'>'.$is[5].')<<<Absurd High>>>';
			}
			else
			{
				return '<<<Critical High>>>';
			}
		}
		else
		{
			return '<<<Abnormal High>>>';
		}
	}
	else
	{
		return '';
	}	
}
*/

function decide_alert($result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h)
{
	if(strlen($interval_l)==0 && strlen($cinterval_l)==0 && strlen($ainterval_l)==0 &&
	strlen($interval_h)==0 && strlen($cinterval_h)==0 && strlen($ainterval_h)==0){return '';}
	if(strlen($result)==0){return '';}
	if(!is_numeric($result)){return '';}
		
	if(is_numeric($ainterval_l))
	{
		if($result<$ainterval_l)
		{
			return $alert=$GLOBALS['absurd_low_message'];
			//return $alert='<--'.$result.'<'.$ainterval_l.' Absurd Low';
		}
	}

	if(is_numeric($ainterval_h))
	{
		if($result>$ainterval_h)
		{
			return $alert=$GLOBALS['absurd_high_message'];
			//return $alert='<--'.$result.'>'.$ainterval_h.' Absurd high';
		}
		
	}

	if(is_numeric($cinterval_l))
	{
		if($result<$cinterval_l)
		{
			return $alert=$GLOBALS['critical_low_message'];
			//return $alert='<--'.$result.'<'.$cinterval_l.' Critical Low';

		}
	}

	if(is_numeric($cinterval_h))
	{
		if($result>$cinterval_h)
		{
			//return $alert='<--'.$result.'>'.$cinterval_h.' Critical High';
			return $alert=$GLOBALS['critical_high_message'];;
		}
	}


	if(is_numeric($interval_l))
	{
		if($result<$interval_l)
		{
			//return $alert='<--'.$result.'<'.$interval_l.' Abnormal Low';
			return $alert=$GLOBALS['abnormal_low_message'];;
		}
	}

	if(is_numeric($interval_h))
	{
		if($result>$interval_h)
		{
			//return $alert='<--'.$result.'>'.$interval_h.' Abnormal high';
			return $alert=$GLOBALS['abnormal_high_message'];;
		}
	}

	return '';			
}

function display_dw($ex_result,$label='')
{
	$ar=unpack('C*', $ex_result);

	//$arr=str_split($ex_result);
	//$an=array();
	//$counter=0;
	//$max=count($arr);
	
	//echo '<table border=1>';
	//foreach($arr as $kk=>$vv)
	//{
		
		//echo '<tr><td>'.$kk.'</td><td>'.$vv.'</td><td>'.ord($vv).'</td>
		//<td style="font-size:4px">';
		//for($i=0;$i<(int)(ord($vv))-32;$i++)
		//{
			//echo 'o';
		//}
		//echo '</td>
		//</tr>';
	//}
	//echo '</table>';
//echo '<pre>';print_r($an);print_r($ar);print_r($arr);
	$width=256; //128 X 2
    $height=128; //256;//223+32=255 make is half to save space
    $im = imagecreatetruecolor($width,$height);
    $white = imagecolorallocate($im, 255, 255, 225);
    $black = imagecolorallocate($im, 0,0,0);
	imagefill($im,0,0,$white);
	imagestring($im, 5, 3, 1, $label, $black);
	$px=0;
	$py=256;
	$length=count($ar);
	
	//for($p=1;$p<$length;$p=$p+2)
	//{
		//$y=$ar[$p]+$ar[$p+1];
		//$x=$p*2;
		////imagesetpixel ( $im , $x , $y , $black );
		//imageline ( $im , $x , 0 , $x , $y-64 , $black ) ;

	//}
	//foreach ($ar as $k=>$v)
	//{
		////Micros-60
		////base line=space=0x20=32
		////max amplitude=223 (223+32=255)
		//$y=(256-$v)/2 +16; //make half add 16 to get baseline
		////$y=$v/2 +16; //make half add 16 to get baseline
		//$x=$k*2;	//every two pixel
		////imagesetpixel ( resource $image , int $x , int $y , int $color ) 
		////imagesetpixel ( $im , $x , $y , $black );
		//imageline ( $im , $px , $py , $x , $y , $black ) ;
		//$py=$y;
		//$px=$x;
	//}

	foreach ($ar as $k=>$v)
	{
		//Micros-60
		//base line=space=0x20=32
		//max amplitude=223 (223+32=255)
		$y=(256-$v)/2 +16; //make half add 16 to get baseline
		$x=$k*2;	//every two pixel
		imageline ( $im , $x , 128 , $x , $y , $black ) ;
	}	
	ob_start();	
	imagepng($im);
	$myStr = ob_get_contents();
	ob_end_clean();
	
	echo "<img src='data:image/png;base64,".base64_encode($myStr)."'/>";
	imagedestroy($im);	

}


function view_field_any($link,$ex_id,$sample_id,$compact='no')
{
	//if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$ex_id,'select'))
	//{
	//	echo '<h5 class="bg-warning">This user is not authorized for [select] with examination_id='.$ex_id.'</h5>';
	//	return false;
	//}	
	//echo $compact;
	$examination_details=get_one_examination_details($link,$ex_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	$ex_compact=isset($edit_specification['compact'])?$edit_specification['compact']:'';
	$display_format=$examination_details['display_format'];

	if($compact!='compact')
	{
		if($type=='blob')
		{	
			view_field_blob($link,$ex_id,$sample_id,$display_format);
		}
		else
		{
			if(in_array($type,['id_multi_sample','id_single_sample']))
			{
				$ex_result=get_id_type_examination_result($link,$sample_id,$ex_id);
			}
			else
			{
				$ex_result=get_one_ex_result($link,$sample_id,$ex_id);
			}
			view_field($link,$ex_id,$ex_result,$sample_id);
		}
	}
	else
	{
		//echo 'xxxx';
		if($type=='blob')
		{	
			//view_field_blob($link,$ex_id,$sample_id);
		}
		else if($ex_compact!=='no')
		{

			if(in_array($type,['id_multi_sample','id_single_sample']))
			{
				$ex_result=get_id_type_examination_result($link,$sample_id,$ex_id);
			}
			else
			{
				$ex_result=get_one_ex_result($link,$sample_id,$ex_id);
			}
			view_field_compact($link,$ex_id,$ex_result);
			//echo '<div><div class="d-inline-block">'.$examination_details['name'].':</div><div class="d-inline-block text-success">'.$ex_result.'</div></div>';
		}
	}
}



function view_field($link,$ex_id,$ex_result,$sample_id='')
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$display_format=$examination_details['display_format'];
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$help=isset($edit_specification['help'])?$edit_specification['help']:'';
		
		$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';	
		if($hide=='yes'){  $print_hide=" print_hide ";}else{$print_hide='';}
		//echo $print_hide;
		
		
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';
		$interval_l=isset($edit_specification['interval_l'])?$edit_specification['interval_l']:'';
		$cinterval_l=isset($edit_specification['cinterval_l'])?$edit_specification['cinterval_l']:'';
		$ainterval_l=isset($edit_specification['ainterval_l'])?$edit_specification['ainterval_l']:'';
		$interval_h=isset($edit_specification['interval_h'])?$edit_specification['interval_h']:'';
		$cinterval_h=isset($edit_specification['cinterval_h'])?$edit_specification['cinterval_h']:'';
		$ainterval_h=isset($edit_specification['ainterval_h'])?$edit_specification['ainterval_h']:'';
		$img=isset($edit_specification['img'])?$edit_specification['img']:'';
		if($examination_details['append_user']==1)
		{
			$user_info=get_user_info($link,$_SESSION['login']);
			$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
		}
		else
		{
			$append_info='';
		}
		if($img=='dw')
		{
			echo '<div class="basic_form " id="ex_'.$ex_id.'">';
			echo '	<div class="my_label border border-dark text-wrap">'.$examination_details['name'].'</div>
				<div class="border border-dark"><pre class="m-0 p-0 border-0">';
			display_dw($ex_result);
			echo '</pre></div>';							
			echo '<div class="help border border-dark"><pre style="border-color:white">'.$help.'</pre></div>';
			echo '</div>';			
		}
		elseif($type=='subsection')
		{
			echo '<div class="basic_form " id="ex_'.$ex_id.'">';
				echo '	<div class="my_label text-wrap"></div>
				<div class="border">
				<h3 class="text-center">'.$examination_details['name'].'</h3>
				</div>
				<div class="help"></div>';
			echo '</div>';
		}

		else
		{
			if(strlen($display_format)==0){$display_format='horizontal3';}
			
			
				echo '<div class="  '.$display_format.' " id="ex_'.$ex_id.'">';
					if(in_array($type,['id_multi_sample','id_single_sample']))
					{
						echo '	<div role=group class="my_label text-wrap btn-toolbar lead w-auto border '.$print_hide.' ">'.$examination_details['name'];
							get_lables_button($link,$sample_id,$ex_id);
							xxx_set_unique_id_prev_next_button($link,$sample_id,$ex_id);
						echo '</div>';
					}
					else
					{
						echo '	<div class="my_label text-wrap lead w-auto border '.$print_hide.'">'.$examination_details['name'].':';					
						echo '</div>';

					}
						
					
					echo '<div class="border"><pre class="m-1 p-0 border-0 '.$print_hide.'" style="white-space: pre-wrap;">'.
						htmlspecialchars($ex_result.' '.
						decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h)).
						$append_info.
						'</pre></div>';
						
					//echo '<div class="help border '.$print_hide.'"><pre style="border-color:white" style="white-space: pre-wrap;">'.$help.'</pre></div>';
					echo '<div class="help border '.$print_hide.'"><pre style="border-color:white" style="white-space: pre-wrap;">'.$examination_details['display_help'].'</pre></div>';
				echo '</div>';
		}
		
}				


function get_lables_button($link,$sample_id,$examination_id)
{
	$sql='select * from labels where examination_id=\''.$examination_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	if($examination_id=='sample_id')
	{
		$ex_name='sample_id';
	}
	else
	{
		$examination_details=get_one_examination_details($link,$examination_id);
		$ex_name=$examination_details['name'];
	}
		echo '<div class="btn-toolbar">';

		while($ar=get_single_row($result))
		{
			//print_r($ar);
			$data=json_decode($ar['data'],true);
			//$caption=isset($data['caption'])?$data['caption']:'';
			$caption=$ar['caption'];
				//function xxx_any_id_barcode_button($sample_id,$label_id,$label)

				//xxx_any_id_barcode_button($sample_id,$ar['id'],'||'.($ex_name.$caption).'||');
				xxx_any_id_barcode_button($sample_id,$ar['id'],$caption);
		}
		echo '</div>';
	
}

function view_field_compact($link,$ex_id,$ex_result)
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$display_format=$examination_details['display_format'];
			if(strlen($display_format)==0){$display_format='horizontal3';}
			echo '<div class="'.$display_format.'">';
				echo '<div>'.$examination_details['name'].':<span class="text-success">'.htmlspecialchars($ex_result).'</span></div>';
				echo '<div></div>';
				echo '<div></div>';
			echo '</div>';
		
}				

function view_field_hr($link,$ex_id,$ex_result)
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$help=isset($edit_specification['help'])?$edit_specification['help']:'';
		$interval_l=isset($edit_specification['interval_l'])?$edit_specification['interval_l']:'';
		$cinterval_l=isset($edit_specification['cinterval_l'])?$edit_specification['cinterval_l']:'';
		$ainterval_l=isset($edit_specification['ainterval_l'])?$edit_specification['ainterval_l']:'';
		$interval_h=isset($edit_specification['interval_h'])?$edit_specification['interval_h']:'';
		$cinterval_h=isset($edit_specification['cinterval_h'])?$edit_specification['cinterval_h']:'';
		$ainterval_h=isset($edit_specification['ainterval_h'])?$edit_specification['ainterval_h']:'';
						
		echo '<div id="ex_'.$ex_id.'"><pre><b>'.$examination_details['name'].':</b>'.
					htmlspecialchars($ex_result).' '.				
					decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).'</pre>';
		echo '</div>';
}				


function echo_upload_two_pk($sample_id,$examination_id)
{
	echo '<form method=post class="d-inline" enctype="multipart/form-data">';
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '<input type=hidden readonly size=8  name=examination_id value=\''.$examination_id.'\'>';
	echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';		
	echo '<input type=file name=fvalue >';
	echo '<button  class="btn btn-success" type=submit name=action value=upload>Upload</button>';
	echo'</form>';
}

function file_to_str($link,$file)
{
	if($file['size']>0)
	{
		$fd=fopen($file['tmp_name'],'r');
		$size=$file['size'];
		$str=fread($fd,$size);
		return my_safe_string($link,$str);
	}
	else
	{
		return false;
	}
}

function save_result_blob($link)
{
		$blob=file_to_str($link,$_FILES['fvalue']);
		if(strlen($blob)!=0)
		{
		$sql='update result_blob 
				set 
					fname=\''.$_FILES['fvalue']['name'].'\'	,
					result=\''.$blob.'\'	
				where 
					sample_id=\''.$_POST['sample_id'].'\' 
					and
					examination_id=\''.$_POST['examination_id'].'\'';
		//echo $sql;
			if(!$result=run_query($link,$GLOBALS['database'],$sql))
			{
				echo '<br>Data not updated';
			}
			else
			{
				echo '<p>'.$_FILES['fvalue']['name'].' Saved</p>';				
			}	
		}
		else
		{
			echo '<p>0 size file. data not updated</p>';				
		}
}


function get_basic()
{
	$YY=strftime("%y");

echo '<div id=basic class="tab-pane active">';
echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="mrd">MRD</label>
			<input size=13 id=mrd name=mrd class="form-control text-danger" required="required" type=text pattern="SUR/[0-9][0-9]/[0-9]{8}" placeholder="MRD" value="SUR/'.$YY.'/"\>
			<p class="help"><span class=text-danger>Must have</span> 8 digit after SUR/YY/</p>';
echo '</div>';
echo '</div>';

}


//not covered by pane
function get_basic_specific()
{
	$YY=strftime("%y");
echo '<div id=basic class="tab-pane active">';

echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="mrd">MRD</label>
			<input size=13 id=mrd name=\'__ex__'.$GLOBALS['mrd'].'\' class="form-control text-danger" required="required" type=text pattern="SUR/[0-9][0-9]/[0-9]{8}" placeholder="MRD" value="SUR/'.$YY.'/"\>
			<p class="help"><span class=text-danger>Must have</span> 8 digit after SUR/YY/</p>';
echo '</div>';
echo '</div>';
}

//not covered by pane
function get_basic_specific_no_restriction()
{

	$YY=strftime("%y");

	echo '<div id=basic class="tab-pane active">';

	echo '<div class="basic_form">';
			echo '  <label class="my_label text-danger" for="mrd">MRD</label>
				<input size=13 id=mrd name=__ex__'.$GLOBALS['mrd'].' class="form-control text-danger" required="required" 
					type=text placeholder=""  \>
							<p class="help">MRD Example -> SUR/20/00123456</span</p>';
	echo '</div>';
	echo '</div>';
}


function get_more_basic()
{

echo '<div id=more_basic class="tab-pane ">'; //donot mix basic_form(grid) with bootsrap class
echo '<div class="basic_form">';
	echo '	<label  class="my_label"  for="department">Department:</label>';
			mk_select_from_array('department',$GLOBALS['department']);
			echo '<p class="help">Select Department</p>';
			
	echo '	<label  class="my_label"  for="unit">Unit</label>';
			mk_select_from_array('unit',$GLOBALS['unit']);
			echo '<p class="help">Select Unit</p>';
			
	echo '	<label  class="my_label"  for="location3">Ward/OPD</label>
			<div class="form-control">
					<label class="radio-inline"><input type="radio" name="wardopd" value=OPD >OPD</label>
					<label class="radio-inline"><input type="radio" name="wardopd" value=Ward >Ward</label>
			</div>
			<p class="help">Ward/OPD</p>';
			
	echo '	<label  class="my_label"  for="ow_no">OPD/Ward No:</label>';
			mk_select_from_array('ow_no',$GLOBALS['ow_no']);
			echo '<p class="help">OPD/Ward Number</p>';

			
	echo '	<label  class="my_label" for="unique_id">AADHAR:</label>
			<input class="form-control" type=text id=unique_id name=unique_id placeholder=AADHAR>
			<p class="help">Full 12 Digit AADHAR number</p>';

	echo '	<label  class="my_label" for="unique_id">Mobile</label>
			<input class="form-control" type=text id=mobile name=mobile placeholder=Mobile>
			<p class="help">10 digit Mobile number</p>';
						
	echo '	<label  class="my_label" for="sex">Sex:</label>
			<select class="form-control" id=sex name=sex><option></option><option>M</option><option>F</option><option>O</option></select>
			<p class="help"> O for others</p>';
			
	echo '	<label   class="my_label" for="dob">DOB:</label>
			<input type=date id=dob name=dob>
			<p class="help">Approximate DOB</p>';

	echo '	<label  class="my_label" for="age">Age</label>
			<input class="form-control" type=text id=age name=age placeholder=Age>
			<p class="help">Write age in what ever way you like</p>';
			
	echo '	<label  class="my_label"  for="extra">Extra:</label>
			<input class="form-control" type=text id=extra name=extra placeholder=Extra>
			<p class="help">Any other extra details</p>';
echo '</div>';
echo '</div>';

}


function get_data($link)
{
	echo '<form method=post class="bg-light jumbotron">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';

	echo '<ul class="nav nav-pills nav-justified">
			<li class="active" ><button class="btn btn-secondary" type=button data-toggle="tab" href="#basic">Basic</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#examination">Examinations</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#profile">Profiles</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#super_profile">SuperProfiles</button></li>
			<li><button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button></li>
		</ul>';
	echo '<div class="tab-content">';
		get_basic();
		get_examination_data($link);
		get_profile_data($link);
		get_super_profile_data($link);
	echo '</div>';

	echo '</form>';			
}
function add_get_data($link,$sample_id)
{		
	echo '<form method=post class="bg-light">';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
   echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';
   echo'<div class="text-info"><h3>Insert New Fields</h3></div>';
	echo '<ul class="nav nav-pills nav-justified">
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#examination">Examinations</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#profile">Profiles</button></li>
			<li><button class="btn btn-secondary" type=button  data-toggle="tab" href="#super_profile">SuperProfiles</button></li>
			<li><button type=submit class="btn btn-primary form-control" name=action value=insert>Save</button></li>
		</ul>';
	echo '<div class="tab-content">';
		get_examination_data($link);
		get_profile_data($link);
		get_super_profile_data($link);
	echo '</div>';

	echo '</form>';			
}

/*
function get_examination_data($link)
{
	$sql='select * from examination';
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo '<div id=examination class="tab-pane">';
	echo '<div class="ex_profile">';
	while($ar=get_single_row($result))
	{
		my_on_off_ex($ar['name'],$ar['examination_id']);
	}
	echo '<input type=text name=list_of_selected_examination id=list_of_selected_examination>';
	echo '</div>';
	echo '</div>';
}
*/

function get_examination_data($link)
{
	$sql='select * from profile';
	$result=run_query($link,$GLOBALS['database'],$sql);

	echo '<div id=examination class="tab-pane">';
	
		//content 1
		echo '<div class="tab-content">';

//////////////////////start of content 1///////////

			//internal tab menu start
			echo '<ul class="nav nav-pills nav-justified">
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".general">general</button></li>
					<li><button class="btn btn-primary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".BI">BI</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".HI">HI</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".CP">CP</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".HP">HP</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".CY">CY</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".MI">MI</button></li>
				</ul>';
			//internal tab menu end

				while($ar=get_single_row($result))
				{
					$pinfo=get_profile_info($link,$ar['profile_id']);
					$profile_specification=json_decode($pinfo['edit_specification'],true);
					$group=isset($profile_specification['group'])?$profile_specification['group']:'general';

					$div_id='profile_'.$pinfo['profile_id'];

					$div_id_for_group='"'.$div_id.'_'.$group.'"';
					$div_class_for_group=$group;

					///
					if($group=='BI')
					{
						echo '<div id='.$div_id_for_group.' class="show '.$div_class_for_group.'">';
					}
					else
					{
						echo '<div id='.$div_id_for_group.' class="collapse '.$div_class_for_group.'">';
					}
					
					echo '<div class="tab-content">';
					///
						//echo '<img src="img/show_hide.png" height=32 data-toggle="collapse" class=sh href=\'#'.$div_id.'\' ><div></div><div></div>';
						echo '<div class="collapse show " id=\''.$div_id.'\'>';

							echo '<span class="border border-dark rounded d-inline">Profile';
							my_on_off_profile($pinfo['name'],$ar['profile_id']);
							echo '</span>';

							echo '<div class="ex_profile">';
								$ex_list=array_merge(explode(',',$ar['examination_id_list']),explode(',',$ar['extra']));
								//print_r(explode(',',$ar['examination_id_list']));
								//print_r(explode(',',$ar['extra']));
								$ex_list=array_filter($ex_list);
								//print_r($ex_list);
								foreach($ex_list as $v)
								{
									$ex_data=get_one_examination_details($link,$v);
									$sr=$ex_data['sample_requirement']!='None'?$ex_data['sample_requirement']:'';
									$edit_specification=json_decode($ex_data['edit_specification'],true);

									$method=isset($edit_specification['method'])?$edit_specification['method']:'';
									$ex_limit=isset($edit_specification['limit_request'])?$edit_specification['limit_request']:0;
									$user_limit=get_user_request_limit($link);
									if($user_limit>=$ex_limit)
									{
										my_on_off_ex($ex_data['name'].'<br>'.$sr.'<br>'.$method,$ex_data['examination_id']);
									}
								}
							echo '</div>';

						echo '</div>';

					///
					echo '</div>';
					echo '</div>';
					///
				}


//////////////////////end of content 1///////////
		echo '</div>';

		//content 2
		echo '<input class="tab-content" type=text readonly name=list_of_selected_examination id=list_of_selected_examination>';
	echo '</div>';
}

function get_profile_data($link)
{
	$sql='select * from profile';
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo '<div id=profile  class="tab-pane">';
				//internal tab menu start
			echo '<ul class="nav nav-pills nav-justified">
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".m_general">general</button></li>
					<li><button class="btn btn-primary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".m_BI">BI</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".m_HI">HI</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".m_CP">CP</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".m_HP">HP</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".m_CY">CY</button></li>
				</ul>';
			//internal tab menu end
				
	echo '<div class="ex_profile">';
	
	
	

			
	while($ar=get_single_row($result))
	{
					$pinfo=get_profile_info($link,$ar['profile_id']);
					$profile_specification=json_decode($pinfo['edit_specification'],true);
					$group=isset($profile_specification['group'])?$profile_specification['group']:'general';

					$div_id='m_profile_'.$pinfo['profile_id'];
					
					$div_id_for_group='"'.$div_id.'_'.$group.'"';
					$div_class_for_group='m_'.$group;
					
					///
					if($group=='BI')
					{
						echo '<div id='.$div_id_for_group.' class="show '.$div_class_for_group.'">';
					}
					else
					{
						echo '<div id='.$div_id_for_group.' class="collapse '.$div_class_for_group.'">';
					}
					echo '<div class="tab-content">';		
					///
		
		
		my_on_off_profile($ar['name'],$ar['profile_id']);
		
		
					///
					echo '</div>';
					echo '</div>';
					///
		
	}
	echo '<input type=text readonly name=list_of_selected_profile id=list_of_selected_profile>';
	echo '</div>';
	echo '</div>';
}

function get_super_profile_data($link)
{
	$sql='select * from super_profile';
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo '<div id=super_profile  class="tab-pane">';
	
				//internal tab menu start
			echo '<ul class="nav nav-pills nav-justified">
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".s_general">general</button></li>
					<li><button class="btn btn-primary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".s_BI">BI</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".s_HI">HI</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".s_CP">CP</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".s_HP">HP</button></li>
					<li><button class="btn btn-secondary" onclick="toggle_color(this)" type=button  data-toggle="collapse" data-target=".s_CY">CY</button></li>
				</ul>';
			//internal tab menu end
	
	echo '<div class="ex_profile">';
	while($ar=get_single_row($result))
	{
					$sinfo=get_super_profile_info($link,$ar['super_profile_id']);
					$s_specification=json_decode($sinfo['edit_specification'],true);
					$group=isset($s_specification['group'])?$s_specification['group']:'general';
					$readonly_availability=isset($s_specification['readonly_availability'])?$s_specification['readonly_availability']:'';
					//echo '<h1>-'.$readonly_availability.'-</h1>';
					$div_id='s_profile_'.$sinfo['super_profile_id'];
					$div_id_for_group='"'.$div_id.'_'.$group.'"';
					$div_class_for_group='s_'.$group;
					
					///
						
					
					if($group=='BI')
					{
						echo '<div id='.$div_id_for_group.' class="show '.$div_class_for_group.'">';
					}
					else
					{
						echo '<div id='.$div_id_for_group.' class="collapse '.$div_class_for_group.'">';
					}
					
					echo '<div class="tab-content">';
					///
		
		if(requestonly_check($link)===False)
		{
			//echo 'false';
			my_on_off_super_profile($ar['name'],$ar['super_profile_id']);
		}
		else if ($readonly_availability=='yes')
		{
			//echo 'true';
			my_on_off_super_profile($ar['name'],$ar['super_profile_id']);
		}


					///
					echo '</div>';
					echo '</div>';
					///
	}
	echo '<input type=text readonly name=list_of_selected_super_profile id=list_of_selected_super_profile>';
	echo '</div>';
	echo '</div>';
}


function get_profile_info($link,$profile_id)
{
	$sql='select * from profile where profile_id=\''.$profile_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	return get_single_row($result);
}

function get_super_profile_info($link,$super_profile_id)
{
	$sql='select * from super_profile where super_profile_id=\''.$super_profile_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	return get_single_row($result);
}


function get_examination_blob_data($link)
{
	$sql='select * from examination where examination_id>10000';
	$result=run_query($link,$GLOBALS['database'],$sql);
	echo '<div id="examination_blob" class="tab-pane ">';
	while($ar=get_single_row($result))
	{
		my_on_off_ex_blob($ar['name'],$ar['examination_id']);
	}
	echo '<input type=text name=list_of_selected_examination_blob id=list_of_selected_examination_blob>';
	echo '</div>';
}

function my_on_off_ex($label,$id)
{
        
	echo '<button 
			class="btn btn-sm btn-outline-primary"
			type=button 
			onclick="select_examination_js(this, \''.$id.'\',\'list_of_selected_examination\')"
			>'.$label.'</button>';
}
function my_on_off_ex_blob($label,$id)
{
	
	echo '<button 
			class="btn btn-sm btn-outline-primary"
			type=button 
			onclick="select_examination_blob_js(this, \''.$id.'\',\'list_of_selected_examination_blob\')"
			>'.$label.'</button>';
}
function my_on_off_profile($label,$id)
{
	
	echo '<button 
			class="btn btn-sm btn-outline-primary"
			type=button 
			onclick="select_profile_js(this, \''.$id.'\',\'list_of_selected_profile\')"
			>'.$label.'</button>';
}
function my_on_off_super_profile($label,$id)
{
	
	echo '<button 
			class="btn btn-sm btn-outline-primary"
			type=button 
			onclick="select_super_profile_js(this, \''.$id.'\',\'list_of_selected_super_profile\')"
			>'.$label.'</button>';
}

function show_sample_required($sar)
{
	//print_r(array_values($sar));
	echo '<h5 class="text-dark d-inline  ">Required Samples with alloted Sample ID are as follows</h5>';
	sample_id_barcode_button_array(array_values($sar));

	foreach($sar as $k=>$v)
	{
		echo '<h5 ><span class="text-success">'.$k.'</span>:<span class="text-primary">'.$v.'</span></h5>';
	}
}
//find ex
//find sample req for each
//get unique 

function convert_super_profile_to_profile($link,$super_profile_csv)
{
	//echo '<h5>sss</h5>';
	$super_profile_requested=explode(',',$super_profile_csv);
	$profile_requested_in_super_profile=array();
	foreach($super_profile_requested as $sp)
	{
		$psql='select * from super_profile where super_profile_id=\''.$sp.'\'';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		if(isset($ar['profile_id_list']))
		{
			$profile_requested=explode(',',$ar['profile_id_list']);
			$profile_requested_in_super_profile=array_merge($profile_requested_in_super_profile,$profile_requested);
		}
	}
	//print_r($profile_requested_in_super_profile);
	return $profile_requested_in_super_profile;
}

//used nowhere
function save_insert($link)
{
			//find list of super_profiles requested, merge with profiles requested,then..
			//find list of examinations requested
			//determine sample-type required
			//find sample_id to be given
			//insert all examinations/non-examinations in result table
			
	//find list of examinations requested//////////////////////////////
	$requested=array();
	//if(isset($_POST['mrd'])){$requested[]=$GLOBALS['mrd'];} //makesure it is always available
	if(isset($_POST['mrd'])){$requested[]=$GLOBALS['mrd'];} //makesure it is always available
	
	$ex_requested=array_filter(explode(',',$_POST['list_of_selected_examination']));
	$requested=array_merge($requested,$ex_requested);
	//echo '<pre>following is requested:<br>';print_r($requested);echo '</pre>';
	
	$profile_requested=explode(',',$_POST['list_of_selected_profile']);
	$profile_requested_in_super_profile=convert_super_profile_to_profile($link,$_POST['list_of_selected_super_profile']);
	$profile_requested=array_filter(array_unique(array_merge($profile_requested,$profile_requested_in_super_profile)));

//0	
	//echo '<pre>following profiles are requested:<br>';print_r($profile_requested);echo '</pre>';
	
	foreach($profile_requested as $value)
	{
		$psql='select * from profile where profile_id=\''.$value.'\'';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		$profile_ex_requested_main=explode(',',$ar['examination_id_list']);
		
		$profile_ex_requested=$profile_ex_requested_main;
		$requested=array_merge($requested,$profile_ex_requested);
	}

	$requested=array_filter(array_unique($requested));
//1	
	//echo '<pre>following is requested:<br>';print_r($requested);echo '</pre>';

	//determine sample-type required for each and also distinct types////////////////////////////////////
	$sample_required=array();
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	$stype_for_each_requested=array();
	
	foreach($requested as $ex)
	{
		$psql='select sample_requirement from examination where examination_id=\''.$ex.'\'';
		//echo $psql.'<br>';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		$sample_required[]=$ar['sample_requirement'];
		$stype_for_each_requested[$ex]=$ar['sample_requirement'];
		//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	}

//2	
	//echo '<pre>following are sample_requirements for each:<br>';print_r($stype_for_each_requested);echo '</pre>';
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	$sample_required=array_unique($sample_required);
//3	
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	//determine sample_id to be given/////////////////////////////////
	$sample_id_array=set_sample_id($link,$sample_required);
//4	
	//echo '<pre>following samples ids are alloted:<br>';print_r($sample_id_array);echo '</pre>';
	show_sample_required($sample_id_array);
//insert examinations////////////////////////////////////////////
	
	foreach($sample_id_array as $stype=>$sid)
	{
		foreach($stype_for_each_requested as $ex=>$exreq)
		{
			$examination_details=get_one_examination_details($link,$ex);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$type=isset($edit_specification['type'])?$edit_specification['type']:'';
					
				
				
			//echo $ex.'<br>';
			if($stype==$exreq)
			{
				if($type!='blob')
				{
					insert_one_examination_without_result($link,$sid,$ex);
				}
				else
				{
					//echo 'blob<br>';
					insert_one_examination_blob_without_result($link,$sid,$ex);
				}
			}
			if($exreq=='None')
			{
					if($ex==$GLOBALS['mrd'])
					{
						insert_one_examination_with_result($link,$sid,$ex,$_POST['mrd']);
					}
					elseif($ex==$GLOBALS['sample_requirement'])
					{
						//already inserted during set_sample_id()
					}
					else
					{
						if($type!='blob')
						{
							insert_one_examination_without_result($link,$sid,$ex);
						}
						else
						{
							insert_one_examination_blob_without_result($link,$sid,$ex);
						}
					}
			}
		}
	}

	return $sample_id_array	;
}




function save_insert_specific($link)
{
			//find list of super_profiles requested, merge with profiles requested,then..
			//find list of examinations requested
			//determine sample-type required
			//find sample_id to be given
			//insert all examinations/non-examinations in result table
			
	//find list of examinations requested//////////////////////////////
	$requested=array();
	$ex_requested=array_filter(explode(',',$_POST['list_of_selected_examination']));
	$requested=$requested+$ex_requested;
	//echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';
	
	$profile_requested=explode(',',$_POST['list_of_selected_profile']);
	
	$profile_requested_in_super_profile=convert_super_profile_to_profile($link,$_POST['list_of_selected_super_profile']);
	$profile_requested=array_filter(array_unique(array_merge($profile_requested,$profile_requested_in_super_profile)));
	//echo '<pre>following profiles are requesteddddddd:<br>';print_r($profile_requested);echo '</pre>';

	foreach($profile_requested as $value)
	{
		$psql='select * from profile where profile_id=\''.$value.'\'';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		//echo $psql;print_r($ar);
		$profile_ex_requested_main=explode(',',$ar['examination_id_list']);

		$profile_ex_requested=$profile_ex_requested_main;
		$requested=array_merge($requested,$profile_ex_requested);
	}

//////for EXTRA
	$super_profile_requested=explode(',',$_POST['list_of_selected_super_profile']);
	foreach($super_profile_requested as $sp)
	{
		$ssql='select * from super_profile where super_profile_id=\''.$sp.'\'';
		$result=run_query($link,$GLOBALS['database'],$ssql);
		if(rows_affected($link)>0)
		{
			$ar=get_single_row($result);
			//echo $psql;print_r($ar);
			$extra_requested_in_super_profile=explode(',',$ar['extra']);
			$requested=array_merge($requested,$extra_requested_in_super_profile);
		}
	}
//////end of extra

	$with_result=array();
	foreach($_POST as $k=>$v)
	{
		$tok=explode('__',$k);
		if(isset($tok[1])=='ex')
		{
			$with_result_id=$tok[2];
			//echo $tok[2].'<br>';
			$with_result[]=$tok[2];
		}
	}
	$requested=array_merge($requested,$with_result);
	$requested=array_filter(array_unique($requested));
//1
	//echo '<pre>following is requested:<br>';print_r($requested);echo '</pre>';

	//determine sample-type required for each and also distinct types////////////////////////////////////
	$sample_required=array();
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	$stype_for_each_requested=array();

	foreach($requested as $ex)
	{
		$psql='select sample_requirement from examination where examination_id=\''.$ex.'\'';
		//echo $psql.'<br>';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		$sample_required[]=$ar['sample_requirement'];
		$stype_for_each_requested[$ex]=$ar['sample_requirement'];
		//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	}

//2	
	//echo '<pre>following are sample_requirements for each:<br>';print_r($stype_for_each_requested);echo '</pre>';
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	$sample_required=array_unique($sample_required);
//3	
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	//determine sample_id to be given/////////////////////////////////
	$sample_id_array=set_sample_id($link,$sample_required);
//4	
	//echo '<pre>following samples ids are alloted:<br>';print_r($sample_id_array);echo '</pre>';
	show_sample_required($sample_id_array);
//insert examinations////////////////////////////////////////////
	
	foreach($sample_id_array as $stype=>$sid)
	{
		foreach($stype_for_each_requested as $ex=>$exreq)
		{

			$examination_details=get_one_examination_details($link,$ex);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$type=isset($edit_specification['type'])?$edit_specification['type']:'';
			//echo $ex.'<br>';
			if($stype==$exreq)
			{
				if($type!='blob')
				{
					if(array_key_exists('__ex__'.$ex,$_POST))
					{
						//echo $_POST['__ex__'.$ex].'<br>';
						insert_one_examination_with_result($link,$sid,$ex,$_POST['__ex__'.$ex]);
					}
					else
					{					
						insert_one_examination_without_result($link,$sid,$ex);
					}
				}
				else
				{
					insert_one_examination_blob_without_result($link,$sid,$ex);
				}
			}
			if($exreq=='None')
			{
				////echo '__ex__'.$ex.'<br>';
					//if($ex==$GLOBALS['mrd'])
					//{
						//insert_one_examination_with_result($link,$sid,$ex,$_POST['mrd']);
					//}

					if(array_key_exists('__ex__'.$ex,$_POST))
					{
						//echo $_POST['__ex__'.$ex].'<br>';
						insert_one_examination_with_result($link,$sid,$ex,$_POST['__ex__'.$ex]);
					}
					elseif($ex==$GLOBALS['sample_requirement'])
					{
						//already inserted during set_sample_id()
					}
					else
					{
						if($type!='blob')
						{
							insert_one_examination_without_result($link,$sid,$ex);
						}
						else
						{
							insert_one_examination_blob_without_result($link,$sid,$ex);
						}
					}
			}
		}
	}

	return $sample_id_array	;
}



function save_insert_specific_with_parameters($link,$list_of_selected_examination='',$list_of_selected_profile='',$list_of_selected_super_profile='')
{
			//find list of super_profiles requested, merge with profiles requested,then..
			//find list of examinations requested
			//determine sample-type required
			//find sample_id to be given
			//insert all examinations/non-examinations in result table
			
	//find list of examinations requested//////////////////////////////
	$requested=array();
	$ex_requested=array_filter(explode(',',$list_of_selected_examination));
	$requested=$requested+$ex_requested;
	//echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';
	
	$profile_requested=explode(',',$list_of_selected_profile);
	
	$profile_requested_in_super_profile=convert_super_profile_to_profile($link,$list_of_selected_super_profile);
	$profile_requested=array_filter(array_unique(array_merge($profile_requested,$profile_requested_in_super_profile)));
	//echo '<pre>following profiles are requesteddddddd:<br>';print_r($profile_requested);echo '</pre>';

	foreach($profile_requested as $value)
	{
		$psql='select * from profile where profile_id=\''.$value.'\'';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		//echo $psql;print_r($ar);
		$profile_ex_requested_main=explode(',',$ar['examination_id_list']);

		$profile_ex_requested=$profile_ex_requested_main;
		$requested=array_merge($requested,$profile_ex_requested);
	}

//////for EXTRA
	$super_profile_requested=explode(',',$list_of_selected_super_profile);
	foreach($super_profile_requested as $sp)
	{
		$ssql='select * from super_profile where super_profile_id=\''.$sp.'\'';
		$result=run_query($link,$GLOBALS['database'],$ssql);
		if(rows_affected($link)>0)
		{
			$ar=get_single_row($result);
			//echo $psql;print_r($ar);
			$extra_requested_in_super_profile=explode(',',$ar['extra']);
			$requested=array_merge($requested,$extra_requested_in_super_profile);
		}
	}
//////end of extra

	$with_result=array();
	foreach($_POST as $k=>$v)
	{
		$tok=explode('__',$k);
		if(isset($tok[1])=='ex')
		{
			$with_result_id=$tok[2];
			//echo $tok[2].'<br>';
			$with_result[]=$tok[2];
		}
	}
	$requested=array_merge($requested,$with_result);
	$requested=array_filter(array_unique($requested));
//1
	//echo '<pre>following is requested:<br>';print_r($requested);echo '</pre>';

	//determine sample-type required for each and also distinct types////////////////////////////////////
	$sample_required=array();
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	$stype_for_each_requested=array();

	foreach($requested as $ex)
	{
		$psql='select sample_requirement from examination where examination_id=\''.$ex.'\'';
		//echo $psql.'<br>';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		$sample_required[]=$ar['sample_requirement'];
		$stype_for_each_requested[$ex]=$ar['sample_requirement'];
		//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	}

//2	
	//echo '<pre>following are sample_requirements for each:<br>';print_r($stype_for_each_requested);echo '</pre>';
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	$sample_required=array_unique($sample_required);
//3	
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	//determine sample_id to be given/////////////////////////////////
	$sample_id_array=set_sample_id($link,$sample_required);
//4	
	//echo '<pre>following samples ids are alloted:<br>';print_r($sample_id_array);echo '</pre>';
	show_sample_required($sample_id_array);
//insert examinations////////////////////////////////////////////
	
	foreach($sample_id_array as $stype=>$sid)
	{
		foreach($stype_for_each_requested as $ex=>$exreq)
		{

			$examination_details=get_one_examination_details($link,$ex);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$type=isset($edit_specification['type'])?$edit_specification['type']:'';
			//echo $ex.'<br>';
			if($stype==$exreq)
			{
				if($type!='blob')
				{
					if(array_key_exists('__ex__'.$ex,$_POST))
					{
						//echo $_POST['__ex__'.$ex].'<br>';
						insert_one_examination_with_result($link,$sid,$ex,$_POST['__ex__'.$ex]);
					}
					else
					{					
						insert_one_examination_without_result($link,$sid,$ex);
					}
				}
				else
				{
					insert_one_examination_blob_without_result($link,$sid,$ex);
				}
			}
			if($exreq=='None')
			{
				////echo '__ex__'.$ex.'<br>';
					//if($ex==$GLOBALS['mrd'])
					//{
						//insert_one_examination_with_result($link,$sid,$ex,$_POST['mrd']);
					//}

					if(array_key_exists('__ex__'.$ex,$_POST))
					{
						//echo $_POST['__ex__'.$ex].'<br>';
						insert_one_examination_with_result($link,$sid,$ex,$_POST['__ex__'.$ex]);
					}
					elseif($ex==$GLOBALS['sample_requirement'])
					{
						//already inserted during set_sample_id()
					}
					else
					{
						if($type!='blob')
						{
							insert_one_examination_without_result($link,$sid,$ex);
						}
						else
						{
							insert_one_examination_blob_without_result($link,$sid,$ex);
						}
					}
			}
		}
	}

	return $sample_id_array	;
}

function get_field_spec($link,$examination_id)
{
	$sql='select * from examination_field_specification  where examination_id=\''.$examination_id.'\' ';
	//echo $sql;
	$result=run_query($link,$GLOBALS['database'],$sql);
	return $ar=get_single_row($result);	//return only first row, if mutiple, only forst one is returned
}

//
function read_field($link,$examination_id,$value,$search='no',$readonly='',$attributes_str='')
{
	//echo '<h1>read_field()</h1>';

	$examination_field_specification=get_field_spec($link,$examination_id);
	//print_r($examination_field_specification);
	if($examination_field_specification)
	{
		if($examination_field_specification['ftype']=='table')
		{
			if($readonly!='readonly')
			{
				mk_select_from_sql($link,'select distinct `'.$examination_field_specification['field'].'` from `'.$examination_field_specification['table'].'`',
									$examination_field_specification['field'],'__ex__'.$examination_field_specification['examination_id'],
									'__ex__'.$examination_field_specification['examination_id'],'',$value,$blank='yes',$attributes_str=$attributes_str);
			}
			else
			{
				echo '<input class="w-100" type=text  '.$readonly.' name=\''.'__ex__'.$examination_field_specification['examination_id'].'\' value=\''.htmlentities($value,ENT_QUOTES).'\'>';
			}
		}
		else if($examination_field_specification['ftype']=='dtable')
		{
			//if($readonly!='readonly')
			//{
			$sql='select 
				distinct `'.$fspec['field'].'` , 
				concat_ws("|",'.$fspec['field_description'].') as description
			from `'.$fspec['table'].'`
			order by '.$fspec['field_description'];
			//echo $sql;
			mk_select_from_sql_with_description(	$link,
													$sql,
													$fspec['field'],
													'__ex__'.$examination_field_specification['examination_id'],
													'__ex__'.$examination_field_specification['examination_id'],
													$value,
													$blank='yes',
													$readonly,
													$attributes_str=$attributes_str);
				echo '<input placeholder="enter search string" type=text id=\'input_for_'.'__ex__'.$examination_field_specification['examination_id'].'\' onchange="find_from_dd(this , \''.$fspec['examination_id'].'\');">';

				
				?>


				<script>
//document.getElementById("alloted_to")[6].text.search(document.getElementById("input_for_alloted_to").value)
					function  find_from_dd(me,idd)
					{
						var option;
						target=document.getElementById(idd);
						//alert(me.value);
						var selectLength = document.getElementById(idd).length;
						for(i=0; i<selectLength;i++)
						{
							if (target[i].text.toLowerCase().search(me.value.toLowerCase())!=-1) 
							{
								//alert(target[i].text);
								//target.selectedIndex=i;
								//return;
								option = document.createElement("option");
								option.text = target[i].text
								option.value = target[i].value
								target.prepend(option); 
								i++;
							}
							else
							{

							}
						}
						target.selectedIndex=0;
						//alert("No record found having >>>>"+me.value+"<<<<");
					}
				</script>


<?php


				

		}
		elseif($examination_field_specification['ftype']=='date')
		{
			if($search=='yes')
			{
				echo '<input type=text '.$readonly.' name=\''.'__ex__'.$examination_id.'\'  value=\''.$value.'\' '.$attributes_str.' >';
			}
			else
			{
				echo '<input type=date id=\''.$field.'\' name=\''.'__ex__'.$examination_id.'\' value=\''.$value.'\' '.$attributes_str.' >';
				$default=strftime("%Y-%m-%d");
				show_source_button($field,$default);
			}
		}
		elseif($examination_field_specification['ftype']=='time')
		{
			if($search=='yes')
			{
				echo '<input type=text  name=\''.'__ex__'.$examination_id.'\' value=\''.$value.'\'  '.$attributes_str.' >';
			}
			else
			{
				echo '<input type=time id=\''.$field.'\'  '.$readonly.' name=\''.'__ex__'.$examination_id.'\' value=\''.$value.'\'  '.$attributes_str.' >';
				$default=strftime("%H:%M");
				show_source_button($field,$default);
			}
		}				
		elseif($examination_field_specification['ftype']=='textarea')
		{
			echo '<pre><textarea class="w-100"  '.$readonly.' name=\''.'__ex__'.$examination_id.'\' '.$attributes_str.'  >'.$value.'</textarea></pre>';
		}	
		else
		{
			echo 'not implemented';
		}
	}
	else
	{
		echo '<input class="w-100" type=text  '.$readonly.' name=\''.'__ex__'.$examination_id.'\'  value=\''.htmlentities($value,ENT_QUOTES).'\'  '.$attributes_str.' >';
	}
}




function get_one_field_for_insert($link,$examination_id,$default_value='')
{
	$examination_details=get_one_examination_details($link,$examination_id);
	if($examination_details===null || count($examination_details)<1){return;}
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){$edit_specification=array();}

	$result=$default_value;
		//echo '<h1>'.$result.'</h1>';

	$type=isset($edit_specification['type'])?$edit_specification['type']:'text';//echo '<h4>'.$type.'</h4>';
	$readonly=isset($edit_specification['readonly'])?$edit_specification['readonly']:'';
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
			if($v==$default_value)
			{
				$option_html=$option_html.'<option selected>'.$v.'</option>';
			}
			{
				$option_html=$option_html.'<option>'.$v.'</option>';
			}
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
		$default=strftime("%Y-%m-%dT%H:%M");
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
					show_source_button($element_id,$default);
					
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

//////////////////////

	elseif($type=='examination_field_specification')
	{
				echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
					echo $examination_details['name'];
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
					read_field($link,$examination_id,$value=$result, $search='',$readonly=$readonly);
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//if($frill){get_primary_result($link,$sample_id,$examination_id);}
				echo '</div>';
			echo '</div>';
			echo '<div class="help"><pre>'.$help.'</pre></div>';	
		echo '</div>';
		
		
		
	}



///////////////////////
	else  
	{
		if(strlen($examination_details['default_value'])>0)
		{
			//echo substr($examination_details['default'],0,7);
			if(strtolower(substr($examination_details['default_value'],0,7))=='select ' )	//run only select query
			{
				$result_default=run_query($link,$GLOBALS['database'],$examination_details['default_value']);
				$ar_default=get_single_row($result_default);
				$default_value=$ar_default['default_value'];
			}
			//else
			//{
				//$default_value='';
			//}
		}

		//else
		//{
			//$default_value='';
		//}
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
						type=\''.$type.'\' >'.$default_value.'</textarea>';
					echo '</div>';
					echo '<div class="d-inline  no-gutters">';
						//get_primary_result($link,$sample_id,$examination_id);
					echo '</div>';
				echo '</div>';
			////
			echo '<p class="help">'.nl2br(htmlspecialchars($help)).'</p>';
		echo '</div>';
	}



////////////





////////////



}


function get_one_field_for_insert_in_primary_result($link,$sample_id,$examination_id)
{
	$examination_details=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){$edit_specification=array();}

		$result='';

	$type=isset($edit_specification['type'])?$edit_specification['type']:'text';
	$readonly=isset($edit_specification['readonly'])?$edit_specification['readonly']:'';
	$help=isset($edit_specification['help'])?$edit_specification['help']:'';
	$pattern=isset($edit_specification['pattern'])?$edit_specification['pattern']:'';
	$required=isset($edit_specification['required'])?$edit_specification['required']:'';
	$placeholder=isset($edit_specification['placeholder'])?$edit_specification['placeholder']:'';
	
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
							<button 
							
							id="'.$element_id.'" 
								name=result
								data-sid="__s__'.$sample_id.'" 
								class="form-control btn btn-info mb-1"
								type=button
								>'.$result.'
					</button>';
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
						name=result
						data-exid="'.$examination_id.'" 
						data-sid="__s__'.$sample_id.'" 
						
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
	{
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
						name=result
						data-exid="'.$examination_id.'" 
						data-sid="__s__'.$sample_id.'" 						
						
						class="form-control" 
						type=text 
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
						name=result
						data-exid="'.$examination_id.'" 
						data-sid="__s__'.$sample_id.'" 
						
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
						name=result
						data-exid="'.$examination_id.'" 
						data-sid="__s__'.$sample_id.'" 
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
				
					echo '<textarea rows=1
					
					id="'.$element_id.'" 
					name=result
					data-exid="'.$examination_id.'" 
					data-sid="__s__'.$sample_id.'" 					
					pattern="'.$pattern.'" 
					class="form-control p-0 m-0 no-gutters" 
					type=\''.$type.'\' ></textarea>';
					
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//get_primary_result($link,$sample_id,$examination_id);
				echo '</div>';
			echo '</div>';
			echo '<p class="help">'.$help.'</p>';	
		echo '</div>';
	} 
	elseif($type=='json')
	{
		//////
		
		$json=isset($edit_specification['json'])?$edit_specification['json']:'';
		//$json_array=json_decode($json,true);
		//$type=isset($edit_specification['type'])?$edit_specification['type']:'text';
				
		echo '<div class="basic_form  m-0 p-0 no-gutters">';
			////
				echo '<div  class="my_lable">';
					echo $examination_details['name'];
				echo '</div>';
			////
			echo '<div class="m-0 p-0 no-gutters">';
				////
				echo '<div class="d-inline-block no-gutters">';
					//print_r($json_array);
					echo '<pre>';print_r($edit_specification['json']);echo '</pre>';
					echo '<textarea rows=1
					
					id="'.$element_id.'" 
					name=result
					data-exid="'.$examination_id.'" 
					data-sid="__s__'.$sample_id.'" 					
					pattern="'.$pattern.'" 
					class="form-control p-0 m-0 no-gutters" 
					type=\''.$type.'\' ></textarea>';
				echo '</div>';
				echo '<div class="d-inline  no-gutters">';
					//get_primary_result($link,$sample_id,$examination_id);
				echo '</div>';
			echo '</div>';
			echo '<p class="help">'.$help.'</p>';	
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
						
						id="'.$element_id.'"
						name=result
						data-exid="'.$examination_id.'"
						data-sid="__s__'.$sample_id.'" 
						pattern="'.$pattern.'"
						class="form-controlp-0 m-0 no-gutters"
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

function get_one_ex_result($link,$sample_id,$examination_id)
{
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'select'))
	{
		//echo '<h5 class="bg-warning">This user is not authorized for [select] with examination_id='.$examination_id.'</h5>';
		return false;
	}
	
	$sql='select * from result where sample_id=\''.$sample_id.'\' and examination_id=\''.$examination_id.'\'';
		//echo 'xxx'.$sql.'<br>';
		$result=run_query($link,$GLOBALS['database'],$sql);
		//if(!$result){return false;}
		$ar=get_single_row($result);
		//print_r($ar);
		//echo  '<h4>'.$ar['result'].'</h4>';
		if(isset($ar['result']))
		{
			//echo $GLOBALS['mrd'].'--middle<br>';
			return $ar['result'];
		}
		else
		{
			return false;
		}
}



function get_id_type_examination_result($link,$sample_id,$examination_id)
{
	$examination_details=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!isset($edit_specification['table'])){'echo table for id allocation of examination_id='.$examination_id.' does not exist<br>';return false;}
		
	$sql='select * from `'.$edit_specification['table'] .'` where sample_id=\''.$sample_id.'\'';
	//echo '<h3>'.$sql.'</h3>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	return isset($ar['id'])?$ar['id']:False;
}


function get_any_examination_result($link,$sample_id,$examination_id)
{
	//echo 'pppppppppppp'.$examination_id.'<br>';
	$examination_details=get_one_examination_details($link,$examination_id);
	if(!$examination_details){return false;}
	//echo '>>>>>>>>>>examination_id='.$examination_id;
	//print_r($examination_details);

	$edit_specification=json_decode($examination_details['edit_specification'],true);
	//print_r($edit_specification);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	//echo $type;
	if(in_array($type,['id_multi_sample','id_single_sample']))
	{
		$ex_result=get_id_type_examination_result($link,$sample_id,$examination_id);
	}
	else
	{
		$ex_result=get_one_ex_result($link,$sample_id,$examination_id);
	}
	return $ex_result;
}



function get_one_ex_result_row($link,$sample_id,$examination_id)
{
		$sql='select * from result where sample_id=\''.$sample_id.'\' and examination_id=\''.$examination_id.'\'';
		$result=run_query($link,$GLOBALS['database'],$sql);
		return $ar=get_single_row($result);

}

function get_one_ex_result_blob($link,$sample_id,$examination_id)
{
		$sql='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$examination_id.'\'';
		//echo $sql;
		$result=run_query($link,$GLOBALS['database'],$sql);
		$ar=get_single_row($result);
		//echo  '<h4>'.$ar['result'].'</h4>';
		return $ar['result'];
}

function add_new_examination_and_profile($link,$sample_id,$list_of_selected_examination='',
							$list_of_selected_profile='',$list_of_selected_super_profile='')
{
	$sample_requirement=get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement']);
	$requested=array();
	$ex_requested=explode(',',$list_of_selected_examination);
	$requested=array_merge($requested,$ex_requested);
	//echo '<pre>';
	//print_r($requested);

	$profile_requested=explode(',',$list_of_selected_profile);
	
	$profile_requested_in_super_profile=convert_super_profile_to_profile($link,$list_of_selected_super_profile);
	$profile_requested=array_filter(array_unique(array_merge($profile_requested,$profile_requested_in_super_profile)));
	
	//print_r($profile_requested);
	foreach($profile_requested as $value)
	{
		$psql='select * from profile where profile_id=\''.$value.'\'';
		//echo $psql;
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		if(isset($ar['examination_id_list']))
		{
			$profile_ex_requested=explode(',',$ar['examination_id_list']);
		}
		else
		{
			$profile_ex_requested=array();
		}
		$requested=array_merge($requested,$profile_ex_requested);
	}
	//print_r($requested);

//////for EXTRA
	$super_profile_requested=explode(',',$_POST['list_of_selected_super_profile']);
	foreach($super_profile_requested as $sp)
	{
		$ssql='select * from super_profile where super_profile_id=\''.$sp.'\'';
		$result=run_query($link,$GLOBALS['database'],$ssql);
		if(rows_affected($link)>0)
		{
			$ar=get_single_row($result);
			//echo $psql;print_r($ar);
			$extra_requested_in_super_profile=explode(',',$ar['extra']);
			$requested=array_merge($requested,$extra_requested_in_super_profile);
		}
	}
//////end of extra


	$requested=array_filter(array_unique($requested));
	//print_r($requested);
	$list_of_selected_examination=$list_of_selected_examination;
	foreach ($requested as $exr)
	{
		
		$ex_data=get_one_examination_details($link,$exr);
		$edit_specification=json_decode($ex_data['edit_specification'],true);
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';

		//echo '<br>'.$ex_data['sample_requirement'].'<br>';
		//echo $sample_requirement.'<br>';
		
		if($ex_data['sample_requirement']==$sample_requirement || $ex_data['sample_requirement']=='None')
		{		
		//echo '<br>'.$ex_data['sample_requirement'].'<br>';
		//echo $sample_requirement.'<br>';
		
			if($exr==$GLOBALS['mrd'])
			{
				//mrd inserted, do nothing
			}
			elseif($exr==$GLOBALS['sample_requirement'])
			{
				//already inserted
				//insert_one_examination_with_result($link,$sid,$ex,$_POST['mrd']);
			}
			elseif($type!='blob')
			{
				insert_one_examination_without_result($link,$sample_id,$exr);
			}
			else  //blob as attachment 
			{
				insert_one_examination_blob_without_result($link,$sample_id,$exr);
			}
		}
		else
		{
			
			echo '<h5>'.$ex_data['name'].' is not allowed in '.$sample_requirement.'</h5>';
		}
	}
}

function set_lable($session_name,$sample_id,$examination_details,$examination_id,$frill=true)
{
	
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	if(!$edit_specification){$edit_specification=array();}
	$readonly=isset($edit_specification['readonly'])?$edit_specification['readonly']:'';
	
		echo '
			<div class="my_lable">';
		
			
		//if(	$examination_details['examination_id']!=$GLOBALS['mrd'] && 
		//	$examination_details['examination_id']!=$GLOBALS['sample_requirement'] &&
		//	$examination_details['examination_id']!=$GLOBALS['released_by']
		//	)
		if($readonly!='readonly')
		{
		if($frill)
			{
			echo '
				<form method=post class="d-inline">
					<input type=hidden name=session_name value=\''.$session_name.'\'>
					<input type=hidden name=sample_id value=\''.$sample_id.'\'>
					<input type=hidden name=examination_id value=\''.$examination_id.'\'>
					
					<button type=submit  class="btn btn-danger btn-sm d-inline m-0 p-0" name=action value=delete title=Delete>X</button>	
				</form>
				';
			}
		}		
		echo '<label for="'.$examination_details['name'].'" title=\''.$examination_id.'\'>'.$examination_details['name'].'</label>
			</div>';
}

function set_lable_subsection($session_name,$sample_id,$examination_details,$examination_id)
{
		echo '
			<div class="my_lable">';
			
		if($examination_details['examination_id']!=$GLOBALS['mrd'] && $examination_details['examination_id']!=$GLOBALS['sample_requirement'])
		{
		echo '
				<form method=post class="d-inline">
					<input type=hidden name=session_name value=\''.$session_name.'\'>
					<input type=hidden name=sample_id value=\''.$sample_id.'\'>
					<input type=hidden name=examination_id value=\''.$examination_id.'\'>
					
					<button type=submit  class="btn btn-danger btn-sm d-inline m-0 p-0" name=action value=delete title=Delete>X</button>	
				</form>
				';
		}		
		echo '<label class="bg-warning" for="'.$examination_details['name'].'"><h3>'.$examination_details['name'].'</h3></label>
			</div>';
}

function get_new_sample_id($link,$mrd,$sample_requirement)
{
	$sample_id=find_next_sample_id($link,$sample_requirement);
	$sql='insert into result (sample_id,examination_id,result,recording_time,recorded_by)
			values (\''.$sample_id.'\', \''.$GLOBALS['mrd'].'\',\''.$mrd.'\',now(),\''.$_SESSION['login'].'\')';
	if(!run_query($link,$GLOBALS['database'],$sql))
		{echo 'Data not inserted(with)<br>'; return false;}
	else
	{
		return $sample_id;
	}
}

/*
function find_next_sample_id($link)
{
	$sqls='select ifnull(max(sample_id)+1,1) as next_sample_id from result';
	//echo $sqls;
	$results=run_query($link,$GLOBALS['database'],$sqls);
	$ars=get_single_row($results);
	return $ars['next_sample_id'];
}
*/

function find_next_sample_id($link,$sample_requirement)
{
	$sql='select * from sample_id_strategy where sample_requirement=\''.$sample_requirement.'\'';
	//echo '<h5>SQL:'.$sql.'</h5>';
	//echo '<h5>SR:'.$sample_requirement.'</h5>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	$from=$ar['lowest_id'];
	$to=$ar['highest_id'];

	$sqls='select ifnull(max(sample_id)+1,'.$from.') as next_sample_id from sample_link where sample_id between '.$from.' and '.$to;
	//echo '<h3>'.$sqls.'</h3>';
	$results=run_query($link,$GLOBALS['database'],$sqls);
	$ars=get_single_row($results);
	//return $ars['next_sample_id'];
	
	//This is first table where sample_id is added and there it is primary key.
	//This reserve sample id. Otherwise, somebody else will find same sample id and use it
	if($ar['highest_id']<=$ars['next_sample_id'])
	{
		echo 'Limit for '.$sample_requirement.' is from:'.$ar['mmin'].' to:' .$ar['max'];
		echo $ars['next_sample_id'].' is not avilable. take database backup/ delete samples to make space for sample entry';
		return false;
	}
	else if(insert_sample_id_link($link,$ars['next_sample_id'],$display_error='yes'))
	{
		return $ars['next_sample_id'];
	}
	else
	{
		echo 'Another sample  was alloted  '.$ars['next_sample_id'].' sample _id. Retry';
		return false;
	}
}

function find_max_sample_id($link,$from,$to)
{
	$sqls='select ifnull(max(sample_id),'.$from.') as next_sample_id from sample_link where sample_id between '.$from.' and '.$to;
	//echo '<h3>'.$sqls.'</h3>';
	$results=run_query($link,$GLOBALS['database'],$sqls);
	$ars=get_single_row($results);
	//return $ars['next_sample_id'];
	
	//This is first table where sample_id is added and there it is primary key.
	//This reserve sample id. Otherwise, somebody else will find same sample id and use it
	return $ars['next_sample_id'];
}

function insert_one_examination_without_result($link,$sample_id,$examination_id,$error='yes')
{
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'insert'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [insert] with examination_id='.$examination_id.'</h5>';
		return;
	}
	//This function is used for inserting new examination without result. Target for INSERT_CONTROL
	$sql='insert into result (sample_id,examination_id)
			values ("'.$sample_id.'","'.$examination_id.'")';
	//echo $sql.'(without)<br>';
	if(!run_query($link,$GLOBALS['database'],$sql,$error))
	{
		//echo $sql.'(without)<br>';
		echo '<p class="text-danger">Data Exist? Data not inserted</p>'; 
		return false;
	}	else{return true;}
}

function insert_one_examination_with_result($link,$sample_id,$examination_id,$result)
{
	$res=get_config_value($link,'restrictive_examination_for_edit_delete');
	$res_result=get_one_ex_result($link,$sample_id,$res);
	if(strlen($res_result>0))
	{
		echo '<h5 class="bg-warning">Edit/delete operation not possible</h5>';
		return;
	}
			
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'insert'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [insert] with examination_id='.$examination_id.'</h5>';
		return false;
	}	
	//recording_time=now(),recorded_by=\''.$_POST['user'].'\'
	
	$sql='insert into result (sample_id,examination_id,result,recording_time,recorded_by)
			values ("'.$sample_id.'","'.$examination_id.'","'.my_safe_string($link,$result).'",now(),"'.$_SESSION['login'].'")';
	//echo $sql.'(without)<br>';
	if(!run_query($link,$GLOBALS['database'],$sql))
	{
		//echo $sql.'(without)<br>';
		//echo 'Data not inserted(with)<br>'; 
		return false;
	}	else{return true;}
}


function insert_update_one_examination_with_result($link,$sample_id,$examination_id,$result)
{
	$res=get_config_value($link,'restrictive_examination_for_edit_delete');
	$res_result=get_one_ex_result($link,$sample_id,$res);
	if(strlen($res_result>0))
	{
		echo '<h5 class="bg-warning">Edit/delete operation not possible</h5>';
		return;
	}
			
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'insert'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [insert] with examination_id='.$examination_id.'</h5>';
		return;
	}

	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'update'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [update] with examination_id='.$examination_id.'</h5>';
		return;
	}
	
	//recording_time=now(),recorded_by=\''.$_POST['user'].'\'
				
	$sql='insert into result (sample_id,examination_id,result,recording_time,recorded_by)
			values ("'.$sample_id.'","'.$examination_id.'","'.my_safe_string($link,$result).'",now(),"'.$_SESSION['login'].'")
			on duplicate key update
			result=\''.my_safe_string($link,$result).'\' , 
			recording_time=now() ,
			recorded_by=\''.$_SESSION['login'].'\''; 
			
	//echo $sql.'(with)<br>';
	if(!run_query($link,$GLOBALS['database'],$sql))
	{
		//echo $sql.'(without)<br>';
		//echo 'Data not inserted(with)<br>'; 
		return false;
	}	else{return true;}
}

function update_id_type_examination_for_sample_array($link,$sample_id_array,$examination_id,$result)
{
	//echo '>>>>processing update_id_type_examination_for_sample_array....<br>';
	//echo 'for id_multi_sample, the table should have id column(not unique) and sample_id(primary) column<br>';
	//echo 'for id_single_sample, the table should have id column(primary, autoincrement) and sample_id(unique) column<br>';
	if(strlen($result)!=0){echo ' examination_id='.$examination_id.' can not be edited once filled';return;}
	$examination_details=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	$minimum=isset($edit_specification['minimum'])?$edit_specification['minimum']:0;
	//echo $type.'<br>';
	if($type=='id_multi_sample')
	{
		if(!isset($edit_specification['table'])){'echo table for id allocation of examination_id='.$examination_id.' does not exist<br>';return;}
		
		$sqls='select max(id) as max_id from `'.$edit_specification['table'] .'`';
		//echo '<h3>'.$sqls.'</h3>';
		$results=run_query($link,$GLOBALS['database'],$sqls);
		$ars=get_single_row($results);
		$next_id=max($ars['max_id'],$minimum)+1;
		
		foreach($sample_id_array as $sid)
		{
			$sqli='insert into `'.$edit_specification['table'] .'` values ("'.$next_id.'","'.$sid.'")';
			//echo $sqli.'<br>';
			if(!$resulti=run_query($link,$GLOBALS['database'],$sqli,$error='no'))
			{
				echo '<p class="text-danger">func update_id_type...() Record Exist? Data not inserted</p>';
			}
		}
	}
	else if($type=='id_single_sample')
	{
		if(!isset($edit_specification['table'])){'echo table for id allocation of examination_id='.$examination_id.' does not exist<br>';return;}
		foreach($sample_id_array as $sid)
		{
			$sqli='insert into `'.$edit_specification['table'] .'` (sample_id) values ("'.$sid.'")';
			//echo $sqli.'<br>';
			if(!$resulti=run_query($link,$GLOBALS['database'],$sqli,$error='no'))
			{
				echo '<p class="text-danger">func update_id_type...() Record Exist? Data not inserted</p>';
			}
			else
			{
				//echo '<p>id='.last_autoincrement_insert($link).' inserted in to '.$edit_specification['table'] .' for '.$sid.' </p>';
			}
		}
		
	}
	//echo '>>>>end of update_id_type_examination_for_sample_array processing<br>';
	
}

function update_one_examination_with_result($link,$sample_id,$examination_id,$result)
{
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'update'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [update] with examination_id='.$examination_id.'</h5>';
		return false;
	}	
	
	$sql='update result
			set 
				result=\''.my_safe_string($link,$result).'\',
				recording_time=now(),
				recorded_by=\''.$_SESSION['login'].'\'
			where 
				sample_id=\''.$sample_id.'\' 
				and
				examination_id=\''.$examination_id.'\'';
	//echo $sql;
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		echo '<p>Data not updated</p>';
	}
	else
	{
		if(rows_affected($link)==1)
		{
			//echo '<p>'.$sample_id.'|'.$examination_id.'|'.$result.'|Saved</p>';				
		}
		else
		{
			echo '<p>Result need no update/ No such examination</p>';
		}
	}
}


function insert_one_examination_blob_without_result($link,$sample_id,$examination_id,$error='yes')
{
	//Target for INSERT_CONTROL
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$examination_id,'insert'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [insert] with examination_id='.$examination_id.'</h5>';
		return false;
	}	
	
	$sql='insert into result_blob (sample_id,examination_id)
			values ("'.$sample_id.'","'.$examination_id.'")';
	if(!run_query($link,$GLOBALS['database'],$sql,$error))
	{	
		//echo $sql.'(without)<br>';
		//echo 'Data not inserted(without)<br>'; 
		return false;
	}
	else{return true;}
}

function echo_export_button($sample_id_csv)
{
	echo'<form method=post id=export_button action=export.php class="d-inline-block">
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=sample_id value=\''.$sample_id_csv.'\'>
	<div class=print_hide><button type=submit class="btn btn-info  border-danger m-0 p-0" name=export>Export</button></div></form>';
}


function echo_report_export_button($sample_id_csv,$report_id)
{
	echo'<form method=post id=export_button action=export2.php class="d-inline-block">
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=sample_id value=\''.$sample_id_csv.'\'>
	<input type=hidden name=report_id value=\''.$report_id.'\'>
	<div class=print_hide><button type=submit class="btn btn-info  border-danger m-0 p-0" name=export>Export</button></div></form>';
}

function echo_class_button($link,$class)
{
	$sql='select * from report where report_name=\''.$class.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	$ex_list=explode(',',$ar['examination_id']);
	$jarray=json_encode($ex_list);
	//echo $jarray;
	echo '<div class="d-inline-block "><div class=print_hide><button type=button class="btn btn-info d-inline-block border-danger m-0 p-0" onclick="set_print_class(\''.htmlspecialchars($jarray).'\')">'.$class.'</button></div></div>';
}



function get_search_condition($link)
{
	echo '<form method=post>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=set_search>Set Search Conditions</button>';
	echo '<div class="basic_form">';
	get_examination_data($link);
	echo '</div>';
	echo '<button type=submit class="btn btn-primary form-control" name=action value=set_search>Set Search Conditions</button>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';
}

function set_search($link,$action='',$for_print='no')
{
	$ex_requested=array_filter(explode(',',$_POST['list_of_selected_examination']));
	//print_r($ex_requested);

	if(count($ex_requested)==0)
	{
		echo '<h3>No meaningful search conditions provided!!</h3>';
		return false;
	}
	echo '<form method=post '.$action.'>';
		foreach($ex_requested as $v)
		{
			$examination_details=get_one_examination_details($link,$v);
			echo '<div class="basic_form">';
			echo '	<label class="my_label" for="'.$examination_details['name'].'">'.$examination_details['name'].'</label>
					<input 
						id="'.$examination_details['name'].'" 
						name="'.$examination_details['examination_id'].'" 
						data-exid="'.$examination_details['examination_id'].'" 
						class="form-control" >
					<p class="help">Enter details for search</p>';
			echo '</div>';
		}
	
	if($for_print=='no')
	{	
		echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=search_summary>Search (Summary View)</button>';
		echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=search_detail>Search (Detailed View)</button>';
	}
	else
	{
		echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=print>Print</button>';		
	}
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';
	return true;
}

function set_search_single_button($link,$action='',$target='', $submit_name='submit',$submit_value='submit', $submit_lable='submit')
{
	$ex_requested=array_filter(explode(',',$_POST['list_of_selected_examination']));
	//print_r($ex_requested);

	if(count($ex_requested)==0)
	{
		echo '<h3>No meaningful search conditions provided!!</h3>';
		return false;
	}
	echo '<form method=post '.$action.' '.$target.'>';
		foreach($ex_requested as $v)
		{
			$examination_details=get_one_examination_details($link,$v);
			echo '<div class="basic_form">';
			echo '	<label class="my_label" for="'.$examination_details['name'].'">'.$examination_details['name'].'</label>
					<input 
						id="'.$examination_details['name'].'" 
						name="'.$examination_details['examination_id'].'" 
						data-exid="'.$examination_details['examination_id'].'" 
						class="form-control" >
					<p class="help">Enter details for search</p>';
			echo '</div>';
		}

		echo '<button type=submit class="btn btn-primary form-control m-1" name=\''.$submit_name.'\' value=\''.$submit_value.'\'>'.$submit_lable.'</button>';
	echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
	echo '</form>';
	return true;
}


function prepare_search_array($link)
{
	$ret=array();
	foreach($_POST as $k=>$v)
	{
		if(is_int($k) && strlen($v)>0)
		{
			$ret[$k]=$v;
		}
	}	
	return $ret;
}

function get_result_of_search_array($link,$search_array)
{
	$from=' ';
	$counter=0;
	foreach ($search_array as $kd=>$vd)
	{
		$tn='r'.$counter;
		$from=$from.' result '.$tn.' ,';
		$counter++;
	}
	if(substr($from,-1,1)==',')
	{
		$from=substr($from,0,-1);
	}
	
	$counter=0;
	$w=' ';
	foreach ($search_array as $kd=>$vd)
	{
		$tn='r'.$counter;
		
		$w= $w. ' ('.$tn.'.examination_id=\''.$kd.'\' and '.$tn.'.result like \'%'.$vd.'%\' ) and ';
		if($counter>0)
		{
			$tp=' r'.($counter-1);
			$w=$w.' '.$tn.'.sample_id='.$tp.'.sample_id and ';
		}
		$counter++;
	}

	if(substr($w,-4,4)=='and ')
	{
		$w=substr($w,0,-4);
	}
			
	$sql='select * from '.$from.' where '.$w;
	//echo $sql; 
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	return $result;
}
function get_sample_with_condition($link,$exid,$ex_result,$sid_array=array(),$first=FALSE)
{
	$ret=array();
	
	if($first===TRUE)
	{
		$sql='select sample_id from result 
				where 
					examination_id=\''.$exid.'\' and 
					result like \'%'.$ex_result.'%\' limit 50';
		//echo $sql.'<br>';
		$result=run_query($link,$GLOBALS['database'],$sql);
		while($ar=get_single_row($result))
		{
			$ret[]=$ar['sample_id'];
		}
		return $ret;
	}
	
	//else do as follows
	foreach($sid_array as $v)
	{
		$sql='select sample_id from result 
				where 
					examination_id=\''.$exid.'\' and 
					result like \'%'.$ex_result.'%\' and
					sample_id=\''.$v.'\' limit 50';
		//echo $sql.'<br>';
		$result=run_query($link,$GLOBALS['database'],$sql);
		if(get_row_count($result)>0)
		{
			$ret[]=$v;
		}
	}
	return $ret;
}


function set_sample_id($link, $sample_required_array)
{
	//print_r($sample_required_array);
	$sample_id_array=array();
	foreach ($sample_required_array as $stype)
	{
		if($stype!='None')
		{
			$sample_id_array[$stype]=find_next_sample_id($link,$stype);
			//we must REALLY insert something in result to make increment possible in next cycle
			//otherwise sample id for given stype will be returned
			//so insert sample_requirement as first result!!!
			//1000 is sample_requirement
			//echo 'pp';
			//echo $GLOBALS['sample_requirement'];
			insert_one_examination_with_result($link,$sample_id_array[$stype],$GLOBALS['sample_requirement'],$stype);
			//insert_one_examination_with_result($link,$sample_id_array[$stype],$GLOBALS['released_by'],'');
			//insert_one_examination_with_result($link,$sample_id_array[$stype],$GLOBALS['release_date'],'');
			//insert_one_examination_with_result($link,$sample_id_array[$stype],$GLOBALS['release_time'],'');			
			//echo 'qq';
		}
	}
	return $sample_id_array;
}


////////////// TCPDF Functions///////////////////////

function print_sample($link,$sample_id,$pdf)
{
	     //$pdf = new ACCOUNT1('P', 'mm', 'A4', true, 'UTF-8', false);
	$pdf->startPageGroup();
     
	     $pdf->sample_id=$sample_id;
	     $pdf->link=$link;
	     $pdf->profile_wise_ex_list=get_profile_wise_ex_list($link,$sample_id);
	     if($pdf->profile_wise_ex_list===false){return;}

	ob_start();
		view_sample_p($link,$sample_id,$pdf->profile_wise_ex_list);
		$myStr = ob_get_contents();
	ob_end_clean();

	//echo $myStr;
	//exit(0);
	     //left,top,right
	     $pdf->SetMargins(25, 40, 10);
	     $pdf->SetAutoPageBreak(TRUE, 30);
	     
	     $pdf->SetFont('courier', '', 9);
	     //$pdf->SetMargins(10, $pdf->current_y, 10); //no effect, page not added
	     //$pdf->SetY($pdf->current_y); //no effect, page not added
		 $pdf->AddPage();
		 $pdf->SetY($pdf->current_y); //required , setMargin after add page have no effect
		 $pdf->SetMargins(10, $pdf->current_y, 10); //will take effect from next page onwards

	     $pdf->writeHTML($myStr, true, false, true, false, '');
	     
	     //$pdf->writeHTML(count($GLOBALS['img_list']), true, false, true, false, '');
	 
	     //prepare for graphics
	    //$y=$pdf->GetY(); //Y first?
		//$x=$pdf->GetX();
		
		//$i=0;
			
	     //foreach($GLOBALS['img_list'] as $k=>$v)
	     //{
			////somehow manual calculation of X and Y is required
			////public function Image($file, $x='', $y='', $w=0, $h=0, $type='', $link='', $align='', $resize=false, 
			////$dpi=300, $palign='', $ismask=false, $imgmask=false, $border=0, $fitbox=false, $hidden=false, $fitonpage=false, $alt=false, $altimgs=array()) {
			//$pdf->Image('@'.$v,$x+$i*40,$y+$i*0,40,20,$type='', $link='', $align='', $resize=true,
						//$dpi=300, $palign='', $ismask=false, $imgmask=false, $border=1);
			//$i++;
		 //}
				     
	     //$pdf->Output('report-'.$sample_id.'.pdf', 'I');
}

function display_dw_png($ex_result,$label)
{
	$ar=str_split($ex_result);
	
	$width=256; //128 X 2
    $height=128; //256;//223+32=255 make is half to save space
    $im = imagecreatetruecolor($width,$height);
    $white = imagecolorallocate($im, 255, 255, 225);
    $black = imagecolorallocate($im, 0,0,0);
	imagefill($im,0,0,$white);
	imagestring($im, 5, 3, 1, $label, $black);

	$px=0;
	$py=256;
	$y=2;
	foreach ($ar as $k=>$v)
	{
		$y=(256-ord($v))/2 +16; //make half add 16 to get baseline
		$x=$k*2;	//every two pixel
		imageline ( $im , $px , $py , $x , $y , $black ) ;
		
		$py=$y;
		$px=$x;
	}
	
	ob_start();	
	imagepng($im);
	$myStr = ob_get_contents();
	ob_end_clean();
	imagedestroy($im);	
	return $myStr;
}



function display_png($ex_result,$label='',$width=100,$height=100)
{	
	$encoded_image=base64_encode($ex_result);	
	echo '<img src="data:image/png;base64,'.$encoded_image.'" width="'.$width.'" height="'.$height.'" />';
}

function make_png($ex_result,$label='',$width=100,$height=100)
{	
	$encoded_image=base64_encode($ex_result);	
	return '<img src="data:image/png;base64,'.$encoded_image.'" width="'.$width.'" height="'.$height.'" />';
}

function display_png_p($ex_result,$label='',$width=100,$height=100)
{	
	$encoded_image=base64_encode($ex_result);	
	//Ha Ha!!! lots of time wasted for silly things.Thanks to internet
	//$final='data:image/png;base64,@'.$encoded_image;
	//$img = '<img src="@' . preg_replace('#^data:image/[^;]+;base64,#', '', $final) . ' " width="'.$width.'" height="'.$height.'"/> ';
	//$img = '<img src="@' . preg_replace('#^data:image/[^;]+;base64,#', '', $final) . ' " width="'.$width.'" height="'.$height.'"/> ';
	
	//$img = '<img src="@'.$encoded_image.'" width="'.$width.'" height="'.$height.'"/> ';
	$img = '<img src="@'.$encoded_image.'" width="'.$width.'" height="'.$height.'" /> ';
	echo $img;
}


function make_png_p($ex_result,$label='',$width=100,$height=100)
{	
	$encoded_image=base64_encode($ex_result);	
	//Ha Ha!!! lots of time wasted for silly things.Thanks to internet
	//$final='data:image/png;base64,@'.$encoded_image;
	//$img = '<img src="@' . preg_replace('#^data:image/[^;]+;base64,#', '', $final) . ' " width="'.$width.'" height="'.$height.'"/> ';
	//$img = '<img src="@' . preg_replace('#^data:image/[^;]+;base64,#', '', $final) . ' " width="'.$width.'" height="'.$height.'"/> ';
	
	//$img = '<img src="@'.$encoded_image.'" width="'.$width.'" height="'.$height.'"/> ';
	$img = '<img src="@'.$encoded_image.'" width="'.$width.'" height="'.$height.'" /> ';
	return $img;
}

function view_sample_p($link,$sample_id,$profile_wise_ex_list)
{
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	$accr=should_display_accreditation_symbol($link,$sample_id);
	echo '<table border="0"  cellpadding="2">';

	foreach($profile_wise_ex_list as $kp=>$vp)
	{
		if($kp==$GLOBALS['pid_profile']){continue;}	//pid is displyed on each page//not needed here

		$pinfo=get_profile_info($link,$kp);
		$profile_edit_specification=json_decode($pinfo['edit_specification'],true);
		$print_hide=isset($profile_edit_specification['print_hide'])?$profile_edit_specification['print_hide']:'';
		$print_style=isset($profile_edit_specification['print_style'])?$profile_edit_specification['print_style']:'';
		
		if($print_hide=='yes'){continue;}	//not to be printed
		
		$display_name=isset($profile_edit_specification['display_name'])?$profile_edit_specification['display_name']:'';

		if($display_name!='no')
		{		
			echo '<tr><th colspan="3"><h2><u>'.$pinfo['name'].'</u></h2></th></tr>';
		}
		
		//if($pinfo['profile_id']>$GLOBALS['max_non_ex_profile'])

		if($print_style=='horizontal')
		{	
			$count=1;

			foreach($vp as $ex_id)
			{


				$examination_details=get_one_examination_details($link,$ex_id);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';					
				$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';
				$accredited=isset($edit_specification['accreditation'])?$edit_specification['accreditation']:'';

				if($type!='blob' && $hide!='yes')
				{
					if($count%3==1){echo '<tr>';}
					
					echo '<td style="border-right:0.1px solid black;">';
					view_field_hr_p($link,$ex_id,$ex_list[$ex_id]);	
					echo '</td>';
					
					if($count%3==0){echo '</tr>';}
					
					$count++;
				}
			
			}
			$count--;
			
			if($count%3==1){echo '<td></td><td></td></tr>';}
			if($count%3==2){echo '<td></td></tr>';}
		}
		elseif($print_style=='vertical')
		{	
			foreach($vp as $ex_id)
			{
				$examination_details=get_one_examination_details($link,$ex_id);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';					
				if($type!='blob')
				{
					if($hide!='yes'){
					view_field_vr_p($link,$ex_id,$ex_list[$ex_id]);	}
				}
				else
				{
					view_field_blob_vr_p($link,$ex_id,$sample_id);	
				}
			}
		}
		else
		{
		
			$header=isset($profile_edit_specification['header'])?$profile_edit_specification['header']:'';
			if($header!='no')
			{
				echo_result_header_p();
			}
		
			foreach($vp as $ex_id)
			{

				$examination_details=get_one_examination_details($link,$ex_id);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';				
				if($type!='blob'  && $hide!='yes')
				{
					view_field_p($link,$ex_id,$ex_list[$ex_id]);	
				}
				else if ($type=='blob'  && $hide!='yes')
				{
					view_field_blob_p($link,$ex_id,$sample_id);
				}
			}
		}				
	}
	
	echo '</table>';	
}

function view_field_p($link,$ex_id,$ex_result)
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$help=isset($edit_specification['help'])?$edit_specification['help']:'';
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';

		$interval_l=isset($edit_specification['interval_l'])?$edit_specification['interval_l']:'';
		$cinterval_l=isset($edit_specification['cinterval_l'])?$edit_specification['cinterval_l']:'';
		$ainterval_l=isset($edit_specification['ainterval_l'])?$edit_specification['ainterval_l']:'';
		$interval_h=isset($edit_specification['interval_h'])?$edit_specification['interval_h']:'';
		$cinterval_h=isset($edit_specification['cinterval_h'])?$edit_specification['cinterval_h']:'';
		$ainterval_h=isset($edit_specification['ainterval_h'])?$edit_specification['ainterval_h']:'';
		$img=isset($edit_specification['img'])?$edit_specification['img']:'';

		if($img=='dw')
		{
			//echo '<tr>';
			//echo '<td style="border: 0.3px solid black;">'.$examination_details['name'].'</td>';
			//echo '<td style="border: 0.3px solid black;">';
			
			//just save graphics in global array, for display leter on
			//echo 'sssss';
			$GLOBALS['img_list'][$examination_details['name']]=display_dw_png($ex_result,$examination_details['name']);
			//echo '</td>';
			//echo '<td style="border: 0.3px solid black;"></td></tr>';			
		}
		elseif($type=='subsection')
		{		
				echo '<tr>';
				echo '	<td style="border: 0.3px solid black;"></td>
				<td style="border: 0.3px solid black;"><h3 align="center">'.$examination_details['name'].'</h3></td>
				<td style="border: 0.3px solid black;"></td>';
				echo '</tr>';
		//echo '	<pre><table border="1"><tr><td>sadda</td><td>sadda</td></tr><tr><td>sadda</td><td>sadda</td></tr></table>'.htmlspecialchars($help).'</pre>';
		}
		else
		{		
				echo '<tr>';
		echo '	<td style="border: 0.3px solid black;">'.$examination_details['name'].'</td>
				<td style="border: 0.3px solid black;"><pre>'.htmlspecialchars($ex_result.' '.
				decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h)).'</pre></td>
				<td style="border: 0.3px solid black;">'.nl2br(htmlspecialchars($help)).'</td>';
				echo '</tr>';
		//echo '	<pre><table border="1"><tr><td>sadda</td><td>sadda</td></tr><tr><td>sadda</td><td>sadda</td></tr></table>'.htmlspecialchars($help).'</pre>';
		}

}		

function display_dw_p($ex_result)
{
	$ar=str_split($ex_result);

	$width=256; //128 X 2
    $height=128; //256;//223+32=255 make is half to save space
    $im = imagecreatetruecolor($width,$height);
    $white = imagecolorallocate($im, 255, 255, 225);
    $black = imagecolorallocate($im, 0,0,0);
	imagefill($im,0,0,$white);
	$px=0;
	$py=256;
	foreach ($ar as $k=>$v)
	{
		$y=(256-ord($v))/2 +16; //make half add 16 to get baseline
		$x=$k*2;	//every two pixel
		imageline ( $im , $px , $py , $x , $y , $black ) ;
		$py=$y;
		$px=$x;
	}
	
	ob_start();	
	imagepng($im);
	$myStr = base64_encode(ob_get_contents());
	ob_end_clean();

	//echo "<img src='data:image/png;base64,".$myStr."'/>";
	echo '<img src=\'data:image/png;base64,'.$myStr.'\'>';
	//echo "x<img src='img/img.png'>y";
	imagedestroy($im);	
}

function view_field_hr_p($link,$ex_id,$ex_result)
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$help=isset($edit_specification['help'])?$edit_specification['help']:'';
		$interval=isset($edit_specification['interval'])?$edit_specification['interval']:'';
		
		echo '<b>'.$examination_details['name'].':</b> '.htmlspecialchars($ex_result.' '.decide_alert($ex_result,$interval,'','','','',''));
}	


function view_field_vr_p($link,$ex_id,$ex_result)
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		//$help=isset($edit_specification['help'])?$edit_specification['help']:'';
		$interval=isset($edit_specification['interval'])?$edit_specification['interval']:'';
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';
		
		if($type=='subsection')
		{
			echo '	<tr>
					<td colspan="3"><h2 style="text-align:center">'.$examination_details['name'].'</h2></td>
				</tr>'	;
		}
		else
		{

				$formatted=htmlspecialchars($ex_result.' '.decide_alert($ex_result,$interval,'','','','',''));
				$bold_formatted1=str_replace('(((','<b>',$formatted);
				$bold_formatted2=str_replace(')))','</b>',$bold_formatted1);
							
			if(strlen($ex_result)<$GLOBALS['print_side_or_below'])
			{
				echo '	<tr>
					<td colspan="3"><b style="font-size: 1.1em;">'.$examination_details['name'].':</b>'.$bold_formatted2.'</td>
				</tr>';
			}
			else
			{
				echo '	<tr>
					<td colspan="3"><h3>'.$examination_details['name'].'</h3></td><td></td><td></td>
				</tr>
				<tr>
					<td colspan="3">'.nl2br(str_replace(' ','<font style="color:white;">_</font>',$bold_formatted2)).'</td>
				</tr>';
			}
		}		
}	

//<td colspan="3"><pre>'.nl2br(htmlspecialchars($ex_result.' '.decide_alert($ex_result,$interval,'','','','',''))).'</pre></td>
//<td colspan="3">'.nl2br(htmlspecialchars($ex_result.' '.decide_alert($ex_result,$interval,'','','','',''))).'</td>
//<td colspan="3">'.nl2br($ex_result.' '.decide_alert($ex_result,$interval,'','','','','')).'</td>

function view_field_vr($link,$ex_id,$ex_result)
{
		$examination_details=get_one_examination_details($link,$ex_id);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		//$help=isset($edit_specification['help'])?$edit_specification['help']:'';
		$interval=isset($edit_specification['interval'])?$edit_specification['interval']:'';
		$type=isset($edit_specification['type'])?$edit_specification['type']:'';
		
		if($type=='subsection')
		{
			echo '	<div>
					<h2 style="text-align:center">'.$examination_details['name'].'</h2>
				</div>'	;
		}
		else
		{
			if(strlen($ex_result)<$GLOBALS['print_side_or_below'])
			{
				echo '	<div>
					<b>'.$examination_details['name'].':</b>'.htmlspecialchars($ex_result.' '.decide_alert($ex_result,$interval,'','','','','')).'
				</div>';
			}
			else
			{
				echo '	<div>
					<h4>'.$examination_details['name'].'</h4>
				</div>
				<div><PRE>'.htmlspecialchars($ex_result.' '.decide_alert($ex_result,$interval,'','','','','')).'</PRE></div>';
			}
		}		
}	
//'.nl2br(htmlspecialchars($ex_result.' '.decide_alert($ex_result,$interval,'','','','',''))).'
//'.nl2br($ex_result.' '.decide_alert($ex_result,$interval,'','','','','')).'

function echo_result_header_p()
{
	echo '<tr><td width="25%">Examination</td><td width="30%">Result</td><td width="45%">Unit, Ref. Intervals ,(Method)</td></tr>';
}

function get_profile_wise_ex_list($link,$sample_id)
{
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$result_plus_blob_requested=$ex_list+$rblob;
	//print_r($result_plus_blob_requested);
	if(count($result_plus_blob_requested)==0)
	{
		echo '<h3>Nothing requested for sample_id='.$sample_id.'</h3>';
		return false;
	}
	
	return $profile_wise_ex_list=ex_to_profile($link,$result_plus_blob_requested);
}

function dashboard($link)
{
	if(requestonly_check($link)){return;}
	$sql='select * from dashboard order by priority desc';
	
	echo '<span data-toggle="collapse" class="sh badge badge-warning d-inline" href=#dashboard >DashBoard</span><div></div><div></div>';
	//echo '<div class="collapse '.$showhide.'" id=\''.$div_id.'\'>';
	
	//echo '<h3>Dashboard</h3>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	echo '<ul id=dashboard class="collapse hide">';
	while($ar=get_single_row($result))
	{
		echo '<li><pre>';
		echo '<span class="badge badge-primary ">'.$ar['topic'].'</span><p class="text-dark">'.$ar['description'].'</p>';
		echo '</pre></li>';
	}
	echo '</ul>';
		
}


class ACCOUNT1 extends TCPDF {
	public $sample_id;
	public $link;
	public $current_y;
	public $profile_wise_ex_list;
	public $symbol_1;
	
	public function Header() 
	{
		ob_start();	
	$sr=get_one_ex_result($this->link,$this->sample_id,$GLOBALS['sample_requirement']);
	$sr_array=explode('-',$sr);
	//error-
	$header=$GLOBALS[$sr_array[2]];
	insert_sample_id_link($this->link,$this->sample_id,$display_error='no');
	$style = array(
    'border' => 2,
    'vpadding' => 'auto',
    'hpadding' => 'auto',
    'fgcolor' => array(0,0,0),
    'bgcolor' => false, //array(255,255,255)
    'module_width' => 1, // width of a single module in points
    'module_height' => 1 // height of a single module in points
	);

					// QRCODE,L : QR-CODE Low error correction
					$qr_link=make_link_return($this->link,$this->sample_id);
					$barcodeobj = new TCPDF2DBarcode($qr_link, 'QRCODE,H');
					//$barcodeobj->getBarcodePNG(3, 3, array(0,128,0));
					$png=$barcodeobj->getBarcodePngData(3, 3, array(0,0,0));
					//$png='sss';
					$encoded_image=base64_encode($png);	
					$img = '<img src="@'.$encoded_image.'" width=30 /> ';
					//$this->write2DBarcode('www.tcpdf.org', 'QRCODE,L', 20, 30, 50, 50, $style, 'N');						
					
					
	echo '<table  cellpadding="2" >
	<tr>
		<td colspan="3">
			<table>
				<tr>';
				if($GLOBALS['display_accreditation_image']=='yes')
				{
					if(should_display_accreditation_symbol($this->link,$this->sample_id)==true)
					{
						echo '<td border="0.3" rowspan="4" width="10%"><img src="'.$GLOBALS['accreditation_image_src'].'" width="50">'.$GLOBALS['accreditation_image_txt'].'</td>';
					}
					else
					{
						echo '<td border="0" rowspan="4" width="10%"></td>';
					}
				}
				else
				{
					echo '<td border="0" rowspan="4" width="10%"></td>';
				}
				
					echo '<td style="text-align:center" width="75%"><h2>'.$header['name'].'</h2></td>
					<td border="0" rowspan="4" width="15%">';
						echo $img;
					echo '</td>
				</tr>
				<tr>
					<td style="text-align:center"><h3>'.$header['section'].'<b> (Sample ID:</b> '.$this->sample_id.')</h3></td>
				</tr>
				<tr>
					<td style="text-align:center"><h5>'.$header['address'].'</h5></td>
				</tr>
				<tr>
					<td style="text-align:center"><h5>'.$header['phone'].'</h5></td>
				</tr>
			</table>
		</td>
	</tr>';
	

			$count=1;
			foreach($this->profile_wise_ex_list[$GLOBALS['pid_profile']] as $v)
			{
				
				if($count%3==1)
				{
					echo '<tr>';
				}

				
				$examination_details=get_one_examination_details($this->link,$v);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';

				if($type!='blob')
				{
					$r=get_one_ex_result($this->link,$this->sample_id,$v);
					echo '<td style="border-right:0.1px solid black;">';
					view_field_hr_p($this->link,$v,$r);	
					echo '</td>';
				}
				else
				{
					//view_field_blob_hr($link,$ex_id,$sample_id);	
				}
				
				
				if($count%3==0)
				{
					echo '</tr>';
				}
			$count++;
			}
			$count--;
			
			if($count%3==1){echo '<td></td><td></td></tr>';}
			if($count%3==2){echo '<td></td></tr>';}
			
	echo '</table>
	<hr></hr>';

	 $myStr = ob_get_contents();
	 ob_end_clean();
	$this->SetY(10);
	$this->writeHTML($myStr, true, false, true, false, '');
	$this->current_y=$this->GetY();
	}
	
	public function Footer() 
	{
	    $this->SetY(-20);
		//$this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
		$this->Cell(0, 10, 'eReport, No Signature Required. Page '.$this->getPageNumGroupAlias().'/'.$this->getPageGroupAlias(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
	}	
}

function should_display_accreditation_symbol($link,$sample_id)
{
	$ar=get_result_of_sample_in_array($link,$sample_id);
	foreach ($ar as $examination_id=>$examination_result)
	{
		$examination_details=get_one_examination_details($link,$examination_id);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$accr_status=isset($edit_specification['accr_status'])?$edit_specification['accr_status']:'';
		$ret=false;
		//echo $accr_status.'ooo';
		if($accr_status=='no')
		{
			$ret=false;
		}
		elseif($accr_status=='yes')
		{
			$ret=true;
			return $ret;
		}
		else
		{
			$ret=$ret;	//do nothing
		}
	}
	return $ret;			//if all are 'no'
}

function get_accreditation_status($link,$sample_id,$examination_id)
{
	$examination_details=get_one_examination_details($link,$examination_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$accr_status=isset($edit_specification['accr_status'])?$edit_specification['accr_status']:'';
	if($accr_status!='no'){return $accr_status;}
	else{return '';}
}
///////////dashbard functions/////

function show_dashboard($link)
{
	if(requestonly_check($link)){return;}
	get_sql($link);
	
}

function get_sql($link)
{
        if(!$result=run_query($link,$GLOBALS['database'],'select * from view_info_data')){return false;}

		echo '<span data-toggle="collapse" 
		class="sh badge badge-warning d-inline" href=#statistics >Statistics and Info</span>';

        echo '
        <table border=1 id=statistics class="table-striped table-hover collapse hide"><tr><th colspan=20>Select the data to view</th></tr>';

        $first_data='yes';

        while($array=get_single_row($result))
        {
                if($first_data=='yes')
                {
                        echo '<tr>';
                        foreach($array as $key=>$value)
                        {
							    if($key!='sql'){
                                echo '<th bgcolor=lightgreen>'.$key.'</th>';}
                        }
                        echo '</tr>';
                        $first_data='no';
                }

				echo'<form style="margin-bottom:0;" method=post>';
                echo '<tr>';
                foreach($array as $key=>$value)
                {
					echo'<input type=hidden name=session_name value=\''.$_SESSION['login'].'\'>';
					echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
                       if($key=='id')
                        { 
                         echo '<td>
							<input type=hidden name=action value=display_data>
							<button class="btn btn-danger" type=submit name=id value=\''.$value.'\'>'.$value.'</button></td>';
                        }
                        elseif($key=='sql'){}
                        elseif($key=='Fields')
                        {
                                echo '<td class="badge badge-warning">'.$value.'</td>';							
						}
                        else
                        {
                                echo '<td>'.$value.'</td>';
                        }
                }
				echo '</tr>';
				echo '</form>';

        }
        echo '</table>';
    
}

function prepare_result_from_view_data_id($link,$id)
{

         if(!$result_id=run_query($link,$GLOBALS['database'],'select * from view_info_data where id=\''.$id.'\''))
         {
			 echo '<h1>Problem</h1>';
		 }
		 else
		 {
			 //echo '<h1>Success</h1>';
		 }
        $array_id=get_single_row($result_id);

        $sql=$array_id['sql'].'';
        $info=$array_id['info'];

		//echo $sql.'<br>';
        ////modify sql
        //print_r($_POST);

	$sql=str_replace('__session_name',$_POST['session_name'],$sql);			

        if(isset($_POST['__p1'])) 
        {
			if(strlen($_POST['__p1'])>0)
			{
				$sql=str_replace('__p1',$_POST['__p1'],$sql);			
				$p1=$_POST['__p1'];
			}
			else
			{
				$p1='';
			}
		}
		else
		{
			$p1='';
		}


        if(isset($_POST['__p2'])) 
        {
			if(strlen($_POST['__p2'])>0)
			{
				$sql=str_replace('__p2',$_POST['__p2'],$sql);			
				$p2=$_POST['__p2'];
			}
			else
			{
				$p2='';
			}
		}
		else
		{
			$p2='';
		}

        if(isset($_POST['__p3'])) 
        {
			if(strlen($_POST['__p3'])>0)
			{
				$sql=str_replace('__p3',$_POST['__p3'],$sql);			
				$p3=$_POST['__p3'];
			}
			else
			{
				$p3='';
			}
		}
		else
		{
			$p3='';
		}

        if(isset($_POST['__p4'])) 
        {
			if(strlen($_POST['__p4'])>0)
			{
				$sql=str_replace('__p4',$_POST['__p4'],$sql);			
				$p4=$_POST['__p4'];
			}
			else
			{
				$p4='';
			}
		}
		else
		{
			$p4='';
		}
        //////////////
		//echo $sql;


        if(!$result=run_query($link,$GLOBALS['database'],$sql))
        {
			 echo '<h1>Problem</h1>';
		}
		 else
		 {
			 echo '<h1>'.$info.'</h1>';
		 }


		echo_export_button_dashboard($link,$id,$p1,$p2,$p3,$p4);
		display_sql_result_data($result);

}


function echo_export_button_dashboard($link,$id,$p1,$p2,$p3,$p4)
{
	echo '<form method=post class="d-inline" action=export3.php>';
		echo '<input type=hidden name=session_name value=\''.$_SESSION['login'].'\'>';
		echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';			
		echo '<input type=hidden name=id value=\''.$id.'\'>';
		echo '<input type=hidden name=__p1 value=\''.$p1.'\'>		
			<input type=hidden name=__p2 value=\''.$p2.'\'>		
			<input type=hidden name=__p3 value=\''.$p3.'\'>		
			<input type=hidden name=__p4 value=\''.$p4.'\'>		
			
			<button class="btn btn-info"  
			formtarget=_blank
			type=submit
			name=action
			value=export>Export</button>
		</form>';
}
	
function display_sql_result_data($result,$show_hide='yes')
{
	if($show_hide=='yes')
	{
		echo '<button data-toggle="collapse" data-target="#sql_result" class="btn btn-dark">Show/Hide Result</button>';
		echo '<div id="sql_result" class="collapse show">';		
	}
		
	
       echo '<table border=1 class="table-striped table-hover">';
				
        $first_data='yes';

        while($array=get_single_row($result))
        {
			//echo '<pre>';
			//print_r($array);
                if($first_data=='yes')
                {
                        echo '<tr bgcolor=lightgreen>';
                        foreach($array as $key=>$value)
                        {
                                echo '<th>'.$key.'</th>';
                        }
                        echo '</tr>';
                        $first_data='no';
                }
                echo '<tr>';
                foreach($array as $key=>$value)
                {
                        echo '<td>'.$value.'</td>';
                }
                echo '</tr>';

        }
        echo '</table>';	
	echo '</div>';	
	
}
//111119500892
//one

function prepare_result_for_export($link,$id)
{

         if(!$result_id=run_query($link,$GLOBALS['database'],'select * from view_info_data where id=\''.$id.'\''))
         {
			 //echo '<h1>Problem</h1>';
		 }
		 else
		 {
			// echo '<h1>Success</h1>';
		 }
        $array_id=get_single_row($result_id);

        $sql=$array_id['sql'].'';
        $info=$array_id['info'];

		//echo $sql.'<br>';
        ////modify sql
        //print_r($_POST);
        
        if(isset($_POST['__p1'])) 
        {
			if(strlen($_POST['__p1'])>0)
			{
				$sql=str_replace('__p1',$_POST['__p1'],$sql);			
				$p1=$_POST['__p1'];
			}
			else
			{
				$p1='';
			}
		}
		else
		{
			$p1='';
		}


        if(isset($_POST['__p2'])) 
        {
			if(strlen($_POST['__p2'])>0)
			{
				$sql=str_replace('__p2',$_POST['__p2'],$sql);			
				$p2=$_POST['__p2'];
			}
			else
			{
				$p2='';
			}
		}
		else
		{
			$p2='';
		}

        if(isset($_POST['__p3'])) 
        {
			if(strlen($_POST['__p3'])>0)
			{
				$sql=str_replace('__p3',$_POST['__p3'],$sql);			
				$p3=$_POST['__p3'];
			}
			else
			{
				$p3='';
			}
		}
		else
		{
			$p3='';
		}

        if(isset($_POST['__p4'])) 
        {
			if(strlen($_POST['__p4'])>0)
			{
				$sql=str_replace('__p4',$_POST['__p4'],$sql);			
				$p4=$_POST['__p4'];
			}
			else
			{
				$p4='';
			}
		}
		else
		{
			$p4='';
		}
        //////////////
		//echo $sql;


        if(!$result=run_query($link,$GLOBALS['database'],$sql))
        {
			 echo '<h1>Problem</h1>';
		}
		 else
		 {
			 //echo '<h1>Success</h1>';
		 }


		export_data($result);
}

function export_data($result)
{
	    $fp = fopen('php://output', 'w');
	    if ($fp && $result) 
	    {
		    header('Content-Type: text/csv');
		    header('Content-Disposition: attachment; filename="export.csv"');
		
	    	$first='yes';
		
		   while ($row = get_single_row($result))
		   {
			    if($first=='yes')
			    {
				  fputcsv($fp, array_keys($row));
				  $first='no';
			    }
			
			fputcsv($fp, array_values($row));
		  }
	   }
}



function show_examination_bin()
{
	echo 
	'<div class="position-fixed bg-secondary">
		<button 
		type=button
		class="btn btn-warning btn-sm p-0 m-0 d-inline"
		 data-toggle="collapse" 
		data-target="#advice" href="#advice"><img src="img/copypaste.png" width=20></button>
		<div class="p-3 collapse" id="advice">';
		echo '<p id=cb_4 onclick="clear_bin()" class="bg-danger d-inline">clear</p>
			<p id=cb_5 onclick="copy_binn()" class="bg-warning d-inline">copy</p>';
		copy_bin_text($link);	
			echo '<textarea id=cb_ta cols=50 rows=4></textarea>';
		echo '</div>
	</div>';
}
//////////end of dashboard functions




//////////Barcode Functions////////////
	/**
	 * Defines the left, top and right margins.
	 * @param $left (float) Left margin.
	 * @param $top (float) Top margin.
	 * @param $right (float) Right margin. Default value is the left one.
	 * @param $keepmargins (boolean) if true overwrites the default page margins
	 * @public
	 * @since 1.0
	 * @see SetLeftMargin(), SetTopMargin(), SetRightMargin(), SetAutoPageBreak()
	 * public function SetMargins($left, $top, $right=-1, $keepmargins=false)
	 */
function get_pdf_link_for_barcode()
{
	class MYPDF_BARCODE extends TCPDF 
	{
		public function Header() {}		//to prevent default header 
		public function Footer() {}		//to prevent default footer
	}

	$pdf = new MYPDF_BARCODE('', 'mm', array("50","25"), true, 'UTF-8', true);
	
	$pdf->SetMargins(0,0, $right=-1, $keepmargins=true);
	$pdf->setPrintFooter(false);
	$pdf->setPrintHeader(false);
	$pdf->SetAutoPageBreak(TRUE, 0);
	$pdf->setCellPaddings(0,0,0,0);

	return $pdf;
}

function prepare_sample_barcode($link,$sample_id,$pdf)
{
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => false,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 10,
		'stretchtext' => 4
	);
	
		$sql='select * from result where sample_id=\''.$sample_id.'\'';
		$result=run_query($link,$GLOBALS['database'],$sql);
		if(get_row_count($result)==0){return;}
		
		$pdf->AddPage();
		$pdf->write1DBarcode($sample_id, 'C128', 02, 5 , 30, 13, 0.4, $style, 'N');		
		
		$pdf->StartTransform();
		$pdf->SetFont('helveticaB', '', 15);
		$pdf->Rotate(90, 43, 18);
		$pdf->SetXY(40,11);
		$pdf->Cell(15,5,$sample_id,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
		$pdf->StopTransform();
		
		while($ar=get_single_row($result))
		{
			if($ar['examination_id']==$GLOBALS['sample_requirement'])
			{
				$sample_type=$ar['result'];	
				$pdf->SetFont('helveticaB', '', 7);		
				$pdf->SetXY(5,17);
				$pdf->Cell(15,3,$sample_type,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
				
				$pdf->StartTransform();
				$pdf->SetFont('helveticaB', '', 8);
				$pdf->Rotate(90, 43, 18);
				$pdf->SetXY(40,15);
				$pdf->Cell(15,5,$sample_type,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
				$pdf->StopTransform();
			}
			
			else if($ar['examination_id']==$GLOBALS['patient_name'])
			//else if($ar['examination_id']==$GLOBALS['mrd'])
			{
				$patient_name=substr($ar['result'],0,10);
				//$patient_name=$ar['result'];
				$pdf->SetFont('helveticaB', '', 7);
				$pdf->SetXY(21,17);
				$pdf->Cell(10,3,$patient_name,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	

                                $pdf->StartTransform();
                                $pdf->SetFont('helveticaB', '', 6);
                                $pdf->Rotate(90, 43, 18);
                                $pdf->SetXY(40,17);
       				$pdf->Cell(15,5,$patient_name,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=0, $ignore_min_height=false, $calign='T', $valign='M');	
                                $pdf->StopTransform();


			}
		}
				
}


function prepare_small_sample_barcode($sample_id,$pdf)
{
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => false,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 7,
		'stretchtext' => 4
	);

$style=array(
		'fitwidth' => false,
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 6
);
		
		$w=20;
		$h=7;
		$rx=26.5;
		$ry=23.5;
		$delta=6;
		//$code='C128';
		//$code='EAN8';
		//$code='EAN13';
		//$code='C39';
		$code='S25';
		
		$pdf->AddPage();

		$pdf->StartTransform();
		$pdf->Rotate(90,$rx,$ry);	
		$pdf->write1DBarcode($sample_id, $code, 27, 1  , $w , $h ,  0.4, $style, 'N');		
		$pdf->StopTransform();


		$pdf->StartTransform();
		$pdf->Rotate(90,$rx+$delta,$ry-$delta);	
		$pdf->write1DBarcode($sample_id, $code, 27, 1  , $w , $h ,  0.4, $style, 'N');		
		$pdf->StopTransform();

		$pdf->StartTransform();
		$pdf->Rotate(90,$rx + 2*$delta,$ry-2*$delta);	
		$pdf->write1DBarcode($sample_id+2, $code, 27, 1  , $w , $h ,  0.4, $style, 'N');		
		$pdf->StopTransform();	

		$pdf->StartTransform();
		$pdf->Rotate(90,$rx + 3*$delta,$ry-3*$delta);	
		$pdf->write1DBarcode($sample_id+2, $code, 27, 1  , $w , $h ,  0.4, $style, 'N');		
		$pdf->StopTransform();	
		
}


function prepare_small_sample_barcode_horizontal($sample_id,$pdf)
{
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => false,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 7,
		'stretchtext' => 4
	);

$style=array(
		'fitwidth' => false,
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 6
);
		
		$w=18;
		$h=7;
		$rx=26.5;
		$ry=23.5;
		$delta=6;
		$code='C128';
		//$code='EAN8';
		//$code='EAN13';
		//$code='C39';
		//$code='S25';
		
		$pdf->AddPage();

		$pdf->write1DBarcode($sample_id,   $code, 3, 3  , $w , $h ,  0.4, $style, 'N');
		$pdf->write1DBarcode($sample_id+1, $code, 27,3   , $w , $h ,  0.4, $style, 'N');		
		$pdf->write1DBarcode($sample_id+2, $code, 3, 15  , $w , $h ,  0.4, $style, 'N');		
		$pdf->write1DBarcode($sample_id+3, $code, 27,15  , $w , $h ,  0.4, $style, 'N');		
		
}

	 
function print_pdf($pdf,$fname)
{	
	$filename='barcode.pdf';
	$pdf->Output($filename, 'I');
}

/*
function prepare_sample_barcode_for_tube($sample_id,$pdf)
{
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => true,
		'font' => 'helvetica',
		'fontsize' => 10,
		'stretchtext' => 4
	);
		
		$pdf->AddPage();
		$pdf->write1DBarcode($sample_id, 'C128', 03, 6 , 43, 15, 0.4, $style, 'N');
}
*/

function prepare_sample_barcode_for_tube($link,$sample_id,$pdf)
{
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => false,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => false,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => false,	//no text at bottom
		'font' => 'helvetica',
		'fontsize' => 10,
		'stretchtext' => 4
	);
	
		$sql='select * from result where sample_id=\''.$sample_id.'\'';
		$result=run_query($link,$GLOBALS['database'],$sql);
		if(get_row_count($result)==0){return;}
		//echo 'xxx';
		$pdf->AddPage();
		$pdf->write1DBarcode($sample_id, 'C128', 02, 5 , 43, 12, 0.4, $style, 'N');		
		
		while($ar=get_single_row($result))
		{
			if($ar['examination_id']==$GLOBALS['sample_requirement'])
			{
				$sample_type=$ar['result'];	
				$pdf->SetFont('helveticaB', '', 7);		
				$pdf->SetXY(5,17);
				$pdf->Cell(15,3,$sample_type,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
			}
			
			else if($ar['examination_id']==$GLOBALS['patient_name'])
			//else if($ar['examination_id']==$GLOBALS['mrd'])
			{
				$patient_name=substr($ar['result'],0,10);
				//$patient_name=$ar['result'];
				$pdf->SetFont('helveticaB', '', 7);
				$pdf->SetXY(21,17);
				$pdf->Cell(20,3,$patient_name.' '.$sample_id,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
				$pdf->SetFont('helvetica', '', 5);
				$pdf->SetXY(5,20);
				$pdf->Cell(15,3,$sample_id,$border=0, $ln=0, $align='', $fill=false, $link='', $stretch=2, $ignore_min_height=false, $calign='T', $valign='M');	
			}
		}
				
}


//===========for LJ Chart, but , general in nature===============


function initialize_csv_export_file($filename='export.csv')
{
	$fp = fopen('php://output', 'w');
	if ($fp) 
	{
		header('Content-Type: text/csv');
		header('Content-Disposition: attachment; filename="export.csv"');
	}
	return $fp;
}



//used for exporting QC results
function mk_array_for_one_qc_result($link,$sample_id,$ex_requested)
{
	$mrd_num=get_one_ex_result($link,$sample_id,$GLOBALS['mrd']);
	$sample_requirement=get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement']);
	$date=get_one_ex_result($link,$sample_id,$GLOBALS['Collection_Date']);
	$time=get_one_ex_result($link,$sample_id,$GLOBALS['Collection_Time']);
	$equipment=get_one_ex_result($link,$sample_id,$GLOBALS['qc_equipment_ex_id']);

	$sql='select * from primary_result where sample_id=\''.$sample_id.'\' order by uniq';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$qc_remark=get_one_ex_result($link,$sample_id,$GLOBALS['QC_Remark_id']);
	$qc_data_array=array();
	while($ar=get_single_row($result))
	{
		$ex_requested=array_filter($ex_requested);
		if(in_array($ar['examination_id'],$ex_requested) || count($ex_requested)==0)
		{

			$lab_ref_val=get_lab_reference_value($link,$mrd_num,$ar['examination_id'],$date,$time,$equipment);

			$qc_data['sample_id']=$sample_id;
			$qc_data['examination_id']=$ar['examination_id'].'-'.get_name_of_ex_id($link,$ar['examination_id']);
			$qc_data['result']=$ar['result'];

			//if($lab_ref_val!=false && is_numeric($ar['result']))
			if(!is_numeric($ar['result']))
			{
				//echo $ar['result'].' not numeric<br>';
			}
			if(!$lab_ref_val!=false)
			{
				//echo $ar['result'].' reference value not found<br>';
			}

			if($lab_ref_val!=false && is_numeric($ar['result']))
			{
				$sdi=round((($ar['result']-$lab_ref_val['mean'])/$lab_ref_val['sd']),1);
				$qc_data['sdi']=$sdi;
				$qc_data['mean']=$lab_ref_val['mean'];
				$qc_data['sd']=$lab_ref_val['sd'];
				$qc_data['date']=$date;
				$qc_data['time']=$time;
				$qc_data['equipment']=$equipment;
				$qc_data['mrd_num']=$mrd_num;
				$qc_data['uniq']=$ar['uniq'];
				$qc_data['remark']=$qc_remark;
			}
			else
			{
				$qc_data['sdi']='';
				$qc_data['mean']='';
				$qc_data['sd']='';
				$qc_data['date']=$date;
				$qc_data['time']=$time;
				$qc_data['equipment']=$equipment;
				$qc_data['mrd_num']=$mrd_num;
				$qc_data['uniq']=$ar['uniq'];
				$qc_data['remark']=$qc_remark;
			}
			$qc_data_array[]=$qc_data;
		}
	}
	return $qc_data_array;
}

function get_lab_reference_value($link,$mrd_num,$examination_id,$dt,$tm,$equipment)
{
	$str_datetime=$dt.' '.$tm;
	//2020-06-01 14:36:40
	//%Y-%m-%d %H:%i:%s
	$sql='select * from lab_reference_value where 
			mrd=\''.$mrd_num.'\'
				and
			examination_id=\''.$examination_id.'\'
				and
			(str_to_date(\''.$str_datetime.'\',\'%Y-%m-%d %H:%i:%s\') 
						between
							str_to_date(concat(start_date," ",start_time),\'%Y-%m-%d %H:%i:%s\') 
								and
							str_to_date(concat(end_date," ",end_time),\'%Y-%m-%d %H:%i:%s\') 
						)
				and
			equipment=\''.$equipment.'\'
			';
			
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(rows_affected($link)!=1)
	{
		//echo 'exact one raw for lab_reference_value is required. got (('.rows_affected($link).'))<br>';
		return false;
	}
	$ar=get_single_row($result);
	return $ar;
	//database user is responsible to see that only one such row is avaialble
}

function get_qc_examination_names($link)
{
	$sql='select examination_id,name from examination where sample_requirement="QC-QC-BI"';
	mk_select_from_sql_kv($link,$sql,'examination_id','name','examination_id','examination_id',$disabled='',$default='',$blank='yes');
}

function get_examination_names($link)
{
	$sql='select examination_id,name from examination';
	mk_select_from_sql_kv($link,$sql,'examination_id','name','examination_id','examination_id',$disabled='',$default='',$blank='yes');
}

function get_name_of_ex_id($link,$examination_id)
{
	$sql='select name from examination where examination_id=\''.$examination_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	return $ar['name'];
}

function get_date_range_sample_id($link,$from_date,$to_date,$parameters, $limit='')
{
	$sql='select mrd.sample_id 
			from 
				result mrd,
				result date_range,
				result equipment
			 
			where
				mrd.examination_id=\''.$GLOBALS['mrd'].'\' 
					and
				mrd.result like \'%'.$parameters['qc_mrd'].'%\'
					and

					
				date_range.examination_id=\''.$GLOBALS['Collection_Date'].'\' 
					and	
				(date_range.result between 
						\''.$from_date.'\'
							and				
						\''.$to_date.'\'
				)	
					and					
					
				equipment.examination_id=\''.$GLOBALS['qc_equipment_ex_id'].'\'
					and
				equipment.result like \'%'.$parameters['qc_equipment'].'%\'
					and	
										
				mrd.sample_id=date_range.sample_id
				and
				mrd.sample_id=equipment.sample_id
			
			order by mrd.sample_id	 desc '.$limit;
				
	//echo $sql;
	$result=run_query($link,$GLOBALS['database'],$sql);
	$data=array();
	while($ar=get_single_row($result))
	{
		$data[]=$ar['sample_id'];
	}
	//echo '<pre>';print_r($data);echo '</pre>';	
	return $data;
}


function get_qc_sample_id_from_parameters($link,$parameters,$limit='')
{
	/*
		[qc_equipment] => 

		[from_date] => 
		[from_time] => 
		[to_date] => 
		[to_time] => 

		[from_sample_id] => 
		[to_sample_id] => 

		[examination_id] => 9001
	)*/
	//echo '<pre>';print_r($parameters);echo '</pre>';


	$sql='select mrd.sample_id 
			from 
				result mrd,
				result equipment
			 
			where
				mrd.examination_id=\''.$GLOBALS['mrd'].'\' 
					and
				mrd.result like \'%'.$parameters['qc_mrd'].'%\'
					and
					
				equipment.examination_id=\''.$GLOBALS['qc_equipment_ex_id'].'\' 
					and	
				equipment.result like \'%'.$parameters['qc_equipment'].'%\'
					and				
					
				(mrd.sample_id between \''.$parameters['from_sample_id'].'\' and \''.$parameters['to_sample_id'].'\')
					and
					
				mrd.sample_id=equipment.sample_id

			order by mrd.sample_id	desc '.$limit;

	echo $sql;
	$result=run_query($link,$GLOBALS['database'],$sql);
	$data=array();
	while($ar=get_single_row($result))
	{
		$data[]=$ar['sample_id'];
	}
	//echo '<pre>';print_r($data);echo '</pre>';	
	return $data;
}

function get_today_sample_id($link)
{
	/*
		[qc_equipment] => 

		[from_date] => 
		[from_time] => 
		[to_date] => 
		[to_time] => 

		[from_sample_id] => 
		[to_sample_id] => 

		[examination_id] => 9001
	)*/
	//echo '<pre>';print_r($parameters);echo '</pre>';

	$sql='select mrd.sample_id 
			from 
				result mrd,
				result today
			 
			where
				mrd.examination_id=\''.$GLOBALS['mrd'].'\' 
					and
				mrd.result like "QC/%" 
					and
					
				today.examination_id=\''.$GLOBALS['Collection_Date'].'\' 
					and	
				today.result = \''.strftime("%Y-%m-%d").'\'
					and				
										
				mrd.sample_id=today.sample_id
			
			order by mrd.sample_id desc	
			limit 500';
				
	//echo $sql;
	$result=run_query($link,$GLOBALS['database'],$sql);
	$data=array();
	while($ar=get_single_row($result))
	{
		$data[]=$ar['sample_id'];
	}
	//echo '<pre>';print_r($data);echo '</pre>';	
	return $data;
}

/*
function get_sample_status($link,$sample_id)
{
	$cd=get_one_ex_result_row($link,$sample_id,$GLOBALS['collection_date']); //generally 1015
	$cd_text=(strlen($cd['result'])>0)?'C':'_';
	$rd=get_one_ex_result_row($link,$sample_id,$GLOBALS['receipt_date']); //generally 1017
	$rd_text=(strlen($rd['result'])>0)?'R':'_';
	$r=get_result_of_sample_in_array($link,$sample_id);
	$rl=get_one_ex_result_row($link,$sample_id,$GLOBALS['released_by']); //generally 1018	
	$rl_text=(strlen($rl['result'])>0)?'P':'_';
	
	$eq_ar=array();
	//print_r($r);
	foreach($r as $k=>$v)
	{
		$examination_details=get_one_examination_details($link,$k);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$eq=isset($edit_specification['equipment'])?$edit_specification['equipment']:' ';
		$eq_ar[]=$eq;
	}
	$eq_ar_u=array_unique($eq_ar);
	sort($eq_ar_u);
	
	$eq_str=str_pad(
					implode(	"",
								$eq_ar_u
							)
					,3);
	return array($cd_text.$rd_text.$rl_text,$eq_str);
}
*/


/*
 * Requested 			colorless
 * Collected			light gray
 * Received-at-lab		light yellow
 * prepared				orange
 * analysed				light red
 * verified				light blue
 * released				light green
 * 
 * $GLOBALS['request_date']=1027;
$GLOBALS['request_time']=1028; 
 
$GLOBALS['collection_date']=1015;
$GLOBALS['collection_time']=1016; 

$GLOBALS['receipt_date']=1017;
$GLOBALS['receipt_time']=1018;

$GLOBALS['sample_preparation_date']=1029;
$GLOBALS['sample_preparation_time']=1030; 

$GLOBALS['analysis_date']=1031;
$GLOBALS['analysis_time']=1032;

$GLOBALS['verification_date']=1033;
$GLOBALS['verification_time']=1034;

$GLOBALS['release_date']=1033;
$GLOBALS['release_time']=1034;

$GLOBALS['released_by']=1014;
$GLOBALS['interim_released_by']=1019;
 * */
 
function get_equipment_str_old($link,$sample_id)
{
	$r=get_result_of_sample_in_array($link,$sample_id);
	
	$eq_ar=array();
	//print_r($r);
	foreach($r as $k=>$v)
	{
		$examination_details=get_one_examination_details($link,$k);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$eq=isset($edit_specification['equipment'])?$edit_specification['equipment']:'';
		$eq_ar[]=$eq;
	}
	$eq_ar_u=array_unique($eq_ar);
	sort($eq_ar_u);
	
	$eq_str=str_pad(
					implode(	"",
								$eq_ar_u
							)
					,3);
	//echo 'xx'.$eq_str;
	return $eq_str;
}

//mysql json selection example
//select sample_id,result.examination_id,name,json_extract(edit_specification,'$.equipment') from result,examination where sample_id='1000436' and examination.examination_id=result.examination_id
//select group_concat(distinct equipment SEPARATOR '') x from result,examination where sample_id='1000436' and examination.examination_id=result.examination_id;
//above is single qury giving same result
/*
update examination 
 set help=trim( both '"' from json_extract(edit_specification,'$.help') ) 
where json_valid(edit_specification)=True
*/
function get_equipment_str($link,$sample_id)
{
	$r=get_result_of_sample_in_array($link,$sample_id);
	
	$eq_ar=array();
	//print_r($r);
	foreach($r as $k=>$v)
	{
		$examination_details=get_one_examination_details($link,$k);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$eq=isset($edit_specification['equipment'])?$edit_specification['equipment']:'';
		$eq_ar[]=$eq;
	}
	$eq_ar_u=array_unique($eq_ar);
	sort($eq_ar_u);
	
	$eq_str=str_pad(
					implode(	"",
								$eq_ar_u
							)
					,3);
	//echo 'xx'.$eq_str;
	return $eq_str;
}

function show_sid_button_release_status($link,$sid,$extra_post='')
{
	$final_state=0;
	foreach ($GLOBALS['sample_status'] as $status_index=>$status_array )
	{
		$temp_state=0;
		foreach($status_array[1] as $key=>$ex_id)
		{
			$len=strlen(get_one_ex_result($link,$sid,$ex_id));
			if($len>0)
			{
				$temp_state=$temp_state+1;
			}
			if($temp_state==count($status_array[1]))
			{
				$final_state=$status_index;
			}
		}
	}

	$pid=get_one_ex_result($link,$sid,$GLOBALS['patient_name']);
	$mrd_local=get_one_ex_result($link,$sid,$GLOBALS['mrd']);
	$location=get_one_ex_result($link,$sid,$GLOBALS['OPD/Ward']);
	
	
	echo '<div class="btn-group-vertical m-0 p-0 border border-light">';


		echo '<div class="btn-group d-inline-block">
				<button type="button" 
				style="background-color:'.$GLOBALS['sample_status'][$final_state][2].'" 
				class="m-0 p-0 btn btn-success btn-block btn-sm dropdown-toggle text-dark" 
				data-toggle="dropdown">'.$sid.'</button>
				
				<ul class="dropdown-menu">
					<li>'.$pid.'</li><li>'.$mrd_local.'</li><li>'.$location.'</li>';
					if(!requestonly_check($link))
					{	
						get_sample_action($link,$sid,$extra_post);
					}
				echo '</ul>
			</div>';

	
		sample_id_view_button(
			$sid,
			'target=_blank style="background-color:'.$GLOBALS['sample_status'][$final_state][2].'" ',
			colorize_eq_str($link,get_equipment_str($link,$sid))
			);
	echo '</div>';
}


function get_sample_action($link,$sample_id,$extra_post='')
{
	echo '<div class="d-inline-block" >
	<form method=post>';
	echo $extra_post;
	foreach($GLOBALS['sample_status'] as $index=>$status_details)
	{
		if($status_details[4]=='show')
		{
			echo '<button 
					type=submit 
					class="btn btn-outline-dark btn-sm " 
					style="background-color:'.$status_details[2].'" 
					name=action 
					value=\''.$status_details[0].'\' >'.$status_details[0].'</button>';
		}
	}
	
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=sample_id value=\''.$sample_id.'\'>
	</form></div>';	
}


function colorize_eq_str($link,$str_real)
{
	$colorised_str='';
	$str=str_split($str_real);
	$local_eq_color_code=json_decode(get_config_value($link,'eq_color_code'),True);
	
	foreach ($str as $chr)
	{
		if(array_key_exists($chr,$local_eq_color_code))
		{
			$colorised_str=$colorised_str.'<span  style=" padding:2px; background-color:'.$local_eq_color_code[$chr].'" >'.$chr.'</span>';
		}
		else
		{			
			$colorised_str=$colorised_str.'<span  style="background-color:red" >'.$chr.'</span>';
		}
	}
	//echo $colorised_str;
	return $colorised_str;
}

function show_sid_button_release_status_and_pid($link,$sid)
{
	$released_by_local=get_one_ex_result($link,$sid,$GLOBALS['released_by']);
	$pid=get_one_ex_result($link,$sid,$GLOBALS['patient_name']);
	$mrd_local=get_one_ex_result($link,$sid,$GLOBALS['mrd']);
	$location=get_one_ex_result($link,$sid,$GLOBALS['OPD/Ward']);


	if(strlen($released_by_local)==0)
	{
		sample_id_view_button(
			$sid,
			'target=_blank',
			'<span class="text-danger rounded" >'.$sid.'</span>
			<span class="text-primary"><pre class="d-inline">'.$pid.'</pre></span>
			<span class="text-primary"><pre class="d-inline">'.$mrd_local.'</pre></span>
			<span class="text-primary"><pre class="d-inline">'.$location.'</pre></span>'
			);
	}
	else
	{
		sample_id_view_button(
		$sid,
		'target=_blank',
		'<span class="text-dark rounded" >'.$sid.'</span>
			<span class="text-primary"><pre class="d-inline">'.$pid.'</pre></span>
			<span class="text-primary"><pre class="d-inline">'.$mrd_local.'</pre></span>
			<span class="text-primary"><pre class="d-inline">'.$location.'</pre></span>'
			);
	}
}


function calculate_tat($link,$sample_id,$print='yes')
{
	$tat=array();
	$tat['sample_id']=$sample_id;
	ob_start();
	//Prepare

	//1. Request entry time is MRD entry time
	$rq=get_one_ex_result_row($link,$sample_id,$GLOBALS['mrd']); //generally 1001
	$tat['request_time']=$rq['recording_time'];
	//2. Collection date and time
	$cd=get_one_ex_result_row($link,$sample_id,$GLOBALS['collection_date']); //generally 1015
	$ct=get_one_ex_result_row($link,$sample_id,$GLOBALS['collection_time']); //generally 1016

	//3. Receipt date time
	$rd=get_one_ex_result_row($link,$sample_id,$GLOBALS['receipt_date']); //generally 1017
	$rt=get_one_ex_result_row($link,$sample_id,$GLOBALS['receipt_time']); //generally 1018

	//4. Analysis time
	$pr=get_primary_result_rows_of_sample_in_array($link,$sample_id);
	
	//5. Release date time
	$rl=get_one_ex_result_row($link,$sample_id,$GLOBALS['released_by']); //generally 1018	
		
	echo '<pre>';
	echo '<br>TAT for :'.$sample_id;
	
			//print_r($rq);
	echo '<br>'.'request_time:'.$rq['recording_time']; //MRD is added first, always and never modified

	$rq_stamp=strtotime($rq['recording_time']);
			//$rq_time=getDate($rq_stamp);
			//print_r($rq_time);

		
	if($cd!=null and $ct!=null)
	{
		echo '<br>'.'collection_time:'.$cd['result'].' '.$ct['result'];
		$tat['collection_time']=$cd['result'].' '.$ct['result'];
		$c_stamp=strtotime($cd['result'].' '.$ct['result']);
	//$c_time=getDate($c_stamp);
	//print_r($c_time);

		$ct_rq=round(($c_stamp-$rq_stamp)/3600);
	//echo '<br>'.$c_stamp.'->'.$rq_stamp.'--> Collection-Request differance:'.$ct_rq.' Hours';
		echo '<br>Collection-Request differance:'.$ct_rq.' Hours';
		$tat['Collection_Request_TAT']=$ct_rq;
	}
	else
	{
		echo '<br>Collection date and Time not available';
	}	



	if($rd!=null and $rt!=null)
	{
		echo '<br>'.'receipt_time:'.$rd['result'].' '.$rt['result'];
		$rc_stamp=strtotime($rd['result'].' '.$rt['result']);
		$tat['receipt_time']=$rd['result'].' '.$rt['result'];
	}
	else
	{
		echo '<br>Receipt date and Time not available';
	}	
	
		
	if($rd!=null and $rt!=null and $cd!=null and $ct!=null )
	{
		$rc_ct=round(($rc_stamp-$c_stamp)/3600,1);
		//echo '<br>'.$rc_stamp.'->'.$c_stamp.'-->Receipt - Collection differance:'.$rc_ct.' Hours';
		echo '<br>Receipt - Collection differance:'.$rc_ct.' Hours';
		$tat['Receipt_Collection_TAT']=$rc_ct;
	}
	else
	{
		echo '<br>Receipt - Collection differance can not be calculated. Date and time of Collection/Receipt not available';
	}
		
	//print_r($pr);
	//from primary table
	//5031 completed_time:2020 09 28 131730|XL_1000
	foreach ($pr as $ex_data)
	{
		//$tat[$ex_data['examination_id']]=$ex_data['uniq'];
		//date_create_from_format ( string $format , string $datetime 
		//YmdHis
		$ex_date=date_create_from_format ( "YmdHis" , explode('|',$ex_data['uniq'] )[0]);
		if($ex_date)
		{
			$tat[$ex_data['examination_id']]=date_format($ex_date, 'Y-m-d H:i:s');
			$ex_stamp=strtotime($tat[$ex_data['examination_id']]);
			$tat[$ex_data['examination_id'].'_TAT']=round(($ex_stamp-$rc_stamp)/3600,1);
			echo '<br>'.$ex_data['examination_id'].' completed_time:'.$tat[$ex_data['examination_id']];
			echo '<br>'.$ex_data['examination_id'].'_TAT:'.$tat[$ex_data['examination_id'].'_TAT'].' Hours';
		}
		else
		{
			//$tat[$ex_data['examination_id'].'_TAT']='Uncalculated';
			//echo '<br>'.$ex_data['examination_id'].'_TAT:'.$tat[$ex_data['examination_id'].'_TAT'].' Hours';			
		}
	}

	if(strlen($rl['result'])>0)
	{
		echo '<br>'.'released_time:'.$rl['result'].'-->'.$rl['recording_time'];
		
		$rl_stamp=strtotime($rl['recording_time']);
		$tat['release_time']=$rl['recording_time'];
	}
	else
	{
		echo '<br>report not released';
	}
	
	//print_r($rl);
	if(strlen($rl['result'])>0 and $rd!=null and $rt!=null)
	{
		$rl_rc=round(($rl_stamp-$rc_stamp)/3600,1);
		echo '<br>Release - SampleReceipt differance:'.$rl_rc.' Hours';
		$tat['Release_SampleReciept_TAT']=$rl_rc;
	}
	else
	{
		echo '<br>Release - SampleReceipt differance can not be calculated: (report not released / receipt date and time not avialable)';
	}
		
	if(strlen($rl['result'])>0)
	{
		$final_tat=round(($rl_stamp-$rq_stamp)/3600,1);
		echo '<br>Release - Request differance:'.$final_tat.' Hours';
		$tat['Total_TAT']=$final_tat;
	}
	else
	{
		echo '<br>Release - Request differance can not be calculated';
	}
	echo '</pre>';


	$output = ob_get_contents();
	ob_end_clean();
	//echo '<pre>';print_r($tat);echo '</pre>';

	
	if($print=='yes')
	{
		echo $output;
		return $tat;
	}
	else
	{
		return $tat;		
	}
	
	
}


function view_sql_result_as_table($link,$sql,$show_hide='yes')
{
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		 echo '<h1>Problem</h1>';
		 return false;
	}
	display_sql_result_data($result,$show_hide);
}

function update_sample_status($link,$sample_id,$action)
{
	if(!sample_exist($link,$sample_id)){ echo '<h5>Sample Id '.$sample_id.' does not exist</h5>';return false;}
	//echo '<h1>'.$_POST['action'].'</h1>';
	foreach($GLOBALS['sample_status'] as $index=>$status_array)
	{
		if($status_array[0]==$action)
		{
			$kcounter=0;
			foreach($status_array[1] as $key=>$ex_id)
			{
				if($status_array[3][$kcounter]=='date')
				{
					insert_update_one_examination_with_result($link,$sample_id,$ex_id,strftime("%Y-%m-%d"));
				}
				elseif($status_array[3][$kcounter]=='time')
				{
					insert_update_one_examination_with_result($link,$sample_id,$ex_id,strftime("%H:%M"));
				}
				elseif($status_array[3][$kcounter]=='username')
				{
					$user=get_user_info($link,$_SESSION['login']);
					insert_update_one_examination_with_result($link,$sample_id,$ex_id,$user['name']);
				}
				$kcounter++;
			}
		}
	}
}


function echo_sample_action_button()
{
	echo '<div class="d-inline-block" >';
	foreach($GLOBALS['sample_status'] as $index=>$status_details)
	{
		if($status_details[4]=='show')
		{
			echo '<button 
					type=submit 
					class="btn btn-outline-dark btn-sm " 
					style="background-color:'.$status_details[2].'" 
					name=status_action
					value=\''.$status_details[0].'\' >'.$status_details[0].'</button>';
		}
	}

	echo '</div>';	
}


function update_all_sample_status($link,$action,$post)
{
		foreach($post as $k=>$v)
		{
			if(is_int($k))
			{
				update_sample_status($link,$k,$action);
			}
		}
}

function create_new_special($link)
{
	$result=run_query($link,$GLOBALS['database'],'select * from menu_new');
	while($ar=get_single_row($result))
	{
		echo '<button class="btn btn-outline-primary m-0 p-0 " formaction=create_new_special.php type=submit name=action value=\'ex_list|'.$ar['ex_list'].'\'>'.$ar['caption'].'</button>';
	}
}

function insert_sample_id_link($link,$sample_id,$display_error='yes')
{
	$sql='insert into sample_link(sample_id,link)
			values (\''.$sample_id.'\',\''.bin2hex(random_bytes(16)).'\')';
	if(!run_query($link,$GLOBALS['database'],$sql,$display_error))
	{
		return false;
	}
	else
	{
		return true;
	}
}

function create_newww_special($link)
{
	$result=run_query($link,$GLOBALS['database'],'select * from menu_new');
	while($ar=get_single_row($result))
	{
		echo '<button 
					class="btn btn-outline-primary m-0 p-0 " 
					formaction=newww_general.php 
					type=submit 
					name=action
					value="newww_general|'.$ar['ex_list'].'|'.$ar['route'].'|'.$ar['default_value'].'">'.$ar['caption'].'</button>';
	}
}


function make_link($link,$sample_id)
{
	$sql='select  * from sample_link where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	//echo '<pre>';
	//print_r($ar);
	//print_r($_SERVER);
	//echo '</pre>';
	//echo $_SERVER['HTTP_HOST'].'/cl_general/get_linked_report.php?token='.$ar['link'];
	$prefix=get_config_value($link,'qr_link_prefix');
	echo $prefix.'get_linked_report.php?token='.$ar['link'];
}

function make_link_return($link,$sample_id)
{
	$sql='select  * from sample_link where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	//echo '<pre>';
	//print_r($ar);
	//print_r($_SERVER);
	//echo '</pre>';
	//echo $_SERVER['HTTP_HOST'].'/cl_general/get_linked_report.php?token='.$ar['link'];
	//return 'http://gmcsurat.edu.in:12346/cl_general/get_linked_report.php?token='.$ar['link'];
	$prefix=get_config_value($link,'qr_link_prefix');
	return $prefix.'get_linked_report.php?token='.$ar['link'];

}


function send_sms($sms,$num)
{
        $str=$GLOBALS['sms_site'].'?';
        $getdata = http_build_query
                (
                array(
                        'UserID' => $GLOBALS['sms_UserID'],
                        'UserPass' => $GLOBALS['sms_UserPass'],
                        'Message'=>$sms,
                        'MobileNo'=>$num,
                        'GSMID'=>$GLOBALS['sms_GSMID']
                        )
                );
        $hdr = "Content-Type: application/x-www-form-urlencoded";
        $opts = array('http' =>
                                        array(
                                                'method'  => 'GET',
                                                'content' => $getdata,
                                                'header'  => $hdr
                                                )
                                );

        $context  = stream_context_create($opts);
        //echo $str;
        //echo $context;
        $ret=file_get_contents($str,false,$context);
        return $ret;
}



//=======X=========

function x_get_examination_data($link,$sql,$pk_name,$multi='no',$size=8)
{

	//x_mk_select_from_sql_with_description($link,$sql,$field_name,$select_name,$select_id,$disabled='',$default='',$blank='no',$readonly='')
	  x_mk_select_from_sql_with_description($link,$sql,$pk_name,$pk_name,$pk_name,$disabled='',$default='',$blank='no',$readonly='',$multi,$size);
}

function x_get_basic_specific()
{
	$YY=strftime("%y");
echo '<div id=basic class="tab-pane active">';
echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="mrd">Patient Unique Identification</label>
			<input 
				size=13 
				id=mrd 
				name=\'__ex__'.$GLOBALS['mrd'].'\' 
				class="form-control text-danger" 
				required="required" 
				type=text 
				placeholder="Patient Unique Identification" >
			<p class="help"><span class=text-danger>Must be unique to the patient</p>';
echo '</div>';
echo '</div>';
}

function x_mk_select_from_sql_with_description($link,$sql,$field_name,$select_name,$select_id,$disabled='',$default='',$blank='no',$readonly='',$multi,$size)
{
	//echo '<h1>++'.$readonly.'</h1>';
	$ar=x_mk_array_from_sql_with_description($link,$sql,$field_name);
	if($blank=='yes')
	{
		array_unshift($ar,array("",""));
	}
	//echo '<pre>';print_r( $ar);echo '</pre>';
	x_mk_select_from_array_with_description($select_name,$ar,$disabled,$default,$readonly,$multi,$size);
}

function x_mk_array_from_sql_with_description($link,$sql,$field_name)
{
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ret=array();
	while($ar=get_single_row($result))
	{
		$ret[]=array($ar[$field_name],$ar['description']);
	}
	return $ret;
}

function x_mk_select_from_array_with_description($name, $select_array,$disabled='',$default='',$readonly='',$multi, $size)
{	
	//echo '<h1>--'.$readonly.'--</h1>';
	if($readonly=='readonly')
	{
		foreach($select_array as $key=>$value)
		{
			if($value[0]==$default)
			{
				echo '<input type=hidden '.$readonly.' name=\''.$name.'\' id=\''.$name.'\'  value=\''.$default.'\'>';
				echo $value[1].'('.$value[0].')';
			}
			else
			{

			}
		}
		return TRUE;
	}
	
	if($multi=='yes')
	{
		$selected=$name.'_selected';
		

		
		
		echo '<select  
					size=\''.$size.'\' multiple '.$disabled.'  
					id=\''.$name.'\' name=\''.$name.'[]\' 
					onclick="add_to_storage(this,\''.$selected.'\',event)"
					onkeypress=" 
					if(event.key==\' \')
					{
						//alert(\'space bar pressed\');
						add_to_storage(this,\''.$selected.'\',event)
					}"
				">';

		echo '<script>
				var selected_array=[]
				function add_to_storage(this_element,selected_element_id,event)
				{
					se=document.getElementById(selected_element_id)
					current=[...this_element.selectedOptions].map(option=>option.value)
					selected_array.push(current)
					option = document.createElement("option");
					option.text = this_element[this_element.selectedIndex].text
					option.value = this_element[this_element.selectedIndex].value
					se.prepend(option)
					this_element.remove(this_element.selectedIndex)
					document.getElementById("xx").value=selected_array
				}


				function remove_from_storage(this_element,unselected_element_id,event)
				{
					se=document.getElementById(unselected_element_id)
					
					current=[...this_element.selectedOptions].map(option=>option.value)
					selected_array.splice(selected_array.indexOf(current))
					
					option = document.createElement("option");
					option.text = this_element[this_element.selectedIndex].text
					option.value = this_element[this_element.selectedIndex].value
					se.prepend(option)
					this_element.remove(this_element.selectedIndex)
					document.getElementById("xx").value=selected_array

				}
								
				</script>';
	}
	else
	{
		$selected=$name.'_selected';
		//echo '<select  '.$disabled.'  id=\''.$name.'\' name=\''.$name.'\' ">';
				echo '<select  
					size=\''.$size.'\'  '.$disabled.'  
					id=\''.$name.'\' name=\''.$name.'[]\' 
					onclick="add_to_storage(this,\''.$selected.'\',event)"
					
					//onkeypress=" 
					//if(event.key==\' \')
					//{
					//	//alert(\'space bar pressed\');
					//	add_to_storage(this,\''.$selected.'\',event)
					//}"
				">';

		echo '<script>
				var selected_array=[]
				function add_to_storage(this_element,selected_element_id,event)
				{
					se=document.getElementById(selected_element_id)
					current=[...this_element.selectedOptions].map(option=>option.value)
					selected_array.push(current)
					option = document.createElement("option");
					option.text = this_element[this_element.selectedIndex].text
					option.value = this_element[this_element.selectedIndex].value
					se.prepend(option)
					this_element.remove(this_element.selectedIndex)
					document.getElementById("xx").value=selected_array
				}


				function remove_from_storage(this_element,unselected_element_id,event)
				{
					se=document.getElementById(unselected_element_id)
					
					current=[...this_element.selectedOptions].map(option=>option.value)
					selected_array.splice(selected_array.indexOf(current))
					
					option = document.createElement("option");
					option.text = this_element[this_element.selectedIndex].text
					option.value = this_element[this_element.selectedIndex].value
					se.prepend(option)
					this_element.remove(this_element.selectedIndex)
					document.getElementById("xx").value=selected_array

				}
								
				</script>';
		
	}

	foreach($select_array as $key=>$value)
	{
		if($value[0]==$default)
		{
			echo '<option  selected value=\''.$value[0].'\' > '.$value[1].'('.$value[0].')'.' </option>';
		}
		else
		{
			echo '<option value=\''.$value[0].'\' > '.$value[1].'('.$value[0].')'.' </option>';
		}
	}

	echo '</select>';


	if($multi=='yes')
	{	
		echo '<select multiple size='.$size.'
					onclick="remove_from_storage(this,\''.$name.'\')"
					onkeypress="remove_from_storage(this,\''.$name.'\')"
					
					onkeypress=" 
					if(event.key==\' \')
					{
						//alert(\'space bar pressed\');
						remove_from_storage(this,\''.$name.'\',event)
					}"
					
					
					id=\''.$selected.'\' name=\''.$selected.'\'></select>';	
		echo '<br><input type=text id=xx name=xx size=90>';
	}
	else
	{
				echo '<select  size='.$size.'
					onclick="remove_from_storage(this,\''.$name.'\')"
					onkeypress="remove_from_storage(this,\''.$name.'\')"
					
					onkeypress=" 
					if(event.key==\' \')
					{
						//alert(\'space bar pressed\');
						remove_from_storage(this,\''.$name.'\',event)
					}"
					
					
					id=\''.$selected.'\' name=\''.$selected.'\'></select>';	
			echo '<br><input type=text id=xx name=xx size=90>';
		
	}
	return TRUE;
}



function x_save_insert_specific($link)
{
			//find list of super_profiles requested, merge with profiles requested,then..
			//find list of examinations requested
			//determine sample-type required
			//find sample_id to be given
			//insert all examinations/non-examinations in result table
			
	//find list of examinations requested//////////////////////////////
	$requested=array();
	$ex_requested=array_filter(explode(',',$_POST['list_of_selected_examination']));
	$requested=$requested+$ex_requested;
	//echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';
	
	$profile_requested=explode(',',$_POST['list_of_selected_profile']);
	
	$profile_requested_in_super_profile=convert_super_profile_to_profile($link,$_POST['list_of_selected_super_profile']);
	$profile_requested=array_filter(array_unique(array_merge($profile_requested,$profile_requested_in_super_profile)));
	//echo '<pre>following profiles are requesteddddddd:<br>';print_r($profile_requested);echo '</pre>';

	foreach($profile_requested as $value)
	{
		$psql='select * from profile where profile_id=\''.$value.'\'';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		//echo $psql;print_r($ar);
		$profile_ex_requested_main=explode(',',$ar['examination_id_list']);

		$profile_ex_requested=$profile_ex_requested_main;
		$requested=array_merge($requested,$profile_ex_requested);
	}

//////for EXTRA
	$super_profile_requested=explode(',',$_POST['list_of_selected_super_profile']);
	foreach($super_profile_requested as $sp)
	{
		$ssql='select * from super_profile where super_profile_id=\''.$sp.'\'';
		$result=run_query($link,$GLOBALS['database'],$ssql);
		if(rows_affected($link)>0)
		{
			$ar=get_single_row($result);
			//echo $psql;print_r($ar);
			$extra_requested_in_super_profile=explode(',',$ar['extra']);
			$requested=array_merge($requested,$extra_requested_in_super_profile);
		}
	}
//////end of extra

	$with_result=array();
	foreach($_POST as $k=>$v)
	{
		$tok=explode('__',$k);
		if(isset($tok[1])=='ex')
		{
			$with_result_id=$tok[2];
			//echo $tok[2].'<br>';
			$with_result[]=$tok[2];
		}
	}
	$requested=array_merge($requested,$with_result);
	$requested=array_filter(array_unique($requested));
//1
	//echo '<pre>following is requested:<br>';print_r($requested);echo '</pre>';

	//determine sample-type required for each and also distinct types////////////////////////////////////
	$sample_required=array();
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	$stype_for_each_requested=array();

	foreach($requested as $ex)
	{
		$psql='select sample_requirement from examination where examination_id=\''.$ex.'\'';
		//echo $psql.'<br>';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		$sample_required[]=$ar['sample_requirement'];
		$stype_for_each_requested[$ex]=$ar['sample_requirement'];
		//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	}

//2	
	//echo '<pre>following are sample_requirements for each:<br>';print_r($stype_for_each_requested);echo '</pre>';
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	$sample_required=array_unique($sample_required);
//3	
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
	//determine sample_id to be given/////////////////////////////////
	$sample_id_array=set_sample_id($link,$sample_required);
//4	
	//echo '<pre>following samples ids are alloted:<br>';print_r($sample_id_array);echo '</pre>';
	show_sample_required($sample_id_array);
//insert examinations////////////////////////////////////////////
	
	foreach($sample_id_array as $stype=>$sid)
	{
		foreach($stype_for_each_requested as $ex=>$exreq)
		{

			$examination_details=get_one_examination_details($link,$ex);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$type=isset($edit_specification['type'])?$edit_specification['type']:'';
			//echo $ex.'<br>';
			if($stype==$exreq)
			{
				if($type!='blob')
				{
					if(array_key_exists('__ex__'.$ex,$_POST))
					{
						//echo $_POST['__ex__'.$ex].'<br>';
						insert_one_examination_with_result($link,$sid,$ex,$_POST['__ex__'.$ex]);
					}
					else
					{					
						insert_one_examination_without_result($link,$sid,$ex);
					}
				}
				else
				{
					insert_one_examination_blob_without_result($link,$sid,$ex);
				}
			}
			if($exreq=='None')
			{
				////echo '__ex__'.$ex.'<br>';
					//if($ex==$GLOBALS['mrd'])
					//{
						//insert_one_examination_with_result($link,$sid,$ex,$_POST['mrd']);
					//}

					if(array_key_exists('__ex__'.$ex,$_POST))
					{
						//echo $_POST['__ex__'.$ex].'<br>';
						insert_one_examination_with_result($link,$sid,$ex,$_POST['__ex__'.$ex]);
					}
					elseif($ex==$GLOBALS['sample_requirement'])
					{
						//already inserted during set_sample_id()
					}
					else
					{
						if($type!='blob')
						{
							insert_one_examination_without_result($link,$sid,$ex);
						}
						else
						{
							insert_one_examination_blob_without_result($link,$sid,$ex);
						}
					}
			}
		}
	}

	return $sample_id_array	;
}


function showww_sid_button_release_status($link,$sid,$extra_post='',$uid=0,$checkbox='no')
{
	//echo '<h1>'.$uid.'</h1>';
	if(!sample_exist($link,$sid))
	{
		echo '<div class="btn-group-vertical m-0 p-0 border border-light print_hide">';


			echo '<div class="btn-group d-inline-block">
					<button type="button"  
					class="m-0 p-0 btn btn-block btn-sm dropdown-toggle text-dark" 
					data-toggle="dropdown">'.$sid.'</button>
					
					<ul class="dropdown-menu">
						<li>No sample</li>';
					echo '</ul>
				</div>';
		echo '</div>';		
	return;
	}

	$status_button_info=get_config_value($link,'status_button_info');
	$ex_for_status_button=explode(',',$status_button_info);
	
	$status_info_string='';
	foreach($ex_for_status_button as $status_ex_id)
	{
		$ex_value=get_any_examination_result($link,$sid,$status_ex_id);
		$status_info_string=$status_info_string.'<div>'.$ex_value.'</div>';
	}
	
	if($uid>0)
	{
		$ex_value=get_id_type_examination_result($link,$sid,$uid);
		$examination_details=get_one_examination_details($link,$uid);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$prefix=isset($edit_specification['unique_prefix'])?$edit_specification['unique_prefix']:'';
		//$did=str_pad($prefix.$ex_value,7,'.');
		$did=$prefix.$ex_value;
	}
	else
	{
		 $did=$sid;
	}

	$final_state=xxx_get_sample_action_last($link,$sid);
	$bgcolor=isset($final_state['color'])?$final_state['color']:'#FFFFFF';
	
	
	echo '<div class="btn-group-vertical m-0 p-0 border border-light print_hide w-100">';
				echo '<div class="btn-group border border-warning border-2">';
				
									////button
									echo '		 <button type="button" 
									style="background-color:'.$bgcolor.'" 
									class="m-0 p-0 btn btn-success btn-block btn-sm dropdown-toggle text-dark" 
									data-toggle="dropdown">'.$did.'</button>';
									
									////menu
									echo '<div class="dropdown-menu ">';
									
										echo $status_info_string;
									
										echo '<div>';
											if(!requestonly_check($link))
											{
												xxx_get_sample_action($link,$sid,$extra_post);
											}
										echo '</div>
									</div>';
									if($checkbox=='yes')
									{
										echo '<input 
										onclick="
														//alert(\'hi\')
														update_list_of_id(this)
												"
										class="status_check_box" value=\''.$did.'\' id=status_check_box^'.$did.'  style="background-color:'.$bgcolor.';" type=checkbox>';
									}
				echo '</div>';



				echo '<div class="d-block w-100">
					<form method=post action=viewww_single.php class=print_hide target=_blank style="background-color:'.$bgcolor.'" >
					<button style="width:100%;height:100%;" class="btn btn-outline-success btn-sm btn-block text-dark " name=sample_id value=\''.$sid.'\' >.'.colorize_eq_str($link,get_equipment_str($link,$sid)).'</button>
					<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
					<input type=hidden name=action value=view_single>';
					echo '</form>
				</div>';		
	echo '</div>';
}


///////////////from viewwww_signle.php/////
function xx_get_basic_specific()
{
	$YY=strftime("%y");
echo '<div id=basic class="tab-pane active">';
echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="mrd">Patient Unique Identification</label>
			<input 
				size=13 
				id=mrd 
				name=\'__ex__'.$GLOBALS['mrd'].'\' 
				class="form-control text-danger" 
				required="required" 
				type=text 
				placeholder="Patient Unique Identification" >
			<p class="help"><span class=text-danger>Must be unique to the patient</p>';
echo '</div>';
echo '</div>';
}


function xx_get_examination_data($link,$sql,$pk_name,$multi='no',$size=8)
{
	echo '<button class="btn btn-success " type=button id=ex_all_expand onclick="expand_all()">Expand All</button>';
	echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
	echo '<input type=hidden readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';
	$tree=make_examination_tree($link,$sql);
	//tree_to_div($tree);
	echo '<ul style="list-style-type: none">';
	tree_to_panel($link,$tree,'',' collapse ');
	echo '</ul>';
	//tree_to_table($link,$tree,'',' show ');

}


function tree_to_div($tree)
{
	foreach($tree as $k=>$v)
	{
		if(is_array($v))
		{
			echo '<div id='.$k.'>';
			tree_to_div($v);
		}
		else
		{
			echo '<div id='.$k.'>'.$v;
		}
		echo '</div>';
	}
}


function tree_to_table($link,$tree,$id_prefix='',$collapse=' collapse ')
{
	echo '<table class="table table-sm table-striped" border=1 >';
	foreach($tree as $k=>$v)
	{
		//$rand=str_replace(' ','_',$k).'_'.rand(10000,20000);
		
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',$k));
		
		if(is_array($v))
		{
			
			echo '<tr><th>
						<span
							class="text-info  border border-primary" 
							data-toggle="collapse"
							id=\''.$id.'\' 
							data-target=#'.$id.'_target
							>'
							.$k.'
						</span>
						<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>
						</th></tr>';
			echo '<tr><td id='.$id.'_target class="'.$collapse.'" style="padding-left:60px">';
			tree_to_table($link,$v,$id,$collapse);
			echo'</td></tr>';
		}
		else
		{
			echo '<tr><th>
							<span
								class="text-info border border-primary" 
								data-toggle="collapse" 
								data-target=#'.$id.'_target 
								class="text-primary"
								>'
								.$k.'
							</span>
							<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>

						</th></tr>';
			echo '<tr><td  id='.$id.'_target  class="'.$collapse.'"  style="padding-left:60px">';
			foreach($ex=explode(',',$v) as $e)
			{
				display_one_examination($link,$e,$id);
				/*
				echo '<button
							id='.$id.'_'.$e.'\'
							data-examination_id=\''.$e.'\' 
							type=button
							class="bg-warning" 
							onclick="select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
							>'.$e.'</button>';*/
			}
			echo'</td></tr>';
		}
	}
	echo '</table>';
}


function tree_to_panel($link,$tree,$id_prefix='',$collapse=' collapse ')
{
	foreach($tree as $k=>$v)
	{
		//$rand=str_replace(' ','_',$k).'_'.rand(10000,20000);
		
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',$k));
		
		if(is_array($v))
		{
			
				echo '	<span
							class="text-info  border border-primary rounded" 
							data-toggle="collapse"
							id=\''.$id.'\' 
							data-target=#'.$id.'_target
							>'
							.$k.'
						</span>
						<span 	class="badge badge-primary rounded-circle p-2" onclick=invert_selection(\''.$id.'_target\') >Invert</span>
						';
				echo '<ul style="list-style-type: none" class="border-left border-danger">';
						echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:60px">';
						tree_to_panel($link,$v,$id,' show ');
						echo '</li>';
				echo'</ul>';
		}
		else
		{
					echo '		<span
								class="text-info border border-primary rounded" 
								data-toggle="collapse" 
								data-target=#'.$id.'_target 
								>'
								.$k.'
							</span>
							<span 	class="badge badge-primary rounded-circle p-2" onclick=invert_selection(\''.$id.'_target\') >Invert</span>

						';
				echo '<ul style="list-style-type: none" class="border-left border-danger">';

						echo '<li  id='.$id.'_target  class="'.$collapse.' ex_menu"  style="padding-left:60px">';
						echo '<div class=ex_profile>';
						foreach($ex=explode(',',$v) as $e)
						{
							display_one_examination($link,$e,$id);
																		/*
																		echo '<button
																					id='.$id.'_'.$e.'\'
																					data-examination_id=\''.$e.'\' 
																					type=button
																					class="bg-warning" 
																					onclick="select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
																					>'.$e.'</button>';*/
						}
						echo '</div>';
						echo '</li>';
				echo'</ul>';
		}
	}
}


function tree_to_tab($link,$tree,$id_prefix='',$collapse=' collapse ')
{
	foreach($tree as $k=>$v)
	{
		//$rand=str_replace(' ','_',$k).'_'.rand(10000,20000);
		
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',$k));
		
		if(is_array($v))
		{
			
				echo '	<span
							class="text-info  border border-primary rounded" 
							data-toggle="collapse"
							id=\''.$id.'\' 
							data-target=#'.$id.'_target
							>'
							.$k.'
						</span>
						<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>
						';
				echo '<ul style="list-style-type: none">';
						echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:60px">';
						tree_to_panel($link,$v,$id,' show ');
						echo '</li>';
				echo'</ul>';
		}
		else
		{
					echo '		<span
								class="text-info border border-primary rounded" 
								data-toggle="collapse" 
								data-target=#'.$id.'_target 
								>'
								.$k.'
							</span>
							<span 	class="badge badge-primary" onclick=invert_selection(\''.$id.'_target\') >Invert</span>

						';
				echo '<ul style="list-style-type: none">';

						echo '<li  id='.$id.'_target  class="'.$collapse.' ex_menu"  style="padding-left:60px">';
						echo '<div class=ex_profile>';
						foreach($ex=explode(',',$v) as $e)
						{
							display_one_examination($link,$e,$id);
																		/*
																		echo '<button
																					id='.$id.'_'.$e.'\'
																					data-examination_id=\''.$e.'\' 
																					type=button
																					class="bg-warning" 
																					onclick="select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
																					>'.$e.'</button>';*/
						}
						echo '</div>';
						echo '</li>';
				echo'</ul>';
		}
	}
}


function make_examination_tree($link,$sql)
{
	$examination_tree=[];
	$result=run_query($link,$GLOBALS['database'],$sql);
	while($ar=get_single_row($result))
	{
		//echo '<pre>';print_r($ar);echo '</pre>';
		$path=explode("/",$ar['route']);
		//echo '<pre>';print_r($path);echo '</pre>';
		$temp=&$examination_tree;
		foreach($path as $v)
		{
			$temp=&$temp[$v];
		}
		$temp=$ar['examination_id_list'];
	}
	//echo '<pre>';print_r($examination_tree);echo '</pre>';
	return sort($examination_tree);
}

function display_one_examination($link,$ex_id,$prefix)
{
	$ex_data=get_one_examination_details($link,$ex_id);
	$sr=$ex_data['sample_requirement']!='None'?$ex_data['sample_requirement']:'';
	$edit_specification=json_decode($ex_data['edit_specification'],true);
	$method=isset($edit_specification['method'])?$edit_specification['method']:'.';
	$ex_limit=isset($edit_specification['limit_request'])?$edit_specification['limit_request']:0;
	$user_limit=get_user_request_limit($link);
	$e=$ex_id;
	if($user_limit>=$ex_limit)
	{
		//my_on_off_ex($ex_data['name'].'<br>'.$sr.'<br>'.$method,$ex_data['examination_id']);
		echo '<button
				id=\''.$prefix.'_'.$e.'\'
				data-examination_id=\''.$e.'\' 
				type=button
				data-examination_name=\''.$ex_data['name'].'\'
				data-status=off
				class="bg-warning ex_btn" 
				onclick="xxx_select_examination_js(this,\''.$e.'\', \'selected_examination_list\')" 
				><pre>'.str_pad(substr($ex_data['name'],0,20),20,'.').'<br>'.str_pad(substr($sr,0,20),20,'.').'<br>'.str_pad(substr($method,0,20),20,'.').'</pre></button>';
	}
}


function display_one_examination_on_status($link,$ex_id)
{
	$ex_data=get_one_examination_details($link,$ex_id);
	return $ex_data['name'];
}


function dropdown_get_examination_data($link,$sql,$pk_name,$multi='no',$size=8)
{
	  xx_mk_select_from_sql_with_description($link,$sql,$pk_name,$pk_name,$pk_name,$disabled='',$default='',$blank='no',$readonly='',$multi,$size);
}


function xx_mk_select_from_sql_with_description($link,$sql,$field_name,$select_name,$select_id,$disabled='',$default='',$blank='no',$readonly='',$multi,$size)
{
	//echo '<h1>++'.$readonly.'</h1>';
	$ar=xx_mk_array_from_sql_with_description($link,$sql,$field_name);
	if($blank=='yes')
	{
		array_unshift($ar,array("",""));
	}
	//echo '<pre>';print_r( $ar);echo '</pre>';
	xx_mk_select_from_array_with_description($select_name,$ar,$disabled,$default,$readonly,$multi,$size);
}

function xx_mk_array_from_sql_with_description($link,$sql,$field_name)
{
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ret=array();
	while($ar=get_single_row($result))
	{
		$ret[]=array($ar[$field_name],$ar['description']);
	}
	return $ret;
}


function xx_mk_select_from_array_with_description($name, $select_array,$disabled='',$default='',$readonly='',$multi, $size)
{	
	//echo '<h1>--'.$readonly.'--</h1>';
	if($readonly=='readonly')
	{
		foreach($select_array as $key=>$value)
		{
			if($value[0]==$default)
			{
				echo '<input type=hidden '.$readonly.' name=\''.$name.'\' id=\''.$name.'\'  value=\''.$default.'\'>';
				echo $value[1].'('.$value[0].')';
			}
			else
			{

			}
		}
		return TRUE;
	}
	
	if($multi=='yes')
	{
		$selected=$name.'_selected';
		

		
		
		echo '<select  
					size=\''.$size.'\' multiple '.$disabled.'  
					id=\''.$name.'\' name=\''.$name.'[]\' 
					onclick="add_to_storage(this,\''.$selected.'\',event)"
					onkeypress=" 
					if(event.key==\' \')
					{
						//alert(\'space bar pressed\');
						add_to_storage(this,\''.$selected.'\',event)
					}"
				">';


	}
	else
	{
		$selected=$name.'_selected';
		//echo '<select  '.$disabled.'  id=\''.$name.'\' name=\''.$name.'\' ">';
				echo '<select  
					size=\''.$size.'\'  '.$disabled.'  
					id=\''.$name.'\' name=\''.$name.'[]\' 
					onclick="add_to_storage(this,\''.$selected.'\',event)"
					onkeypress=" 
					if(event.key==\' \')
					{
						//alert(\'space bar pressed\');
						add_to_storage(this,\''.$selected.'\',event)
					}"
				">';

		
	}

	foreach($select_array as $key=>$value)
	{
		if($value[0]==$default)
		{
			echo '<option  selected value=\''.$value[0].'\' > '.$value[1].'('.$value[0].')'.' </option>';
		}
		else
		{
			echo '<option value=\''.$value[0].'\' > '.$value[1].'('.$value[0].')'.' </option>';
		}
	}

	echo '</select>';

	if($multi=='yes')
	{	
		echo '<select multiple size='.$size.'
					onclick="remove_from_storage(this,\''.$name.'\')"
					onkeypress="remove_from_storage(this,\''.$name.'\')"
					
					onkeypress=" 
					if(event.key==\' \')
					{
						//alert(\'space bar pressed\');
						remove_from_storage(this,\''.$name.'\',event)
					}"
					
					
					id=\''.$selected.'\' name=\''.$selected.'\'></select>';	
		echo '<br><input type=text id=xx name=xx size=90>';
	}
	else
	{
				echo '<select  size='.$size.'
					onclick="remove_from_storage(this,\''.$name.'\')"
					onkeypress="remove_from_storage(this,\''.$name.'\')"
					
					onkeypress=" 
					if(event.key==\' \')
					{
						//alert(\'space bar pressed\');
						remove_from_storage(this,\''.$name.'\',event)
					}"
					
					
					id=\''.$selected.'\' name=\''.$selected.'\'></select>';	
		
	}
	return TRUE;
}



function xx_save_insert_specific($link,$selected_examination_list)
{


////Requested examinations
	$requested=array_filter(explode(',',$selected_examination_list));
	//echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';




////filled examinations

	$with_result=array();
	foreach($_POST as $k=>$v)
	{
		$tok=explode('__',$k);
		if(isset($tok[1])=='ex')
		{
			$with_result_id=$tok[2];
			//echo $tok[2].'<br>';
			$with_result[]=$tok[2];
		}
	}

	foreach($_FILES as $k=>$v)
	{
		$tok=explode('__',$k);
		if(isset($tok[1])=='ex')
		{
			$with_result_id=$tok[2];
			//echo $tok[2].'<br>';
			$with_result[]=$tok[2];
		}
	}
	
////Requested + filled examinations
	$requested=array_merge($requested,$with_result);
	$requested=array_filter(array_unique($requested));
	//echo '<pre>following examinations are requested+filled with results:<br>';print_r($requested);echo '</pre>';

////determine sample-type required for each and also distinct types////////////////////////////////////
	$sample_requirement_array=array();
	foreach($requested as $ex)
	{
		$psql='select examination_id,sample_requirement from examination where examination_id=\''.$ex.'\'';
		$result=run_query($link,$GLOBALS['database'],$psql);
		$ar=get_single_row($result);
		$sample_requirement_array[$ar['sample_requirement']][]=$ar['examination_id'];
	}

	//echo '<pre>following are sample_requirements [$sample_requirement_array] for requested examinations:<br>';print_r($sample_requirement_array);echo '</pre>';

////What are tubes reuired
	//$sample_required=array_unique($sample_required); original
	$sample_required=array_unique(array_keys($sample_requirement_array));
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
////determine sample_id to be given to each tube/////////////////////////////////
	$sample_id_array=set_sample_id($link,$sample_required);
	
	//echo '<pre>following samples ids are alloted:<br>';print_r($sample_id_array);echo '</pre>';
	
////Display Properly with sample ID and container types and barcode buttons
	show_sample_required($sample_id_array);

////insert examinations////////////////////////////////////////////

//1//Insert None type examination to all samples

	if(array_key_exists('None',$sample_requirement_array))
	{
		foreach($sample_requirement_array['None'] as $ex)
		{
			foreach($sample_id_array as $sid)
			{
				if($ex==$GLOBALS['sample_requirement'])
				{
					//already inserted during set_sample_id()
				}
				else
				{
					$examination_details=get_one_examination_details($link,$ex);
					$edit_specification=json_decode($examination_details['edit_specification'],true);
					$type=isset($edit_specification['type'])?$edit_specification['type']:'';
					if($type!='blob')
					{
						insert_one_examination_without_result($link,$sid,$ex);
					}
					else
					{
						insert_one_examination_blob_without_result($link,$sid,$ex);
					}
				}
			}
		}
	}
	
//2//Insert other types to respective sample_id		
		
	foreach($sample_requirement_array as $stype=>$ex_array)
	{
		if($stype!='None')
		{
			foreach($ex_array as $ex)
			{
				$examination_details=get_one_examination_details($link,$ex);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				
				if($type!='blob')
				{
					insert_one_examination_without_result($link,$sample_id_array[$stype],$ex);
				}
				else
				{
					insert_one_examination_blob_without_result($link,$sample_id_array[$stype],$ex);
				}
			}
		}
	}


//3//update values for examinations with results


	//echo '<pre>';print_r(array_merge($_POST,$_FILES));echo '</pre>';

	foreach(array_merge($_POST,$_FILES) as $k=>$v)
	{
		if(substr($k,0,6)=='__ex__')
		{
			$ex_id=substr($k,6);
			$examination_details=get_one_examination_details($link,$ex_id);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$type=isset($edit_specification['type'])?$edit_specification['type']:'';
			echo '<h1>'.$type.'</h1>';
			//print_r($sample_requirement_array);
			//print_r($examination_details);
			
			//echo '>>>>>sample required'.$examination_details['sample_requirement'];
			//echo '>>>>>sample id for this requirment'.$examination_details['sample_requirement'];
			
			if($examination_details['sample_requirement']=='None')
			{
				if(in_array($type,['id_multi_sample','id_single_sample']))
				{
						update_id_type_examination_for_sample_array($link,$sample_id_array,$ex_id,$v);
				}
				
				foreach($sample_id_array as $sid)
				{
					if($type!='blob')
					{
						update_one_examination_with_result($link,$sid,$ex_id,$v);
					}
					else
					{
						update_one_examination_with_result_blob($link,$sid,$ex_id,$v);
					}
				}
			}
			else
			{
				if($type!='blob')
				{
					update_one_examination_with_result($link,$sample_id_array[$examination_details['sample_requirement']],$ex_id,$v);
				}
				else
				{
					update_one_examination_with_result_blob($link,$sample_id_array[$examination_details['sample_requirement']],$ex_id,$v);
				}
			}
		}
	}
	return $sample_id_array	;
}


function update_one_examination_with_result_blob($link,$sid,$ex_id,$v)
{
/*
    [__ex__5076] => Array
        (
            [name] => Screenshot_2023-02-07_01-25-53.png
            [type] => image/png
            [tmp_name] => /tmp/phpanS50q
            [error] => 0
            [size] => 1186088
        )
*/

		//echo '================='.$sid;

	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$ex_id,'update'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [update] with examination_id='.$examination_id.'</h5>';
		return false;
	}	
			
		$fvalue='__ex__'.$ex_id;
		$blob=file_to_str($link,$_FILES[$fvalue]);
		if(strlen($blob)!=0)
		{
		$sql='update result_blob 
				set 
					fname=\''.$v['name'].'\'	,
					result=\''.$blob.'\'	
				where 
					sample_id=\''.$sid.'\' 
					and
					examination_id=\''.$ex_id.'\'';
		
		//for echo only			
		$dsql='update result_blob 
				set 
					fname=\''.$v['name'].'\'	,
					result=blob	
				where 
					sample_id=\''.$sid.'\' 
					and
					examination_id=\''.$ex_id.'\'';
					
			//echo $dsql; //$sql it will be very big;
			
			if(!$result=run_query($link,$GLOBALS['database'],$sql))
			{
				echo '<br>Data not updated';
			}
			else
			{
				echo '<p>'.rows_affected($link).' results updated</p>';				
			}	
		}
		else
		{
			echo '<p>0 size file. data not updated</p>';				
		}
}

function update_one_examination_with_result_blobvalue($link,$sid,$ex_id,$blobvalue,$blobfilename)
{
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$ex_id,'update'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [update] with examination_id='.$examination_id.'</h5>';
		return false;
	}	
			
		if(strlen($blobvalue)!=0)
		{
		$sql='update result_blob 
				set 
					fname=\''.$blobfilename.'\'	,
					result=\''.$blobvalue.'\'	
				where 
					sample_id=\''.$sid.'\' 
					and
					examination_id=\''.$ex_id.'\'';
		
		//for echo only			
		/*$dsql='update result_blob 
				set 
					fname=\''.$v['name'].'\'	,
					result=blob	
				where 
					sample_id=\''.$sid.'\' 
					and
					examination_id=\''.$ex_id.'\'';*/
					
			//echo $dsql; //$sql it will be very big;
			
			if(!$result=run_query($link,$GLOBALS['database'],$sql))
			{
				echo '<br>Data not updated';
			}
			else
			{
				echo '<p>'.rows_affected($link).' results updated</p>';				
			}	
		}
		else
		{
			echo '<p>0 size file. data not updated</p>';				
		}
}



function update_one_examination_with_result_blobvalue_set_to_null($link,$sid,$ex_id)
{
	if(!$authorized_for_insert=is_authorized($link,$_SESSION['login'],$ex_id,'update'))
	{
		echo '<h5 class="bg-warning">This user is not authorized for [update] with examination_id='.$examination_id.'</h5>';
		return false;
	}	
			

		$sql='update result_blob 
				set 
					fname=null,
					result=null	
				where 
					sample_id=\''.$sid.'\' 
					and
					examination_id=\''.$ex_id.'\'';
		
			if(!$result=run_query($link,$GLOBALS['database'],$sql))
			{
				echo '<br>Data not updated';
			}
			else
			{
				echo '<p>'.rows_affected($link).' results updated</p>';				
			}	
}


function make_examination_tree_for_sample_not_used($link,$sample_id,$sql)
{
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$all_results=$ex_list+$rblob;
	//echo '<pre>';print_r($all_results);echo '</pre>';
	
	$examination_tree=[];
	$result=run_query($link,$GLOBALS['database'],$sql);
	while($ar=get_single_row($result))
	{
		//echo '<pre>';print_r($ar);echo '</pre>';
		$path=explode("/",$ar['route']);
		//echo '<pre>';print_r($path);echo '</pre>';
		$temp=&$examination_tree;
		foreach($path as $v)
		{
			$temp=&$temp[$v];
		}
		

		
		$ex_list=array_flip(explode(",",$ar['examination_id_list']));
		$temp=$ex_list;

		$ex_list_for_loop=$ex_list;
		
		
		foreach($ex_list_for_loop as $ex=>$v)
		{
			//echo '<h4>'.$ex.'</h4>';
			if(array_key_exists($ex,$all_results))
			{
				//echo '<h4>'.$v.'</h4>';
				$temp[$ex]=$all_results[$ex];
			}
			else
			{
				unset($temp[$ex]);
			}
		}
		

	}
	
	
	
	
	//echo '<pre>';print_r($examination_tree);echo '</pre>';
	
	//remove_empty_array($examination_tree);
	
	echo '<pre>';print_r($examination_tree);echo '</pre>';
	
	return $examination_tree;
}


function make_examination_tree_for_sample_also_not_used($link,$sample_id,$sql)
{
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$all_results=$ex_list+$rblob;
	//echo '<pre>';print_r($all_results);echo '</pre>';
	
	$examination_tree=[];
	
	$all_results_bak=$all_results;
	
	foreach($all_results as $examination_id=>$result)
	{
		$r=get_routes_for_examination_id($link,$examination_id,$sql);
		
		foreach($r as $route)
		{
			$ra=explode('/',$route);
			//echo '<pre>';print_r($ra);echo '</pre>';
			$temp=&$examination_tree;

			foreach($ra as $v)
			{
				$temp=&$temp[$v];
			}
			$temp[$examination_id]=$result;
			unset($all_results_bak[$examination_id]);
		}
	}
	//echo '<pre>';print_r($examination_tree);echo '</pre>';

	//echo '<pre>';print_r($all_results_bak);echo '</pre>';


	return array_merge($examination_tree,array("Others"=>$all_results_bak));
}


function make_examination_tree_for_sample($link,$sample_id,$sql)
{
////get all examinations of sample
	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$all_results=$ex_list+$rblob;
	//echo '<pre>';print_r($all_results);echo '</pre>';

////Get all routes from sql
	$examination_tree=[];
	$all_results_bak=$all_results;
	
	$result=run_query($link,$GLOBALS['database'],$sql);

	while($ar=get_single_row($result))
	{
		$route_ex=array_flip(explode(',',$ar['examination_id_list']));
		//echo '<pre>';print_r($route_ex);echo '</pre>';
		
		$common=array_intersect_key($all_results,$route_ex);		//value will be taken from 1st arrray
		//echo '<pre>';print_r($common);echo '</pre>';
		
		if(count($common)>0)
		{
			$ra=explode('/',$ar['route']);
			//echo '<pre>';print_r($ra);echo '</pre>';
			$temp=&$examination_tree;
			foreach($ra as $v)
			{
				$temp=&$temp[$v];
			}
			
			foreach($common as $ex_id=>$ex_result)
			{
				$temp[$ex_id]=$ex_result;
				unset($all_results_bak[$ex_id]);
			}
		}
	}

	//echo '<pre>';print_r($examination_tree);echo '</pre>';

	//echo '<pre>';print_r($all_results_bak);echo '</pre>';


	return array_merge($examination_tree,array("Others"=>$all_results_bak));
}


function get_routes_for_examination_id($link,$examination_id,$sql)
{
	$result=run_query($link,$GLOBALS['database'],$sql);
	$route=array();
	
	while($ar=get_single_row($result))
	{
		if(in_array($examination_id,explode(',',$ar['examination_id_list'])))
		{
			$route[$ar['id']]=$ar['route'];
		}
	}
	return $route;
	
}
function viewww_sample($link,$sample_id,$sql_for_tree)
{


	
	//echo '<pre>';	print_r($result_plus_blob_requested);echo '</pre>';
	
	$ex_tree=make_examination_tree_for_sample($link,$sample_id,$sql_for_tree);

	//echo '<pre>';print_r($ex_tree);echo '</pre>';
	//ksort($ex_tree);
	//echo '<pre>';print_r($ex_tree);echo '</pre>';
		
	//return;
	

		echo '<div class="basic_form">
				<div class=my_label ><span class="badge badge-primary ">Sample ID</span>
									<span class="badge badge-info"><h5>'.$sample_id.'</h5></span>
				</div>';
			
			show_all_buttons_for_sample($link,$sample_id);
			echo '</div>
			<div class="help print_hide">';
				echo '<button class="btn btn-success " type=button id=ex_all_expand onclick="expand_all()">Expand All</button>';
				echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
		echo '</div>';	

		tree_to_panel_for_view($link,$ex_tree,$id_prefix='',$collapse=' collapse ',$sample_id);
}



function tree_to_panel_for_view($link,$tree,$id_prefix='',$collapse=' collapse ',$sample_id)
{
	foreach($tree as $k=>$v)
	{
		//$rand=str_replace(' ','_',$k).'_'.rand(10000,20000);
		
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',$k));
		
		if(is_array($v))
		{
			
				echo '	<span
							class="text-info  border border-primary rounded" 
							data-toggle="collapse"
							id=\''.$id.'\' 
							data-target=#'.$id.'_target
							>'
							.$k.'
						</span>
						';
				echo '<ul style="list-style-type: none" >';
						echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:60px">';
						tree_to_panel_for_view($link,$v,$id,' show ',$sample_id);
						echo '</li>';
				echo'</ul>';
		}
		else
		{
			view_field_any($link,$k,$v,$sample_id);
			//edit_field($link,$k,array($k=>$v),0,$readonly='',$frill=True);
		}
	}
}


function viewww_sample_compact($link,$sample_id)
{

	$ex_list=get_result_of_sample_in_array($link,$sample_id);
	//print_r($ex_list);
	$rblob=get_result_blob_of_sample_in_array($link,$sample_id);
	//print_r($rblob);
	$result_plus_blob_requested=$ex_list+$rblob;
	//print_r($result_plus_blob_requested);
	echo '<div style="width:300px;">';
		echo '<table><tr>';
		echo '<td>';
		sample_id_prev_button($sample_id);
		echo '</td>';
		echo '<td>';
		sample_id_next_button($sample_id);
		echo '</td>';
		echo '<td>';
		sample_id_analysis_started_button($sample_id);
		echo '</td>';
		echo '</tr></table>';

		$sr=get_one_ex_result($link,$sample_id,$GLOBALS['sample_requirement']);
		$opd_ward=get_one_ex_result($link,$sample_id,$GLOBALS['OPD/Ward']);
		if($opd_ward=='OPD')
		{
			echo '<span class="bg-warning">'.$sample_id.'-'.$sr.'</span><h5 class="bg-primary">'.$opd_ward.'</h5>';
		}
		else
		{
			echo '<span class="bg-warning ">'.$sample_id.'-'.$sr.'</span><h5 class="bg-secondary">'.$opd_ward.'</h5>';
		}

		if(count($result_plus_blob_requested)==0)
		{
			echo '<h3>No such sample with sample_id='.$sample_id.'</h3>';
			return;
		}
		$profile_wise_ex_list=ex_to_profile($link,$result_plus_blob_requested);

		foreach($profile_wise_ex_list as $kp=>$vp)
		{
			$pinfo=get_profile_info($link,$kp);
			$profile_edit_specification=json_decode($pinfo['edit_specification'],true);
			$compact=isset($profile_edit_specification['compact'])?$profile_edit_specification['compact']:'';		
			if($compact!='no')
			{
				echo '<h5 class="text-danger">'.$pinfo['name'].'</h5>';
				echo '<table border=1>';
				foreach($vp as $ex_id)
				{
					$examination_details=get_one_examination_details($link,$ex_id);
					$edit_specification=json_decode($examination_details['edit_specification'],true);
					$type=isset($edit_specification['type'])?$edit_specification['type']:'';

					if($type!='blob')
					{
						echo '<tr><td>'.$examination_details['name'].'</td><td>'.$ex_list[$ex_id].'</td></tr>';
					}
					else
					{
						echo $examination_details['name'];
					}
				}
				echo '</table>';
			}
		}
	echo '</div>';

}

///////////////////////ex all////////////

function xxx_get_basic_specific()
{
	$YY=strftime("%y");
echo '<div id=basic class="tab-pane active">';
echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="mrd">Patient Id</label>
			<input 
				size=13 
				id=mrd 
				name=\'__ex__'.$GLOBALS['mrd'].'\' 
				class="form-control text-danger" 
				required="required" 
				type=text 
				placeholder="patient id" >
			<p class="help"><span class=text-danger>unique for patient</p>';
echo '</div>';
echo '</div>';
}


function xxx_get_examination_data($link,$sql)
{
	echo '<button class="btn btn-success " data-status=off type=button id=ex_all_expand onclick="expand_all(this)"><h4>&darr;&darr;&darr;</h4></button>';
	//echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
	$tree=xxx_make_examination_tree($link,$sql,'request_route');
	//tree_to_div($tree);
	echo '<ul id="get_examination_data" style="list-style-type: none">';
	xxx_tree_to_panel($link,$tree,'',' collapse ');
	echo '</ul>';
	echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';
	//tree_to_table($link,$tree,'',' show ');
}


function xxx_make_examination_tree($link,$sql,$route_field)
{
	$examination_tree=[];
	$result=run_query($link,$GLOBALS['database'],$sql);
	while($ar=get_single_row($result))
	{
		//print_r($ar);
		if(strlen($ar[$route_field])>0)
		{
			$paths=explode(",",$ar[$route_field]);
			foreach($paths as $one_path)
			{
				$path=explode("/",$one_path);
				
				
				//echo '<pre>';print_r($path);echo '</pre>';
				$temp=&$examination_tree;
				foreach($path as $v)
				{
						//$rp_sql='select * from route_priority where (route=\''.$one_path.'\' or route=\'\') and node=\''.$v.'\'';
						$rp_sql='select * from route_priority where route=left(\''.$one_path.'\',length(route)) and route<>"" and node=\''.$v.'\'';
						//echo $rp_sql;
						$rp_result=run_query($link,$GLOBALS['database'],$rp_sql);
						$rp_ar=get_single_row($rp_result);
						//echo '<pre>';print_r($rp_ar);echo '</pre>';
							$rpvalue=isset($rp_ar[$route_field.'_'.'priority'])?$rp_ar[$route_field.'_'.'priority']:'';
						//echo $rpvalue;
					$temp=&$temp[$rpvalue.'^'.$v];
				}
				$temp[  $ar[$route_field.'_'.'priority'].'^'.$ar['examination_id']  ]=$ar['examination_id'] ;
			}
		}
		else if($ar[$route_field]==null)
		{
			$examination_tree['^Others'][  $ar[$route_field.'_'.'priority'].'^'.$ar['examination_id']    ]=$ar['examination_id'];
		}
		else
		{
			$examination_tree['^Others'][  $ar[$route_field.'_'.'priority'].'^'.$ar['examination_id']  ]=$ar['examination_id'];			
		}
	}
	//echo '<pre>';print_r($examination_tree);echo '</pre>';
	ksort($examination_tree);			//for sorting root
	//asort($examination_tree);			//for sorting root
	//echo '<pre>';print_r($examination_tree);echo '</pre>';
	return $examination_tree;
}


function xxx_tree_to_panel_for_view($link,$tree,$id_prefix='',$collapse=' collapse ',$sample_id,$compact='no')
{

	$collapse=' show ';

	//echo '<pre>';print_r($tree);echo '</pre>';


	foreach($tree as $k=>$v)
	{
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',    explode('^',$k)[1]    ));
		
		if(is_array($v))
		{
			//echo '<pre>';print_r($v);echo '</pre>';
			ksort($v);
			//asort($v);
			//echo '<pre>';print_r($v);echo '</pre>';
				
				echo '
						<div class=d-block>
							<button
								type=button
								tabindex="0"
								class="text-info  border border-primary rounded" ';
								echo 'id=\''.$id.'\' 
								data-target=#'.$id.'_target
								>'
								.explode('^',$k)[1].'
							</button>
						</div>';
				echo '<ul style="list-style-type: none" >';
						echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:30px">';
						xxx_tree_to_panel_for_view($link,$v,$id,' show ',$sample_id,$compact);
						echo '</li>';
				echo'</ul>';
		}
		else
		{
			view_field_any($link,$v,$sample_id,$compact);
			//display_one_examination($link,$v,$id);
		}
	}
}


function xxx_tree_to_panel_for_edit($link,$tree,$id_prefix='',$collapse=' collapse ',$sample_id)
{
	$collapse=' show ';
	
	foreach($tree as $k=>$v)
	{
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',explode('^',$k)[1]));
		
		if(is_array($v))
		{
			ksort($v);
			
				echo '
						<div class=d-block>
						<button
							type=button
							tabindex="0"
							class="text-info  border border-primary rounded" ';
							
							//data-toggle="collapse"
							
							echo 'id=\''.$id.'\' 
							data-target=#'.$id.'_target
							>'
							.explode('^',$k)[1].'
						</button>
						</div>';
				echo '<ul style="list-style-type: none" class="border-left border-danger">';
						echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:60px">';
						xxx_tree_to_panel_for_edit($link,$v,$id,' show ',$sample_id);
						echo '</li>';
				echo'</ul>';
		}
		else
		{
			edit_field_any($link,$v,$sample_id);
			//display_one_examination($link,$v,$id);
		}
	}
}


function xxx_tree_to_panel($link,$tree,$id_prefix='',$collapse=' collapse ')
{
	foreach($tree as $k=>$v)
	{
		$id=$id_prefix.'_'.str_replace(' ','_',str_replace('/','_',explode('^',$k)[1]));
		
		if(is_array($v))
		{
			ksort($v);
		
						//<span 	class="d-inline badge badge-primary rounded-circle p-2" onclick=select_all_children(\''.$id.'_target\') >&#x2713;</span>
						//<span 	class="d-inline badge badge-primary rounded-circle p-2" onclick=invert_selection(\''.$id.'_target\') >X</span>
									
				echo '
						<div class=d-block>
						<h3>
							<button
								onclick=toggle_all_children(this,\''.$id.'_target\')
								type=button
								tabindex=0
								class="btn btn-sm btn-outline-success" 
								id=\''.$id.'\' 
								data-status=off
								>'
								.explode('^',$k)[1].'
							</button>
						
						
							<button
								type=button
								tabindex=0
								class="text-info  border border-primary rounded my-toggle" 
								data-toggle="collapse"
								id=\''.$id.'\' 
								data-target=#'.$id.'_target
								data-status=off
								onclick="manage_toggle_lable(this)"
								>&darr;</button>
						</h3>
						</div>';
						
				echo '<ul style="list-style-type: none" class="border-left border-danger">';
						echo '<li id='.$id.'_target class="'.$collapse.' ex_menu" style="padding-left:60px">';
						xxx_tree_to_panel($link,$v,$id,' collapse ');
						echo '</li>';
				echo'</ul>';
		}
		else
		{
			display_one_examination($link,$v,$id);
		}
	}
}


function xxx_edit_sample($link,$sample_id,$compact='no')
{
	//echo '<pre>';	print_r($result_plus_blob_requested);echo '</pre>';
	$sql=" (select examination.examination_id,display_route,name,display_route_priority from examination,result 
			where 
				examination.examination_id=result.examination_id 
				and
				result.sample_id='".$sample_id."')

				union

		(select examination.examination_id,display_route,name,display_route_priority from examination,result_blob 
			where 
				examination.examination_id=result_blob.examination_id 
				and
				result_blob.sample_id='".$sample_id."')
				
				
			order by 
				display_route,examination_id
								
				";

	//echo '<br>'.$sql.'<br>';
	$ex_tree=xxx_make_examination_tree($link,$sql,'display_route');

	//echo '<pre>';print_r($ex_tree);echo '</pre>';
	ksort($ex_tree);
	//echo '<pre>';print_r($ex_tree);echo '</pre>';
		
	//return;
	
echo '<div>';
		echo '<div class="basic_form">
				<div class=my_label ><span class="badge badge-primary ">Sample ID</span>
									<span class="badge badge-info"><h5>'.$sample_id.'</h5></span>
				</div>';
			
			xxx_show_all_buttons_for_sample($link,$sample_id,$mode="edit");
			echo '</div>
			<div class="help print_hide">';
				//echo '<button class="btn btn-success " type=button id=ex_all_expand onclick="expand_all()">Expand All</button>';
				//echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
				//echo '<button class="btn btn-success " data-status=off type=button id=ex_all_expand onclick="expand_all(this)"><h4>&darr;&darr;&darr;</h4></button>';

		echo '</div>';	

		//prefix x_ is just to make sure it is not used
		xxx_tree_to_panel_for_edit($link,$ex_tree,$id_prefix='x_',$collapse=' collapse ',$sample_id,$compact);

echo '</div>';


}


function xxx_view_sample($link,$sample_id,$compact='no')
{

	if(!sample_exist($link,$sample_id)){ echo '<h5>Sample Id '.$sample_id.' does not exist</h5>';return;}

	//echo '<pre>';	print_r($result_plus_blob_requested);echo '</pre>';
	$sql=" (select examination.examination_id,display_route,name,display_route_priority from examination,result 
			where 
				examination.examination_id=result.examination_id 
				and
				result.sample_id='".$sample_id."')

				union

		(select examination.examination_id,display_route,name,display_route_priority from examination,result_blob 
			where 
				examination.examination_id=result_blob.examination_id 
				and
				result_blob.sample_id='".$sample_id."')
				
				
			order by 
				display_route,examination_id
								
				";

	//echo '<br>'.$sql.'<br>';
	$ex_tree=xxx_make_examination_tree($link,$sql,'display_route');

	//echo '<pre>';print_r($ex_tree);echo '</pre>';
	ksort($ex_tree);
	//echo '<pre>';print_r($ex_tree);echo '</pre>';
		
	//return;
	
echo '<div>';
		echo '<div class="basic_form">
				<div class=my_label >
					<span class="badge badge-primary ">Sample ID</span>
					<span class="badge badge-info"><h5>'.$sample_id.'</h5></span>
				</div>';
			
			xxx_show_all_buttons_for_sample($link,$sample_id);
		echo '</div>';

		xxx_tree_to_panel_for_view($link,$ex_tree,$id_prefix='',$collapse=' collapse ',$sample_id,$compact);

echo '</div>';
}


function xxx_view_sample_compact($link,$sample_id)
{
	//echo '<pre>';	print_r($result_plus_blob_requested);echo '</pre>';
	$sql=" (select examination.examination_id,display_route,name,display_route_priority from examination,result 
			where 
				examination.examination_id=result.examination_id 
				and
				result.sample_id='".$sample_id."')

				union

		(select examination.examination_id,display_route,name,display_route_priority from examination,result_blob 
			where 
				examination.examination_id=result_blob.examination_id 
				and
				result_blob.sample_id='".$sample_id."')
				
				
			order by 
				display_route,examination_id
								
				";

	//echo '<br>'.$sql.'<br>';
	$ex_tree=xxx_make_examination_tree($link,$sql,'display_route');

	//echo '<pre>';print_r($ex_tree);echo '</pre>';
	ksort($ex_tree);
	//echo '<pre>';print_r($ex_tree);echo '</pre>';
		
	//return;
echo '<div>';
		echo '<div class="basic_form">
				<div class=my_label >
					<span class="badge badge-primary ">Sample ID</span>
					<span class="badge badge-info"><h5>'.$sample_id.'</h5></span>
				</div>';
		echo '</div>';

		xxx_sample_id_analysis_started_button($sample_id);		
		xxx_tree_to_panel_for_view($link,$ex_tree,$id_prefix='',$collapse=' collapse ',$sample_id,'compact');
echo '</div>';

}

function xxx_save_insert_specific($link,$selected_examination_list)
{
////Requested examinations
	$requested=array_filter(explode(',',$selected_examination_list));
	//echo '<pre>following examinations are requested:<br>';print_r($requested);echo '</pre>';

////filled examinations

	$with_result=array();
	foreach($_POST as $k=>$v)
	{
		$tok=explode('__',$k);
		if(isset($tok[1])=='ex')
		{
			$with_result_id=$tok[2];
			//echo $tok[2].'<br>';
			$with_result[]=$tok[2];
		}
	}


	foreach($_FILES as $k=>$v)
	{
		$tok=explode('__',$k);
		if(isset($tok[1])=='ex')
		{
			$with_result_id=$tok[2];
			//echo $tok[2].'<br>';
			$with_result[]=$tok[2];
		}
	}


	//with result only if update authorization
	$with_result_temp=$with_result;
	$with_result=array();
	foreach($with_result_temp as $ex)
	{
		if(is_authorized($link,$_SESSION['login'],$ex,'update')===true)
		{
			$with_result[]=$ex;
		}
		else
		{
			echo '<h5 class="bg-warning">This user is not authorized for [update] with examination_id='.$ex.'</h5>';	
		}
	}	
	
	//echo '<pre>following examinations are filled with results:<br>';print_r($with_result);echo '</pre>';
	
////Requested + filled examinations
	$requested=array_merge($requested,$with_result);
	$requested=array_filter(array_unique($requested));

	$requested_temp=$requested;
	$requested=array();
	//print_r($requested);
	//print_r($requested_temp);

	//add only if authorized to insert (with result already removed as above if not authorized
	foreach($requested_temp as $ex)
	{
		if(is_authorized($link,$_SESSION['login'],$ex,'insert')===true)
		{
			$requested[]=$ex;
		}
		else
		{
			echo '<h5 class="bg-warning">This user is not authorized for [insert] with examination_id='.$ex.'</h5>';	
		}	}

	//print_r($requested);


	//echo '<pre>following examinations are requested+filled with results:<br>';print_r($requested);echo '</pre>';

////determine sample-type required for each and also distinct types////////////////////////////////////
	$sample_requirement_array=array();
	foreach($requested as $ex)
	{
			$psql='select examination_id,sample_requirement from examination where examination_id=\''.$ex.'\'';
			$result=run_query($link,$GLOBALS['database'],$psql);
			$ar=get_single_row($result);
			$sample_requirement_array[$ar['sample_requirement']][]=$ar['examination_id'];
	}

	//echo '<pre>following are sample_requirements [$sample_requirement_array] for requested examinations:<br>';print_r($sample_requirement_array);echo '</pre>';

////What are tubes reuired
	//$sample_required=array_unique($sample_required); original
	$sample_required=array_unique(array_keys($sample_requirement_array));
	//echo '<pre>following samples are required:<br>';print_r($sample_required);echo '</pre>';
	
////determine sample_id to be given to each tube/////////////////////////////////
	$sample_id_array=set_sample_id($link,$sample_required);
	
	//echo '<pre>following samples ids are alloted:<br>';print_r($sample_id_array);echo '</pre>';
	
////Display Properly with sample ID and container types and barcode buttons
	xxx_show_sample_required($sample_id_array);

////insert examinations////////////////////////////////////////////

//1//Insert None type examination to all samples

	if(array_key_exists('None',$sample_requirement_array))
	{
		foreach($sample_requirement_array['None'] as $ex)
		{
			$examination_details=get_one_examination_details($link,$ex);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$type=isset($edit_specification['type'])?$edit_specification['type']:'';


			if(in_array($type,['id_multi_sample','id_single_sample']))
			{
				update_id_type_examination_for_sample_array($link,$sample_id_array,$ex,'');
				//insertion in result will be done below
				//insert_one_examination_without_result($link,$sid,$ex);
			}

			foreach($sample_id_array as $sid)
			{
				if($ex==$GLOBALS['sample_requirement'])
				{
					//already inserted during set_sample_id()
				}
				else
				{
					if($type!='blob')
					{
						if(in_array($type,['id_multi_sample','id_single_sample']))
						{
							//update in unique tables already done above. Now just insert placeholder
							//update_id_type_examination_for_sample_array($link,$sample_id_array,$ex,'');
							insert_one_examination_without_result($link,$sid,$ex,$error='no');
						}
						else
						{
							insert_one_examination_without_result($link,$sid,$ex,$error='no');
						}
					}
					else
					{
							insert_one_examination_blob_without_result($link,$sid,$ex);
					}
				}
			}
		}
	}
	
//2//Insert other types to respective sample_id		
		
	foreach($sample_requirement_array as $stype=>$ex_array)
	{
		if($stype!='None')
		{
			foreach($ex_array as $ex)
			{
				$examination_details=get_one_examination_details($link,$ex);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				
				if($type!='blob')
				{
					insert_one_examination_without_result($link,$sample_id_array[$stype],$ex);
				}
				else
				{
					insert_one_examination_blob_without_result($link,$sample_id_array[$stype],$ex);
				}
			}
		}
	}


//3//update values for examinations with results


	//echo '<pre>';print_r(array_merge($_POST,$_FILES));echo '</pre>';

	foreach(array_merge($_POST,$_FILES) as $k=>$v)
	{
		if(substr($k,0,6)=='__ex__')
		{
			$ex_id=substr($k,6);
			if(!in_array($ex_id,$requested)){continue;}	//if not authorized to insert
			$examination_details=get_one_examination_details($link,$ex_id);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$type=isset($edit_specification['type'])?$edit_specification['type']:'';
			
			//print_r($sample_requirement_array);
			//print_r($examination_details);
			
			//echo '>>>>>sample required'.$examination_details['sample_requirement'];
			//echo '>>>>>sample id for this requirment'.$examination_details['sample_requirement'];
			
			if($examination_details['sample_requirement']=='None')
			{
				
				if(in_array($type,['id_multi_sample','id_single_sample']))
				{
					//already inserted and update automatically at //1// 
					//update_id_type_examination_for_sample_array($link,$sample_id_array,$ex_id,$v);
				}
				
				
				foreach($sample_id_array as $sid)
				{
					if($type!='blob')
					{
						update_one_examination_with_result($link,$sid,$ex_id,$v);
					}
					else
					{
						update_one_examination_with_result_blob($link,$sid,$ex_id,$v);
					}
				}
			}
			else
			{
				if($type!='blob')
				{
					update_one_examination_with_result($link,$sample_id_array[$examination_details['sample_requirement']],$ex_id,$v);
				}
				else
				{
					update_one_examination_with_result_blob($link,$sample_id_array[$examination_details['sample_requirement']],$ex_id,$v);
				}
			}
		}
	}
	return $sample_id_array	;
}



function show_id_range_options($link,$extra='',$default='')
{
	//echo 'id_range_dropdown:';
	$sql='select distinct concat(lowest_id,"-",highest_id) as id_range from sample_id_strategy where lowest_id>0';
	mk_select_from_sql($link,$sql,'id_range','id_range','id_range',$disabled='',$default,$blank='no',$extra);
}

/*
function xxx_show_all_buttons_for_sample($link,$sample_id)
{
	$released_by=get_one_ex_result($link,$sample_id,$GLOBALS['released_by']);
	$interim_released_by=get_one_ex_result($link,$sample_id,$GLOBALS['interim_released_by']);
	
	echo '<div class="btn-group" role="group">';
	if(requestonly_check($link))		//no interim, no release, no edit , no delete 
	{
		get_lables_button($link,$sample_id,'sample_id');
		//xxx_sample_id_barcode_button($sample_id);
		xxx_sample_id_prev_button($sample_id);
		xxx_sample_id_view_button($sample_id);
		xxx_sample_id_next_button($sample_id);
		//sample_id_bill_button($sample_id);
		if(strlen($released_by)!=0 || strlen($interim_released_by)!=0)
		{
			sample_id_print_button($sample_id);						
		}
		return;
	}
	

	
	if(strlen($released_by)==0 && strlen($interim_released_by)==0)		//no interim, no release -> no print/xmpp/email/sms
	{
		get_lables_button($link,$sample_id,'sample_id');
		//xxx_sample_id_barcode_button($sample_id);
		xxx_sample_id_prev_button($sample_id);
		xxx_sample_id_view_button($sample_id);
		xxx_sample_id_next_button($sample_id);
		//xxx_sample_id_release_button($sample_id);	
		//xxx_sample_id_interim_release_button($sample_id);	
		xxx_sample_id_edit_button($sample_id);
		xxx_sample_id_delete_button($sample_id);
		//xxx_sample_id_copy_button($sample_id);
		//sample_id_bill_button($sample_id);
	}
	else if(strlen($released_by)==0 && strlen($interim_released_by)!=0)	//interim but not released, so allow telegram/print/xmpp/email/sms
	{
		get_lables_button($link,$sample_id,'sample_id');
		//xxx_sample_id_barcode_button($sample_id);		
		xxx_sample_id_prev_button($sample_id);
		xxx_sample_id_view_button($sample_id);
		xxx_sample_id_next_button($sample_id);
		//xxx_sample_id_release_button($sample_id);	
		//xxx_sample_id_interim_release_button($sample_id);					
		
		sample_id_print_button($sample_id);			
		sample_id_email_button($sample_id);
		sample_id_telegram_button($sample_id);
		sample_id_sms_button($sample_id,$link);
		sample_id_xmpp_button($sample_id);
		
		xxx_sample_id_edit_button($sample_id);
		xxx_sample_id_delete_button($sample_id);
		//xxx_sample_id_copy_button($sample_id);
		//sample_id_bill_button($sample_id);

	}	
	else 																//released with/without interim, so do not allow edit/delete
	{
		get_lables_button($link,$sample_id,'sample_id');
		//xxx_sample_id_barcode_button($sample_id);
		//sample_id_edit_button($sample_id);
		xxx_sample_id_prev_button($sample_id);
		xxx_sample_id_view_button($sample_id);
		xxx_sample_id_next_button($sample_id);
		//sample_id_delete_button($sample_id);
		
		xxx_sample_id_unrelease_button($sample_id);			
		
		sample_id_print_button($sample_id);			
		sample_id_email_button($sample_id);
		sample_id_telegram_button($sample_id);
		sample_id_sms_button($sample_id,$link);
		sample_id_xmpp_button($sample_id);
		//xxx_sample_id_copy_button($sample_id);
		//sample_id_bill_button($sample_id);
	}
	echo '</div>';
}
*/

function xxx_show_all_buttons_for_sample($link,$sample_id,$mode='view')
{
	echo '<div class="btn-toolbar" role="group">';
			get_lables_button($link,$sample_id,'sample_id');
			xxx_sample_id_prev_button($sample_id);
			xxx_sample_id_view_button($sample_id);
			xxx_sample_id_next_button($sample_id);
			
			//edit delete not possible if examination is complated. This is single examination
			$res=get_config_value($link,'restrictive_examination_for_edit_delete');
			$res_result=get_one_ex_result($link,$sample_id,$res);

			if(strlen($res_result<=0))
			{
				xxx_sample_id_edit_button($sample_id);
				if($mode=='edit')
				{
					xxx_sample_id_sync_all_button($sample_id);
					xxx_sample_id_calculate_button($sample_id);
					xxx_sample_id_delete_button($sample_id);
				}
			}
			else
			{
				xxx_sample_id_unrelease_button($sample_id);	
			}
		
			//echo '<div class="btn-toolbar " role="group">';
			
					//print not possible if none of the examination in array is filled
					$ret=false;
					$pre=get_config_value($link,'prerequisite_examination_for_print');
					$pre_array=explode(',',$pre);
					foreach($pre_array as $pex)
					{
						$pp=get_one_ex_result($link,$sample_id,$pex);
						if(strlen($pp)>0)
						{
							$ret=true;
							break;
						}
					}
					if($ret===true)
					{
						xxx_sample_id_print_button($link,$sample_id);	
						xxx_sample_id_wprint_button($link,$sample_id);
						//sample_id_email_button($sample_id);
						//sample_id_telegram_button($sample_id);
						//sample_id_sms_button($sample_id,$link);
						//sample_id_xmpp_button($sample_id);
					}		
			//echo '</div>';
	echo '</div>';
}


function xxx_sample_id_view_button($sample_id,$target='',$label='View')
{
	echo '<div class="d-inline-block" ><form method=post action=viewww_single.php class=print_hide '.$target.'>
	<button class="btn btn-outline-success btn-sm text-dark " name=sample_id value=\''.$sample_id.'\' >'.$label.'</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=view_single>';
	echo '</form></div>';
}

function xxx_sample_id_edit_button($sample_id,$target='',$label='Edit')
{
	echo '<div class="d-inline-block" ><form method=post '.$target.' action=edit_generalll.php class=print_hide>
	<button class="btn btn-outline-primary btn-sm" name=sample_id value=\''.$sample_id.'\' >'.$label.'</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=edit_general>
	</form></div>';
}

function xxx_sample_id_prev_button($sample_id)
{
	echo '<div class="d-inline-block"  ><form method=post action=viewww_single.php class=print_hide>
	<button class="btn btn-outline-danger  btn-sm m-0 p-0" name=sample_id value=\''.($sample_id-1).'\' >Previous</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=view_single>
	</form></div>';
}


function xxx_sample_id_next_button($sample_id)
{
	echo '<div class="d-inline-block" ><form method=post action=viewww_single.php  class=print_hide>
	<button class="btn btn-outline-danger btn-sm m-0 p-0" name=sample_id value=\''.($sample_id+1).'\' >Next</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=view_single>
	</form></div>';
}

function xxx_sample_id_analysis_started_button($sample_id)
{
        echo '<div class="d-inline-block" ><form method=post action=viewww_single.php  class=print_hide>
        <button class="btn btn-outline-danger btn-sm m-0 p-0" name=sample_id value=\''.$sample_id.'\' >Analysis Started</button>
        <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
        <input type=hidden name=action value=analysis_started>
        </form></div>';
}


function xxx_sample_id_delete_button($sample_id)
{
	echo '<div class="d-inline-block" ><form method=post action=xxx_delete_sample.php class=print_hide>
	<button onclick="return confirm(\'delete really?\')" class="btn btn-outline-dark btn-sm" name=sample_id value=\''.$sample_id.'\' >Delete</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=delete_sample>
	</form></div>';
}


function xxx_sample_id_release_button($sample_id)
{
	
	echo '<div class="d-inline-block"  style="width:100%;"><form method=post action=xxx_release_sample.php class=print_hide>
	<button class="btn btn-outline-secondary btn-sm" name=sample_id value=\''.$sample_id.'\' >Release</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=release_sample>
	</form></div>';
}

function xxx_sample_id_print_button($link,$sample_id)
{
	echo '<div class="d-inline-block"  ><form method=post action=xxx_print_single.php target=_blank class=print_hide>
	<button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >Print</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=print>
	</form></div>';
}

function xxx_sample_id_wprint_button($link,$sample_id)
{
	echo '<div class="d-inline-block"  ><form method=post  action=download_wpdf.php target=_blank class=print_hide>
	<button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >WPrint</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=wprint>
	</form></div>';
}


function xxx_sample_id_interim_release_button($sample_id)
{
	echo '<div class="d-inline-block"  ><form method=post action=xxx_interim_release_sample.php class=print_hide>
	<button class="btn btn-outline-secondary btn-sm" name=sample_id value=\''.$sample_id.'\' >Interim Release</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=interim_release_sample>
	</form></div>';
}

function xxx_sample_id_unrelease_button($sample_id)
{
	echo '<div class="d-inline-block" ><form method=post action=xxx_unrelease_sample.php class=print_hide>
	<button class="btn btn-outline-secondary btn-sm" name=sample_id value=\''.$sample_id.'\' >Un-Release</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=unrelease_sample>
	</form></div>';
}

function xxx_sample_id_sync_all_button($sample_id,$target='')
{
	echo '<div class="d-inline-block"  ><form method=post action=edit_generalll.php class=print_hide>
	<button class="btn btn-sm btn-warning" name=sample_id value=\''.$sample_id.'\' >Sync ALL</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=sync_ALL>
	</form></div>';
}

function xxx_sample_id_copy_button($sample_id)
{
        echo '<div class="d-inline-block"  ><form method=post action=xxx_copy_sample_id.php class=print_hide>
        <button class="btn btn-outline-success btn-sm" name=sample_id value=\''.$sample_id.'\' >copy</button>
        <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
        <input type=hidden name=action value=copy_sample_id>
        </form></div>';
}

function xxx_any_id_barcode_button($sample_id,$label_id,$label)
{
	echo '<div class="d-inline-block" >
	<form method=post target=_blank action=xxx_print_single_barcode.php class=print_hide>
	<div class="btn-group" role="group">
	<button class="btn btn-outline-primary btn-sm" name=action value=one_barcode >'.$label.'</button>
	</div>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=sample_id value=\''.$sample_id.'\'>
	<input type=hidden name=label_id value=\''.$label_id.'\'>
	</form></div>';
}


function xxx_sample_id_calculate_button($sample_id)
{
	echo '<div class="d-inline-block"  ><form method=post action=edit_generalll.php class=print_hide>
	<button class="btn btn-outline-primary btn-sm" name=sample_id value=\''.$sample_id.'\' >Calculate/Verify</button>
	<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
	<input type=hidden name=action value=calculate>
	</form></div>';
}


function xxx_make_view_menu_old_with_programming_dependancy($link)
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
						
	while($ar=get_single_row($result))
	{
		echo '<button 
					class="btn btn-outline-primary m-0 p-0 " 
					formaction=viewww_database_id_from_to_for_unique_id.php 
					type=submit 
					name=action
					value=\'get_dbids|'.$ar['examination_id'].'\'>by '.$ar['name'].'</button>';
	}
}

function xxx_make_view_menu($link)
{
	$sql="SELECT * from menu_view";
	
	$result=run_query($link,$GLOBALS['database'],$sql);
						
	while($ar=get_single_row($result))
	{
		echo '<button 
					class="btn btn-outline-primary m-0 p-0 " 
					formaction=viewww_database_id_from_to_for_unique_id.php 
					type=submit 
					name=action
					value=\'get_dbids|'.$ar['unique_id'].'|'.$ar['additional_search_id'].'|'.$ar['additional_range_search_id'].'\'>'.$ar['caption'].'</button>';
	}
}


function xxx_find_max_unique_id($link,$ex_id)
{
	$examination_details=get_one_examination_details($link,$ex_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';
	if(strlen($table)==0){return false;}

	$sqls='select max(id) as max_id from `'.$table.'`';
	//echo '<h3>'.$sqls.'</h3>';
	$results=run_query($link,$GLOBALS['database'],$sqls);
	$ars=get_single_row($results);
	//return $ars['next_sample_id'];
	
	//This is first table where sample_id is added and there it is primary key.
	//This reserve sample id. Otherwise, somebody else will find same sample id and use it
	return $ars['max_id'];
}


function xxx_set_unique_id_prev_next_button($link,$sample_id,$examination_id)
{
	$x=get_id_type_examination_result($link,$sample_id,$examination_id);
	//echo 'xxxxxxxxxxxxxxxx'.$x.'<br>';
	$current=intval($x);
	$next=$current+1;
	$prev=max($current-1,1);

	echo '<div class="btn-toolbar " role="group">';
	
	echo '<div class="d-inline-block" >
			<form method=post action=viewww_single_unique.php class=print_hide>
			<button class="btn btn-outline-danger  btn-sm m-0 p-0" name=action value=prev>Prev</button>
			<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
			<input type=hidden name=unique_id_value value=\''.$prev.'\'>
			<input type=hidden name=unique_id value=\''.$examination_id.'\'>
			</form>
	</div>';
	
	echo '<div class="d-inline-block"  >
			<form method=post action=viewww_single_unique.php class=print_hide>
			<button class="btn btn-outline-danger  btn-sm m-0 p-0" name=action value=next>Next</button>
			<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
			<input type=hidden name=unique_id_value value=\''.$next.'\'>
			<input type=hidden name=unique_id value=\''.$examination_id.'\'>
			</form>
	</div>';
	
	echo '</div>';
}


function xxx_show_sample_required($sar)
{
	//print_r(array_values($sar));
	echo '<h5 class="text-dark d-inline  ">Required Samples with alloted Sample ID are as follows</h5>';
	//sample_id_barcode_button_array(array_values($sar));

	foreach($sar as $k=>$v)
	{
		echo '<h5 ><span class="text-success">'.$k.'</span>:<span class="text-primary">'.$v.'</span></h5>';
	}
}

//this is box type status
//it donot display if sortcut fieldis <0
function xxx_get_sample_action($link,$sample_id,$extra_post='')
{
	echo '<div class="d-inline-block" >';
			$sql='select distinct priority from `sample_status` order by priority';
			$result=run_query($link,$GLOBALS['database'],$sql);

				while($ar=get_single_row($result))
				{
					echo '<div class="d-block align-top ">';
						$sql_b='select * from `sample_status` where priority=\''.$ar['priority'].'\'';
						$result_b=run_query($link,$GLOBALS['database'],$sql_b);
						while($ar_b=get_single_row($result_b))
						{	
							$val=get_one_ex_result($link,$sample_id,$ar_b['examination_id']);	//false if not yet requested
							//if shortcut not allowed / dependancy not satisfied disable
							if($ar_b['shortcut']<1 ||
							!is_status_dependancy_satisfied($link,$sample_id,$ar_b['examination_id']))
							{
								echo '<div class="d-block">';
												echo '<button disabled class="btn  text-left btn-light btn-sm d-block"
													name=action value=set_sample_status
														style="	border:solid black 0.3px;padding:1px;  
																background-color:'.$ar_b['color'].'; 
																">'.$ar_b['name'].'-'.$val.'
												</button>';
												echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
												echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';
												echo '<input type=hidden name=status_examination_id value=\''.$ar_b['examination_id'].'\'>';
												echo $extra_post;
								echo '</div>';												
							}
		 
							//check dependancy
							//if(!is_status_dependancy_satisfied($link,$sample_id,$ar_b['examination_id'])){continue;}

							else
							{
								echo '<div class="d-block">';
									echo '<form method=post>';
												echo '<button class="btn  text-left btn-light btn-sm d-block"
													name=action value=set_sample_status
														style="	border:solid black 0.3px;padding:1px;  
																background-color:'.$ar_b['color'].'; 
																">'.$ar_b['name'].'-'.$val.'
												</button>';
												echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
												echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';
												echo '<input type=hidden name=status_examination_id value=\''.$ar_b['examination_id'].'\'>';
												echo $extra_post;
									echo '</form>';
								echo '</div>';
							}
						}
					echo '</div>';
				}
	echo '</div>';	
}

function is_status_dependancy_satisfied($link,$sample_id,$status_examination_id)
{
	/* if examination dependent on other
	 *    
	 *       if dependent have result
	 *          prompt
	 *       else
	 *          do not prompt
	 * else
	 *    prompt
	 * */	
		
	$sql='select * from sample_status where examination_id=\''.$status_examination_id.'\'';
			
	//this is 0 or 1 records because s.examination_id is unique field
				
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);
	
	$dep_ex_array=explode(',',$ar['dependancy_examination_id']);
	//print_r($dep_ex_array);
	
	$ret=true;	//if array is empty
	
	foreach($dep_ex_array as $dep_ex)
	{
		if($dep_ex>0)		//it have dependancy, because examination_id>0
		{
			$dep_result=get_any_examination_result($link,$sample_id,$dep_ex);
			if(strlen($dep_result)>0)
			{
				return true;	//one of its dependancy have result
			}
			else
			{
				$ret=false;	//dependancy is not requested or not filled but, there may be other alternate dependancy, so wait till end
			}
		}
		else
		{
			$ret=true;		//no dependancy, but , there can be other. so, wait till end
		}
	}
	
	return $ret;
}

//this is horizontal status
function xxx_manage_sample_status_change_horizontal($link,$sample_id)
{
$sql='select distinct priority from `sample_status` order by priority';
$result=run_query($link,$GLOBALS['database'],$sql);


echo '<div class="bg-light border border-info print_hide">';
echo '<form method=post id="status_change_form" class="d-inline">';
	while($ar=get_single_row($result))
	{
		echo '<div class="d-inline-block align-top m-1">';
			$sql_b='select * from `sample_status` where priority=\''.$ar['priority'].'\'';
			$result_b=run_query($link,$GLOBALS['database'],$sql_b);
			while($ar_b=get_single_row($result_b))
			{	
		
			if(!is_status_dependancy_satisfied($link,$sample_id,$ar_b['examination_id'])){continue;}
/*
			$examination_details=get_one_examination_details($link,$ar_b['examination_id']);
			if($examination_details['append_user']==1)
			{
				$user_info=get_user_info($link,$_SESSION['login']);
				$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
			}
			else
			{
				$append_info='';
			}
*/			
			$val=get_one_ex_result($link,$sample_id,$ar_b['examination_id']);
			echo '<div class="d-block">';
			echo '<button class="btn  w-100 btn-rounded-right p-1 m-1 btn-sm"
						style="	border:solid '.$ar_b['color'].' 3px;padding:3px;  
								border-top-right-radius: 25px; 
								border-bottom-right-radius: 25px;"
						name=status_examination_id value='.$ar_b['examination_id'].'>'.$ar_b['name'].'<br><span class="badge badge-success">'.$val.'</span>
					</button>';
			echo '</div>';
			}
		echo '</div>';
	}

	echo '<input type=hidden name=action value=set_sample_status>';
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '<input type=hidden name=sample_id value=\''.$sample_id.'\'>';

echo '</form>';
echo '</div>';

}


function xxx_get_sample_action_last($link,$sample_id)
{
	$sql='select  * 
			from `sample_status` s,result r 
			
			where 
			sample_id=\''.$sample_id.'\' 
			and 
			s.examination_id=r.examination_id
			and
			length(r.result)>0
			
			order by s.priority desc';
	
	//echo $sql;
	//return;		
	$result=run_query($link,$GLOBALS['database'],$sql);

	$ar=get_single_row($result); //just take first
	return $ar;
}

function get_user_info($link,$user)
{
	$sql='select * from user where user=\''.$user.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	return get_single_row($result);
}

function get_config_value($link,$config_item)
{
	$sql='select * from config where name=\''.$config_item.'\'';
	//echo $sql;
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)<=0){return false;}
	$ar=get_single_row($result);	
	return $ar['value'];
}



function get_config_value_blob($link,$config_item)
{
	$sql='select * from config where name=\''.$config_item.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($result);	
	return $ar['value_blob'];
}

function is_authorized($link,$user,$examination_id,$action)
{
	/*example matrix
	 * user 0=doctors, 1=dataentryoperator 2=technician 3=resident 4=faculty
	 * examination: insert, update, delete,show , authorization level
	 * 
	 * 
	 * */

	$user_info=get_user_info($link,$user);
	$ex_info=get_one_examination_details($link,$examination_id);
	//echo '<pre>';
	//echo 'is_authorized() parameters<br>';
	//print_r($user_info);
	//print_r($ex_info);
	//echo 'action='.$action.'<br>';	

	if($user_info[$action.'_authorization_level']>=$ex_info[$action.'_minimum_authorization_level'])
	{
	//	echo '###authorized###';
	//	echo '</pre>';
		return true;
	}
	else
	{
	//	echo '###NOT authorized###';
	//	echo '</pre>';
		return false;
	}
}


//Sample ID to unique ID conversion and visa versa//

function show_sample_id_for_unique_id($link,$unique_id,$unique_id_value)
{
	$examination_details=get_one_examination_details($link,$unique_id);
	//print_r($examination_details);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$table=isset($edit_specification['table'])?$edit_specification['table']:'';
	if(strlen($table)==0){return false;}

	$sqls='select * from `'.$table.'` where id=\''.$unique_id_value.'\'';
	//echo '<h3>'.$sqls.'</h3>';
	$results=run_query($link,$GLOBALS['database'],$sqls);
	$sample_id_array=array();
	if(get_row_count($results)<=0)
	{
		echo 'no next/previous id '.$unique_id_value.' exist';
		return;
	}
	else
	{
				echo '<h5 class="bg-warning print_hide" >Following '.get_row_count($results).' is/are  samples with the required condition</h5>';

	}
	while($ar=get_single_row($results))
	{
		echo '<div class="btn-group" role="group">';
		showww_sid_button_release_status($link,$ar['sample_id']);
		//xxx_view_sample($link,$ar['sample_id']);
		echo '</div>';
		$sample_id_array[]=$ar['sample_id'];
	}

	foreach ($sample_id_array as $sample_id)
	{
		echo '<div class="border p-3 m-3 border-danger">';
		xxx_manage_sample_status_change_horizontal($link,$sample_id);
		xxx_view_sample($link,$sample_id);
		echo '</div>';
	}
}


function get_sample_id_for_any_sid_single_id($link,$id)
{
	if(ctype_digit($id)){return $id;}
	/*$sql='select 
				examination_id,
				json_extract(edit_specification,\'$.unique_prefix\') as unique_prefix,
				json_extract(edit_specification,\'$.table\') as id_table 
			from examination 
			where 
				json_extract(edit_specification,\'$.type\')="id_single_sample" or 
				json_extract(edit_specification,\'$.type\')="id_multi_sample"';
	*/
	$sql='select 
				examination_id,
				json_extract(edit_specification,\'$.unique_prefix\') as unique_prefix,
				json_extract(edit_specification,\'$.table\') as id_table 
			from examination 
			where 
				json_extract(edit_specification,\'$.type\')="id_single_sample"';
				
	//echo $sql.'<br>';
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)<=0){return false;}
	while($ar=get_single_row($result))
	{
		
		//echo '<h1>id='.$id.'</h1>';
		//echo '<h1>'.$ar['unique_prefix'].'</h1>';
		//echo '<h1>final prefix='.trim($ar['unique_prefix'],'"').'</h1>';
		$prefix=trim($ar['unique_prefix'],'"');
		if($prefix==substr($id,0,strlen($prefix)))
		{
			$sql_get='select sample_id from `'.trim($ar['id_table'],'"').'` where id=\''.substr($id,strlen($prefix)).'\'';
			//echo $sql_get;
			$result_get=run_query($link,$GLOBALS['database'],$sql_get);
			if(get_row_count($result_get)<=0){return false;}
			$ar_get=get_single_row($result_get);
			//echo $ar_get['sample_id'];
			return $ar_get['sample_id'];
		}
	}
	return false;
}

// end of Sample ID to unique ID conversion and visa versa//

//Print function//


function get_header($link,$sample_id)
{
	$header_ex=array();
	
	$header_html=get_config_value($link,'report_header');
	$dom = new DOMDocument();
	$dom->preserveWhiteSpace = false;
	$dom->loadHTML($header_html);

	$td = $dom->getElementsByTagName ("td");
	foreach ($td as $node)
	{
		//echo 'Name='.$node->nodeName.' Value='.$node->nodeValue.' Path='.$node->getNodePath().'<br>';
		$ex=explode('|',$node->nodeValue);
		if($node->nodeValue=='sample_id'){}
		else if($node->nodeValue=='sample_id_value'){$node->nodeValue=$sample_id;}
		else if($node->nodeValue=='report_qr_code')
		{
			$node->nodeValue='';
			$qr_link=make_link_return($link,$sample_id);
			$barcodeobj = new TCPDF2DBarcode($qr_link, 'QRCODE,H');
			$png=$barcodeobj->getBarcodePngData(3, 3, array(0,0,0));
			
			//$img = '<img src="@'.$encoded_image.'" width=30 /> ';

			$encoded_image=base64_encode($png);
			$i=$dom->createElement('img');
			
			$domAttribute = $dom->createAttribute('src');
			$domAttribute->value = '@'.$encoded_image;
			$i->appendChild($domAttribute);
			
			$domAttribute = $dom->createAttribute('width');
			$domAttribute->value = get_config_value($link,'qr_code_width');					
			$i->appendChild($domAttribute);

			$node->appendChild($i);
		}

		else if(is_numeric($ex[0]))
		{
			$header_ex[]=$ex[0];
			if($ex[1]=='n')
			{
				$examination_details=get_one_examination_details($link,$ex[0]);
				$node->nodeValue=$examination_details['name'];
			}	
			else if($ex[1]=='r')
			{
				$examination_details=get_one_examination_details($link,$ex[0]);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';
				
				if($type!='blob')
				{
					if($examination_details['append_user']==1)
					{
						$user_info=get_user_info($link,$_SESSION['login']);
						$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
					}
					else
					{
						$append_info='';
					}
							
		
					$sql='select examination_id,result from result where sample_id=\''.$sample_id.'\' and examination_id=\''.$ex[0].'\'';
					$result=run_query($link,$GLOBALS['database'],$sql);
					if(get_row_count($result)!=1){$node->nodeValue='';continue;}
					$ar=get_single_row($result);
					$node->nodeValue=$ar['result'].' '.$append_info;
				}
				else
				{
					$node->nodeValue='';

					$img=isset($edit_specification['img'])?$edit_specification['img']:'';
					if($img!="png"){continue;}
					$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
					$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
					$sql='select examination_id,result from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$ex[0].'\'';
					//echo $sql;
					$result=run_query($link,$GLOBALS['database'],$sql);
					$ar=get_single_row($result);
					//echo $ar['result'];
					
					if(get_row_count($result)!=1){continue;}		//if no such examination
					if(strlen($ar['result'])==0){continue;}			//if no blob uploaded. formatting wrong if not broken here
					$encoded_image=base64_encode($ar['result']);
					$i=$dom->createElement('img');
					
					$domAttribute = $dom->createAttribute('src');
					$domAttribute->value = '@'.$encoded_image;
					$i->appendChild($domAttribute);
					
					$domAttribute = $dom->createAttribute('width');
					$domAttribute->value = $w;					
					$i->appendChild($domAttribute);
					
					$domAttribute = $dom->createAttribute('height');
					$domAttribute->value = $h;					
 					$i->appendChild($domAttribute);

					$node->appendChild($i);
				}
			}
		}
		
	}

	//echo $dom->saveHTML();
	//exit();
	return array($dom->saveHTML(),$header_ex);;

}

function xxx_print_sample($link,$sample_id,$header_ex)
{

	//print_r($header_ex);
	if(!sample_exist($link,$sample_id)){ echo '<h5>Sample Id '.$sample_id.' does not exist</h5>';return;}

	//echo '<pre>';	print_r($result_plus_blob_requested);echo '</pre>';
	$sql=" (select examination.examination_id,print_route,name,print_route_priority from examination,result 
			where 
				examination.examination_id=result.examination_id 
				and
				result.sample_id='".$sample_id."')

				union

		(select examination.examination_id,print_route,name,print_route_priority from examination,result_blob 
			where 
				examination.examination_id=result_blob.examination_id 
				and
				result_blob.sample_id='".$sample_id."')
				
				
			order by 
				print_route,examination_id
								
				";

	//echo '<br>'.$sql.'<br>';
	$ex_tree=xxx_make_examination_tree($link,$sql,'print_route');

	//echo '<pre>';print_r($ex_tree);echo '</pre>';
	ksort($ex_tree);
	//echo '<pre>';print_r($ex_tree);echo '</pre>';
		
	//return;
	
/*
echo '<table border="1" cellpadding="2">
			<tr>
					<td class="badge badge-primary ">Sample ID</td>
					<td class="badge badge-info"><h5>'.$sample_id.'</h5></td>
			</tr>
	</table>';
*/

echo '<table border="0.3">';
		xxx_tree_to_panel_for_print($link,$ex_tree,$sample_id,$header_ex);
echo 	'</table>';

}

function xxx_tree_to_panel_for_print($link,$tree,$sample_id,$header_ex)
{
	foreach($tree as $k=>$v)
	{
		if(is_array($v))
		{
			if(explode('^',$k)[1]==get_config_value($link,'header_route')){continue;}		//Header not as tree, but on each page
			ksort($v);
				echo '
						<tr>
							<td colspan="2" ><b>
								'.explode('^',$k)[1].'
							</b></td>
						</tr>';
				echo 	'<tr><td width="10%" ></td>
							<td  width="90%" >';
								echo '<table border="0.3">';
								xxx_tree_to_panel_for_print($link,$v,$sample_id,$header_ex);
								echo '</table>';
					echo	'</td>
						</tr>';
		}
		else
		{
			if(in_array($v,$header_ex)){continue;}
			echo '<tr><td colspan="2">';
			echo '<table border="0" cellpadding="2" nobr="true">';
			print_field_any($link,$v,$sample_id);
			echo '</table>';
			echo '</td></tr>';
		}
	}
}


function print_field_any($link,$ex_id,$sample_id)
{
	$examination_details=get_one_examination_details($link,$ex_id);
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';	
	if($hide=='yes'){  return; }

	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	$ex_compact=isset($edit_specification['compact'])?$edit_specification['compact']:'';
	$display_format=$examination_details['display_format'];

		if($type=='blob')
		{	
			print_field_blob($link,$ex_id,$sample_id,$display_format);
		}
		else
		{
			if(in_array($type,['id_multi_sample','id_single_sample']))
			{
				$ex_result=get_id_type_examination_result($link,$sample_id,$ex_id);
			}
			else
			{
				$ex_result=get_one_ex_result($link,$sample_id,$ex_id);
			}
			print_field($link,$ex_id,$ex_result,$sample_id);
		}
}

function print_field($link,$ex_id,$ex_result,$sample_id='')
{
	$examination_details=get_one_examination_details($link,$ex_id);
	$display_format=$examination_details['display_format'];
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$help=isset($edit_specification['help'])?$edit_specification['help']:'';
	
	$hide=isset($edit_specification['hide'])?$edit_specification['hide']:'';	
	if($hide=='yes'){  $print_hide=" print_hide ";}else{$print_hide='';}
	//echo $print_hide;
	
	
	$type=isset($edit_specification['type'])?$edit_specification['type']:'';
	$interval_l=isset($edit_specification['interval_l'])?$edit_specification['interval_l']:'';
	$cinterval_l=isset($edit_specification['cinterval_l'])?$edit_specification['cinterval_l']:'';
	$ainterval_l=isset($edit_specification['ainterval_l'])?$edit_specification['ainterval_l']:'';
	$interval_h=isset($edit_specification['interval_h'])?$edit_specification['interval_h']:'';
	$cinterval_h=isset($edit_specification['cinterval_h'])?$edit_specification['cinterval_h']:'';
	$ainterval_h=isset($edit_specification['ainterval_h'])?$edit_specification['ainterval_h']:'';
	$img=isset($edit_specification['img'])?$edit_specification['img']:'';
	if($examination_details['append_user']==1)
	{
		$user_info=get_user_info($link,$_SESSION['login']);
		$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
	}
	else
	{
		$append_info='';
	}

	if(strlen($display_format)==0){$display_format='horizontal3';}
	//$display_format='horizontal3';
	if($display_format=='horizontal3')
	{
			echo '<tr>';
			
				echo '<td>'.$examination_details['name'].'</td>';
				
				echo '<td style="padding:2px;">'.
					htmlspecialchars($ex_result.' '.
									decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
									$append_info).
					'
				</td>';
			
				//echo '<td>'.htmlspecialchars($help).'</td>';
				//echo '<td>'.htmlentities($help).'</td>';
				//echo '<td style="padding:2px;"> '.$help.'</td>';
				echo '<td style="padding:2px;"> '.$examination_details['print_help'].'</td>';
			
			echo '</tr>';
	}		
		
			
	elseif($display_format=='horizontal2')
	{		
			echo '<tr>';
			
				echo '<td>'.$examination_details['name'].'</td>';
				
				echo '<td colspan="2">'.
					htmlspecialchars($ex_result.' '.
									decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
									$append_info).
					'
				</td>';
				echo '</tr>
				<tr>';
			
				//echo '<td colspan="2">'.htmlspecialchars($help).'</td>';
				//echo '<td colspan="3">'.$help.'</td>';
				echo '<td colspan="3">'.$examination_details['print_help'].'</td>';
				
			echo '</tr>';
	}		
			
			
	elseif($display_format=='horizontal1')
	{		
				echo '<tr>';
			
					echo '<td colspan="3"><i>Examination:</i> '.$examination_details['name'].'</td>';
				
				echo '</tr>
				<tr>';

					echo '<td  colspan="3"><i>Result:</i> '.
					htmlspecialchars($ex_result.' '.
									decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
									$append_info).
					'
					</td>';
				echo '</tr>
				<tr>';
			
					//echo '<td  colspan="3"><i>Notes:</i> '.$help.'</td>';
					echo '<td  colspan="3"><i>Notes:</i> '.$examination_details['print_help'].'</td>';
			
			echo '</tr>';
			
	}		


	 elseif($display_format=='compact_report')
	{
		
		
				echo '<tr>';
			
				echo '<td>'.$examination_details['name'].'</td>';
				
				echo '<td>'.
					htmlspecialchars($ex_result.' '.
									decide_alert($ex_result,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h).
									$append_info).
					'
				</td>';
			
				//echo '<td>'.htmlspecialchars($help).'</td>';
			
			echo '</tr>';
			
	}		
		
}				


function print_field_blob($link,$kblob,$sample_id,$display_class='horizontal3')
{
		$sql_blob='select * from result_blob where sample_id=\''.$sample_id.'\' and examination_id=\''.$kblob.'\'';

		$result_blob=run_query($link,$GLOBALS['database'],$sql_blob);
		$ar_blob=get_single_row($result_blob);

		$examination_details=get_one_examination_details($link,$kblob);
		$edit_specification=json_decode($examination_details['edit_specification'],true);
		$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
		$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
        $img=isset($edit_specification['img'])?$edit_specification['img']:'';
		$help=isset($edit_specification['help'])?$edit_specification['help']:'';
        
		//print_r($ar);
		$examination_blob_details=get_one_examination_details($link,$kblob);


			echo '<tr>';
		
				echo '<td colspan="3">'.$examination_details['name'].'</td>';
			
			echo '</tr>
			<tr>';

				echo '<td  colspan="3"> ';
						//$ar_blob['fname'] is not used in function at all
                        display_png_p($ar_blob['result'],$ar_blob['fname'],$w,$h);    

				echo '</td>';
			echo '</tr>
			<tr>';
		
				echo '<td  colspan="3">'.$help.'</td>';
		
		echo '</tr>';
}


function get_header_yyy($link,$sample_id)
{
$header='<table border="1" style="padding:2px;">';

$counter=0;


$sql="select examination_id,result from result where sample_id='".$sample_id."'";
$result=run_query($link,$GLOBALS['database'],$sql);

//result
while($ar=get_single_row($result))
{
	$ex_id=$ar['examination_id'];
	$examination_details=get_one_examination_details($link,$ex_id);
	$display_format=$examination_details['display_format'];
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	
	
	//$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';
	if(in_array($ex_id,explode(',',get_config_value($link,'report_header_examination')))){ $print_in_header='yes';}
	else { $print_in_header='';}
	
	/*
		counter 0  tr 	counter 1
		counter 1 			counter 2
		counter 2 			counter 3	/tr
	
	*/
	
	if($print_in_header=='yes')
	{
		if($examination_details['append_user']==1)
		{
			$user_info=get_user_info($link,$_SESSION['login']);
			$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
		}
		else
		{
			$append_info='';
		}
		

		if($counter%3==0)
		{
			$header=$header.'<tr>';
			$counter++;
		}
		else 
		{
			$counter++;
		}
		
			$header=$header.'<td><b>'.$examination_details['name'].'</b></td><td>'.$ar['result'].' '.$append_info.'</td>';
		
		if($counter%3==0)
		{
			$header=$header.'</tr>';
		}
	}
}

//result blob

$sql="select examination_id,result from result_blob where sample_id='".$sample_id."'";
$result=run_query($link,$GLOBALS['database'],$sql);

while($ar=get_single_row($result))
{
	$ex_id=$ar['examination_id'];
	$examination_details=get_one_examination_details($link,$ex_id);
	$display_format=$examination_details['display_format'];
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	
	//$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';
	if(in_array($ex_id,explode(',',get_config_value($link,'report_header_examination')))){ $print_in_header='yes';}
	else { $print_in_header='';}
	
	$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
	$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
	
	/*
		counter 0  tr 	counter 1
		counter 1 			counter 2
		counter 2 			counter 3	/tr
	
	*/
	
	if($print_in_header=='yes')
	{
		if($counter%3==0)
		{
			$header=$header.'<tr>';
			$counter++;
		}
		else 
		{
			$counter++;
		}
		
			$header=$header.'<td>'.$examination_details['name'].'</td><td>';



			ob_start();
			display_png_p($ar['result'],'not important',$w,$h);
			$png = ob_get_contents();
			ob_end_clean();
		
			
			
	
			$header=$header.$png; 
			
			$header=$header.'</td>';
		
		if($counter%3==0)
		{
			$header=$header.'</tr>';
		}
	}
}


//result blob end

if($counter%3==1){$header=$header.'<td></td><td></td><td></td><td></td></tr>';}
if($counter%3==2){$header=$header.'<td></td><td></td></tr>';}
$header=$header.'</table>';	
	
return $header;
}



function get_header_xxx($link,$sample_id)
{

//$header_ex=explode(',',get_config_value($link,'report_header_examination'));
$header_ex=get_config_value($link,'report_header_examination');
$counter=0;


$sql="select examination_id,result from result where sample_id='".$sample_id."' and examination_id in (".$header_ex.")";
echo $sql;

$result=run_query($link,$GLOBALS['database'],$sql);

while($ar=get_single_row($result))
{
	print_r($ar);
	$ex_id=$ar['examination_id'];
	$examination_details=get_one_examination_details($link,$ex_id);
	$display_format=$examination_details['display_format'];
	$edit_specification=json_decode($examination_details['edit_specification'],true);
	$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';

		if($examination_details['append_user']==1)
		{
			$user_info=get_user_info($link,$_SESSION['login']);
			$append_info=$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
		}
		else
		{
			$append_info='';
		}
		


}

//blob

//$sql="select examination_id,result from result_blob where sample_id='".$sample_id."' and examination_id in (".$header_ex.")";
//$result=run_query($link,$GLOBALS['database'],$sql);

//while($ar=get_single_row($result))
//{
	//$ex_id=$ar['examination_id'];
	//$examination_details=get_one_examination_details($link,$ex_id);
	//$display_format=$examination_details['display_format'];
	//$edit_specification=json_decode($examination_details['edit_specification'],true);
	//$print_in_header=isset($edit_specification['print_in_header'])?$edit_specification['print_in_header']:'';
	//$w=isset($edit_specification['width'])?$edit_specification['width']:'200';
	//$h=isset($edit_specification['height'])?$edit_specification['height']:'200';	
	
	///*
		//counter 0  tr 	counter 1
		//counter 1 			counter 2
		//counter 2 			counter 3	/tr
	
	//*/
	
	//if($print_in_header=='yes')
	//{
		//if($counter%3==0)
		//{
			//$header=$header.'<tr>';
			//$counter++;
		//}
		//else 
		//{
			//$counter++;
		//}
		
			//$header=$header.'<td>'.$examination_details['name'].'</td><td>';

			//ob_start();
			//display_png_p($ar['result'],'not important',$w,$h);
			//$png = ob_get_contents();
			//ob_end_clean();
		
			
			
	
			//$header=$header.$png; 
			
			//$header=$header.'</td>';
		
		//if($counter%3==0)
		//{
			//$header=$header.'</tr>';
		//}
	//}
//}

//blob end

if($counter%3==1){$header=$header.'<td></td><td></td><td></td><td></td></tr>';}
if($counter%3==2){$header=$header.'<td></td><td></td></tr>';}
$header=$header.'</table>';	
	
return $header;
}
//end  of print functions



function print_allowed($link,$sample_id)
{
	$ret=false;
	$pre=get_config_value($link,'prerequisite_examination_for_print');
	$pre_array=explode(',',$pre);
	foreach($pre_array as $pex)
	{
		$pp=get_one_ex_result($link,$sample_id,$pex);
		//echo'<h1>'.$pp.'</h1>';
		if(strlen($pp)>0)
		{
			$ret=true;
			break;
		}
	}
	return $ret;
}



class X_REPORT_PDF extends TCPDF {
	
	public $bottom;
	public $header;
	public $footer;
	public $curX;
	public $curY;
	
	public function set_all_margins($left,$top,$right,$bottom)
	{
		// set margins
		$this->SetMargins($left, $top, $right , true);
		$this->bottom=$bottom;
		
		$this->SetAutoPageBreak(TRUE, $this->bottom);

		$this->SetHeaderMargin(10);	//top border of page  and header start 
		$this->SetFooterMargin(5); // no effect?
	}
	
	
	public function Header() 
	{
		$this->SetFont('helvetica', '', 10);
		$this->writeHTML($this->header, true, false, true, false, '');
	}
	
	public function Footer() 
	{
		$this->SetY(-($this->bottom)+2);		//match with $pdf->SetAutoPageBreak(TRUE, 40);
		$this->SetFont('helvetica', '', 10);
		$this->writeHTML($this->footer, true, false, true, false, '');
	}
}


function xxx_prepare_for_report_printing()
{
	return $pdf = new X_REPORT_PDF('P', 'mm', 'A4', true, 'UTF-8', false);
}

function xxx_fill_report($link,$id,$pdf)
{
		
	////////SET HEADER//////////////
	//header footer overflow not solved
	$header_data=get_header($link,$id);
	//print_r($header_data);
	
	$pdf->header=$header_data[0];
	$header_ex=$header_data[1];

	////////SET FOOTER//////////////
	$pdf->startPageGroup();
	$footer='<table><tr><td>Page '.$pdf->getPageNumGroupAlias().'/'.$pdf->getPageGroupAlias().'</td><td colspan="2">Note:'.get_config_value($link,"footer_notice").'</td></tr></table>';
	//$footer='<table><tr><td>Page '.$pdf->getAliasNumPage().'/'.$pdf->getAliasNbPages().'</td><td colspan="2">Note:'.get_config_value($link,"footer_notice").'</td></tr></table>';
	$pdf->footer=$footer;

	////////SET MARGIN//////////////

	$left=get_config_value($link,'report_left_margin');
	$right=get_config_value($link,'report_right_margin');
	$top=get_config_value($link,'report_top_margin');
	$bottom=get_config_value($link,'report_bottom_margin');

	$pdf->set_all_margins($left=$left,$top=$top,$right=$right,$bottom=$bottom);


	////////ADD PAGE////////////////
	$pdf->AddPage();
	//echo $pdf->curY;

	ob_start();
	//print_r($_POST);
	xxx_print_sample($link,$id,$header_ex);
	$myStr = ob_get_contents();
	ob_end_clean();
	//echo $myStr;
	//exit(0);

	$pdf->SetFont('helvetica', '', 10);
	$pdf->writeHTML($myStr, true, false, true, false, '');
}

function generate_pdf_for_report($pdf)
{
		$pdf->Output('report.pdf', 'I');
}




function get_sample_id_array_for_any_id($link,$id)
{
	if(ctype_digit($id)){return array($id);}		//it is sample_id
	$sql='select 
				examination_id,
				json_extract(edit_specification,\'$.unique_prefix\') as unique_prefix,
				json_extract(edit_specification,\'$.table\') as id_table 
			from examination 
			where 
				json_extract(edit_specification,\'$.type\')="id_single_sample" or 
				json_extract(edit_specification,\'$.type\')="id_multi_sample"';
	
	/*$sql='select 
				examination_id,
				json_extract(edit_specification,\'$.unique_prefix\') as unique_prefix,
				json_extract(edit_specification,\'$.table\') as id_table 
			from examination 
			where 
				json_extract(edit_specification,\'$.type\')="id_single_sample"';*/
				
	//echo $sql.'<br>';
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)<=0){return false;}
	
	$ret=array();
	while($ar=get_single_row($result))
	{
		$prefix=trim($ar['unique_prefix'],'"');
		if($prefix==substr($id,0,strlen($prefix)))
		{
			$sql_get='select sample_id from `'.trim($ar['id_table'],'"').'` where id=\''.substr($id,strlen($prefix)).'\'';
			//echo $sql_get;
			$result_get=run_query($link,$GLOBALS['database'],$sql_get);
			if(get_row_count($result_get)<=0){return false;}
			while($ar_get=get_single_row($result_get))
			{
				$ret[]=$ar_get['sample_id'];
			}
		}
	}
	//print_r($ret);
	return $ret;
}

//use ctype_int() builtin
function my_is_int($string)
{
	if(strlen($string)==0){return false;}
	
	$digits=str_split($string);
	$list_of_digit=array('0','1','2','3','4','5','6','7','8','9');
	//print_r($list_of_digit);
	//print_r($digits);
	//echo '<br>';
	foreach($digits as $d)
	{
			if(in_array($d,$list_of_digit)===True)
			{
				//echo $d.':digit found<br>';
			}
			else
			{
				//echo $d.': NON digit found<br>';
				return false;
			}
	}
	
	return true;
}

///used in search and print
function check_for_conditions($link,$sid,$conditions)
{
	foreach($conditions as $ex_id => $value)
	{
		if($ex_id!='sample_id')
		{
			$result=get_any_examination_result($link,$sid,$ex_id);
		}
		else
		{
			$result=$sid;
		}
		if(is_array($value))
		{
			//echo $sid.'>>>'.$ex_id.'---->'.$result.'<br>';
			if($result>=$value[0] && $result<=$value[1])
			{
				//next
			}
			else
			{
				return false;
			}
		}
		else
		{
			if(stripos($result,$value)!==False)
			{
				//next
			}
			else
			{
				return False;
			}
		}
	}
	
	return true;
}


function xxx_should_display_accreditation_symbol($link,$sample_id)
{
	$ar=get_result_of_sample_in_array($link,$sample_id);
	foreach ($ar as $examination_id=>$examination_result)
	{
		$examination_details=get_one_examination_details($link,$examination_id);
		$ret=false;
		if($examination_details['accr_status']=='no')
		{
			$ret=false;
		}
		elseif($examination_details['accr_status']=='yes')
		{
			$ret=true;
			return $ret;
		}
		else
		{
			$ret=$ret;	//do nothing, 
		}
	}
	return $ret;			//if all are 'no'
}



function get_one_field_for_search($link,$examination_id)
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
				echo '<input class="float-right d-inline-block w-25" name=\'chk^'.$examination_id.'\' type=checkbox>';
			echo '</div>';
			echo '<div class="d-inline-block">';
				//get_one_field_for_insert_no_readonly($link,$examination_id);
				echo '		<input type=text size=13 id=\'__ex__'.$examination_id.'\'  name=\'__ex__'.$examination_id.'\' class="form-control text-danger"\>';
			echo '</div>';
			echo '<div>'.$option_html.'</div>';
		echo '</div>';
}

//used in search and print
function get_one_field_for_range_search($link,$examination_id)
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
			echo '<input class="float-right" name=\'chk^'.$examination_id.'\' type=checkbox>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=\'__from__'.$examination_id.'\'  	name=\'__from__'.$examination_id.'\' 	class="form-control text-danger"\>'.$option_html_from;
			echo '<input type=hidden 					name=\'__ex__'.$examination_id.'\' 		value=\'\'>';

		echo '</div>';		
	echo '</div>';		
		
	echo '<div class="basic_form">';	
		echo '<div class="d-inline p-2">';
			echo '	<label class="my_label text-danger" for="to">To '.$ex_name.'</label>';
		echo '</div>';
		
		echo '<div class="d-inline p-2">';
		echo '		<input type=text size=13 id=\'__to__'.$examination_id.'\'   	name=\'__to__'.$examination_id.'\' 		class="form-control text-danger"\>'.$option_html_to;
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
