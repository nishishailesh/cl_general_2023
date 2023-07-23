<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<pre>';print_r($_POST);echo '</pre>';

$pdf=xxx_prepare_for_report_printing();

$final_print='yes';

foreach ($ar_of_id=explode(',',$_POST['list_of_id']) as $any_id)
{
	
	//$id=get_sample_id_for_any_sid_single_id($link,$any_id);
	$id_array=get_sample_id_array_for_any_id($link,$any_id);
	foreach($id_array as $id)
	{
		if(!$id)
		{ 
			echo '<div>';
				echo '<div style="display:inline-block">';
				echo 'sample_id for '.$any_id;
				echo '</div>';
				
				echo '<div style="display:inline-block">';
				echo '&nbsp; is not found';
				echo '</div>';
			echo '</div>';
			$final_print='no';
			continue;
		}
		
		if(!print_allowed($link,$id))
		{
			echo '<div>';
				echo '<div style="display:inline-block">';
				xxx_sample_id_view_button($id,$target=' target=_blank ',$label=$id);
				echo '</div>';
				
				echo '<div style="display:inline-block">';
				echo '&nbsp;is not eligible for print';
				echo '</div>';
			echo '</div>';
			$final_print='no';
			continue;
		}
		else
		{
			//echo '<h1>print allowed</h1>';
		}

		xxx_fill_report($link,$id,$pdf);
	}
}
//exit(0);
if($final_print=='yes')
{
	generate_pdf_for_report($pdf);
}
else
{
	echo '<h3>make necessary changes in samples above or remove them from print list</h3>';
}

?>
