<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
echo '<pre>';print_r($_POST);echo '</pre>';
$received=unserialize(base64_decode($_POST['sample_id_array']));
print_r($received);

foreach($received as $k=>$v)
{
	//echo '<h5>'.$v.'</h5>';
	get_unique_id_array_for_sample_id($link,$v);
}

exit(0);	//echo will cause problem in pdf

$pdf=get_pdf_link_for_barcode();
xxx_prepare_sample_barcode($link,$_POST['sample_id'],$_POST['label_id'],$pdf);
print_pdf($pdf,'barcode.pdf');


function get_unique_id_array_for_sample_id($link,$sample_id)
{
	$sql='select 
				examination_id,
				json_extract(edit_specification,\'$.unique_prefix\') as unique_prefix,
				json_extract(edit_specification,\'$.table\') as id_table 
			from examination 
			where 
				json_extract(edit_specification,\'$.type\')="id_single_sample" or 
				json_extract(edit_specification,\'$.type\')="id_multi_sample"';
	

	//echo $sql.'<br>';
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	if(get_row_count($result)<=0){return false;}
	
	$ret=array();
	while($ar=get_single_row($result))
	{
		//print_r($ar);
		$uid=get_any_examination_result($link,$sample_id,$ar['examination_id']);
		if($uid!==False)
		{
			echo '<h5>'.$ar['examination_id'].'='.$uid.'</h5>';
		}
	}
	//print_r($ret);
	return $ret;
}

/*

Array
(
    [action] => one_barcode
    [session_name] => sn_1714021314
    [sample_id] => 1259664
    [label_id] => 3
)

*/

/*
function get_label_details($link,$label_id)
{
	$sql='select * from labels where id=\''.$label_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	return $ar=get_single_row($result);
}

function xxx_prepare_sample_barcode($link,$sample_id,$label_id,$pdf)
{
		$border=0;
		$barcode_border=False;
		
		$style = array(
		'position' => '',
		'align' => 'C',
		'stretch' => True,
		'fitwidth' => true,
		'cellfitalign' => '',
		'border' => $barcode_border,
		'hpadding' => 'auto',
		'vpadding' => '0',
		'fgcolor' => array(0,0,0),
		'bgcolor' => false, //array(255,255,255),
		'text' => false,
		'font' => 'helvetica',
		'fontsize' => 5,
		'stretchtext' => true
	);

	
		//label data
		$label_details=get_label_details($link,$label_id);
		$data=json_decode($label_details['data'],true);
		$border=$label_details['border'];
		
		//examination data
		//echo $label_details['examination_id'].'<br>';
		
		if($label_details['examination_id']=='sample_id')
		{
			$prefix='';
		}
		else
		{
			$examination_details=get_one_examination_details($link,$label_details['examination_id']);
			$edit_specification=json_decode($examination_details['edit_specification'],true);
			$prefix=isset($edit_specification['unique_prefix'])?$edit_specification['unique_prefix']:'';
			//echo '==================='.$prefix;
		}	
			
		$pdf->AddPage();
		
		//during setup border is good =>border=1 else border=0
				
		foreach($data as $item_csv)
		{
			$item=explode(',',$item_csv);
			//echo '<pre>--------->>';print_r($item);
			if($item[0]=='sample_id')
			{
				if($item[1]=='h')
				{
					if($item[2]=='b')
					{
						$pdf->write1DBarcode($sample_id, $label_details['barcode_format'], $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
					}
					else if($item[2]=='t')
					{
						//$pdf->SetFont('helveticaB', '', 5);
						$pdf->SetFont('helvetica', '', 7);
						$pdf->SetXY($item[3],$item[4]);
						$pdf->Cell($item[5],$item[6],' '.$sample_id,$border, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
					}
				}
				
				else if($item[1]=='v')
				{
					if($item[2]=='b')
					{
						$pdf->write1DBarcode($sample_id, $label_details['barcode_format'], $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
					}
					else if($item[2]=='t')
					{
						
						$pdf->SetFont('helvetica', '', 7);

						$pdf->StartTransform();
						$pdf->SetXY($item[3],$item[4]);
						//$pdf->Rotate(90, 0 , 0);
						$pdf->Rotate(90);
						$pdf->Cell($item[5],$item[6],' '.$sample_id,$border, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
						
						$pdf->StopTransform();
					}
				}
								
			}
			if($item[0]=='other_data')
			{
				$sql_data=str_replace("{sample_id}",'\''.$sample_id.'\'',$label_details['other_data']);
				$result_data=run_query($link,$GLOBALS['database'],$sql_data);
				$ar_data=get_single_row($result_data);
				$other_data=$ar_data['other_data'];
				
				if($item[1]=='h')
				{
					if($item[2]=='b')
					{
						$pdf->write1DBarcode($other_data, $label_details['barcode_format'], $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
					}
					else if($item[2]=='t')
					{
						//$pdf->SetFont('helveticaB', '', 5);
						$pdf->SetFont('helveticaB', '', 11);
						$pdf->SetXY($item[3],$item[4]);
						$pdf->Cell($item[5],$item[6],' '.$other_data,$border, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
					}
				}
				
				else if($item[1]=='v')
				{
					if($item[2]=='b')
					{
						$pdf->write1DBarcode($other_data, $label_details['barcode_format'], $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
					}
					else if($item[2]=='t')
					{
						
						$pdf->SetFont('helvetica', '', 7);

						$pdf->StartTransform();
						$pdf->SetXY($item[3],$item[4]);
						//$pdf->Rotate(90, 0 , 0);
						$pdf->Rotate(90);
						$pdf->Cell($item[5],$item[6],' '.$other_data,$border, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
						
						$pdf->StopTransform();
					}
				}
								
			}
			else
			{
				$ex_result=get_any_examination_result($link,$sample_id,$item[0]);
				//if(!$ex_result){continue;}
				if($item[0]==$label_details['examination_id']){$ex_result=$prefix.$ex_result;}

				if($item[1]=='h')
				{
					if($item[2]=='b')
					{
						$pdf->write1DBarcode($ex_result, 'C128', $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
					}
					else if($item[2]=='t')
					{
						//$pdf->SetFont('helveticaB', '', 5);
						$pdf->SetFont('helvetica', '', 7);
						$pdf->SetXY($item[3],$item[4]);
						$pdf->Cell($item[5],$item[6],' '.$ex_result,$border, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
					}
				}
				
				else if($item[1]=='v')
				{
					if($item[2]=='b')
					{
						$pdf->write1DBarcode($ex_result, 'C128', $item[3],$item[4],$item[5],$item[6], 0.4, $style, 'N');
					}
					else if($item[2]=='t')
					{
						
						$pdf->SetFont('helvetica', '', 7);

						$pdf->StartTransform();
						$pdf->SetXY($item[3],$item[4]);
						//$pdf->Rotate(90, 0 , 0);
						$pdf->Rotate(90);
						$pdf->Cell($item[5],$item[6],' '.$ex_result,$border, $ln=0, $align='', $fill=false, '', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');	
						
						$pdf->StopTransform();
					}
				}
				
			}
		}
}
*/

	/**
	 * Rotate object.
	 * @param $angle (float) angle in degrees for counter-clockwise rotation
	 * @param $x (int) abscissa of the rotation center. Default is current x position
	 * @param $y (int) ordinate of the rotation center. Default is current y position
	 * @public
	 * @since 2.1.000 (2008-01-07)
	 * @see StartTransform(), StopTransform()
	 */
	 
	/**
	 * Prints a cell (rectangular area) with optional borders, background color and character string. The upper-left corner of the cell corresponds to the current position. The text can be aligned or centered. After the call, the current position moves to the right or to the next line. It is possible to put a link on the text.<br />
	 * If automatic page breaking is enabled and the cell goes beyond the limit, a page break is done before outputting.
	 * @param $w (float) Cell width. If 0, the cell extends up to the right margin.
	 * @param $h (float) Cell height. Default value: 0.
	 * @param $txt (string) String to print. Default value: empty string.
	 * @param $border (mixed) Indicates if borders must be drawn around the cell. The value can be a number:<ul><li>0: no border (default)</li><li>1: frame</li></ul> or a string containing some or all of the following characters (in any order):<ul><li>L: left</li><li>T: top</li><li>R: right</li><li>B: bottom</li></ul> or an array of line styles for each border group - for example: array('LTRB' => array('width' => 2, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(0, 0, 0)))
	 * @param $ln (int) Indicates where the current position should go after the call. Possible values are:<ul><li>0: to the right (or left for RTL languages)</li><li>1: to the beginning of the next line</li><li>2: below</li></ul> Putting 1 is equivalent to putting 0 and calling Ln() just after. Default value: 0.
	 * @param $align (string) Allows to center or align the text. Possible values are:<ul><li>L or empty string: left align (default value)</li><li>C: center</li><li>R: right align</li><li>J: justify</li></ul>
	 * @param $fill (boolean) Indicates if the cell background must be painted (true) or transparent (false).
	 * @param $link (mixed) URL or identifier returned by AddLink().
	 * @param $stretch (int) font stretch mode: <ul><li>0 = disabled</li><li>1 = horizontal scaling only if text is larger than cell width</li><li>2 = forced horizontal scaling to fit cell width</li><li>3 = character spacing only if text is larger than cell width</li><li>4 = forced character spacing to fit cell width</li></ul> General font stretching and scaling values will be preserved when possible.
	 * @param $ignore_min_height (boolean) if true ignore automatic minimum height value.
	 * @param $calign (string) cell vertical alignment relative to the specified Y value. Possible values are:<ul><li>T : cell top</li><li>C : center</li><li>B : cell bottom</li><li>A : font top</li><li>L : font baseline</li><li>D : font bottom</li></ul>
	 * @param $valign (string) text vertical alignment inside the cell. Possible values are:<ul><li>T : top</li><li>C : center</li><li>B : bottom</li></ul>
	 * @public
	 * @since 1.0
	 * @see SetFont(), SetDrawColor(), SetFillColor(), SetTextColor(), SetLineWidth(), AddLink(), Ln(), MultiCell(), Write(), SetAutoPageBreak()
	 */

	/**
	 * Print a Linear Barcode.
	 * @param $code (string) code to print
	 * @param $type (string) type of barcode (see tcpdf_barcodes_1d.php for supported formats).
	 * @param $x (int) x position in user units (empty string = current x position)
	 * @param $y (int) y position in user units (empty string = current y position)
	 * @param $w (int) width in user units (empty string = remaining page width)
	 * @param $h (int) height in user units (empty string = remaining page height)
	 * @param $xres (float) width of the smallest bar in user units (empty string = default value = 0.4mm)
	 * @param $style (array) array of options:<ul>
	 * <li>boolean $style['border'] if true prints a border</li>
	 * <li>int $style['padding'] padding to leave around the barcode in user units (set to 'auto' for automatic padding)</li>
	 * <li>int $style['hpadding'] horizontal padding in user units (set to 'auto' for automatic padding)</li>
	 * <li>int $style['vpadding'] vertical padding in user units (set to 'auto' for automatic padding)</li>
	 * <li>array $style['fgcolor'] color array for bars and text</li>
	 * <li>mixed $style['bgcolor'] color array for background (set to false for transparent)</li>
	 * <li>boolean $style['text'] if true prints text below the barcode</li>
	 * <li>string $style['label'] override default label</li>
	 * <li>string $style['font'] font name for text</li><li>int $style['fontsize'] font size for text</li>
	 * <li>int $style['stretchtext']: 0 = disabled; 1 = horizontal scaling only if necessary; 2 = forced horizontal scaling; 3 = character spacing only if necessary; 4 = forced character spacing.</li>
	 * <li>string $style['position'] horizontal position of the containing barcode cell on the page: L = left margin; C = center; R = right margin.</li>
	 * <li>string $style['align'] horizontal position of the barcode on the containing rectangle: L = left; C = center; R = right.</li>
	 * <li>string $style['stretch'] if true stretch the barcode to best fit the available width, otherwise uses $xres resolution for a single bar.</li>
	 * <li>string $style['fitwidth'] if true reduce the width to fit the barcode width + padding. When this option is enabled the 'stretch' option is automatically disabled.</li>
	 * <li>string $style['cellfitalign'] this option works only when 'fitwidth' is true and 'position' is unset or empty. Set the horizontal position of the containing barcode cell inside the specified rectangle: L = left; C = center; R = right.</li></ul>
	 * @param $align (string) Indicates the alignment of the pointer next to barcode insertion relative to barcode height. The value can be:<ul><li>T: top-right for LTR or top-left for RTL</li><li>M: middle-right for LTR or middle-left for RTL</li><li>B: bottom-right for LTR or bottom-left for RTL</li><li>N: next line</li></ul>
	 * @author Nicola Asuni
	 * @since 3.1.000 (2008-06-09)
	 * @public
	 */
?>
