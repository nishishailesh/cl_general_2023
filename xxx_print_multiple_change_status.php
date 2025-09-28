<?php
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<pre>';print_r($_POST);echo '</pre>';

echo '
<style>

.two_column 
{
  display: grid;
  grid-template-columns: auto auto;
}

.ten_column 
{
  display: grid;
  grid-template-columns: auto auto auto auto auto auto auto auto auto auto;
  grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
  justify-items: start;
  gap: 0px 0px;
  margin: 3px;
  //border: 3px solid red;
}
</style>

';

if($_POST['action']=='view_pdf')
{	

	$pdf=xxx_prepare_for_report_printing();

	$final_print='yes';
	
	foreach ($ar_of_id=explode(',',$_POST['list_of_id']) as $any_id)
	{
		
		//$id=get_sample_id_for_any_sid_single_id($link,$any_id);
		$id_array=get_sample_id_array_for_any_id($link,$any_id);
		if($id_array===false)
		{
			echo '<div style="display:grid;grid-template-columns: 20% 80%; margin:10 ;border-bottom-style: dotted">';
			echo '<div style="display:inline-block">';
			echo $any_id;
			echo '</div>';
			
			echo '<div style="display:inline-block">';
			echo '&nbsp;is not associated with any sample_id';
			echo '</div>';
			echo '</div>';
			continue;
		}
		//print_r([$any_id,$id_array]);
		//echo '<br>';



		foreach($id_array as $id)
		{

			if(print_allowed($link,$id))
			{
					xxx_fill_report($link,$id,$pdf);
			} 
			elseif(isset($_POST['ignore']))
			{
				
			}
			else
			{
					$ex_id_of_unique_id=get_ex_id_of_unique_id_from_any_id_value_string($link,$any_id);
					//print($ex_id_of_unique_id);
					if($ex_id_of_unique_id=='sample_id'){$u=0;}else{$u=$ex_id_of_unique_id;}
					
					echo '<div style="display:grid;grid-template-columns: 20% 80%; margin:10 ;border-bottom-style: dotted">';
						showww_sid_button_without_release_status($link,$id,$extra_post='',$u);				
						//xxx_sample_id_view_button($id,$target=' target=_blank ',$label=$id);
						echo '<div style="display:inline-block">';
							echo '&nbsp;is not eligible for print';
						echo '</div>';
					echo '</div>';

					$final_print='no';
					continue;
			}
		}
	}


	if($final_print=='yes')
	{
		generate_pdf_for_report($pdf);
	}
	else
	{
		echo '<h3>make necessary changes in samples above or remove them from print list</h3>';
	}
}

//else if ($_POST['action']=='sample_printed')
else
{
	//echo 'changing status of all reports to physically printed';	
	$sql='select examination_id from sample_status where name=\''.$_POST['action'].'\'';
	//echo $sql;
	$status_result=run_query($link,$GLOBALS['database'],$sql);
	$ar=get_single_row($status_result);
	//echo '----';
	//print_r($ar);
	//echo '====';
	$status_ex_id=$ar['examination_id'];

	echo '<div class="two_column">';
	echo '<div class="ten_column">';	
		
	foreach ($ar_of_id=explode(',',$_POST['list_of_id']) as $any_id)
	{
		
		//$id=get_sample_id_for_any_sid_single_id($link,$any_id);
		$id_array=get_sample_id_array_for_any_id($link,$any_id);
		if($id_array===false)
		{
			echo '<div style="display:grid;grid-template-columns: 20% 80%; margin:10 ;border-bottom-style: dotted">';
			echo '<div style="display:inline-block">';
			echo $any_id;
			echo '</div>';
			
			echo '<div style="display:inline-block">';
			echo '&nbsp;is not associated with any sample_id';
			echo '</div>';
			echo '</div>';
			continue;
		}


	
		foreach($id_array as $sid)
		{
			xxx_update_sample_status($link,$sid,$status_ex_id);
			showww_sid_button_release_status($link,$sid);
		}

	}
	echo '</div>';
	echo '</div>';
	
}
//exit(0);


?>
