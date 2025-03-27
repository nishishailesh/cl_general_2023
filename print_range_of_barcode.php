<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
  ////////User code below/////////////////////
  

//echo '<pre>';print_r($_POST);echo '</pre>';
//exit();


$pdf=get_pdf_link_for_barcode();
prepare_label($pdf);
print_pdf($pdf,'barcode.pdf');


function prepare_label($pdf)
{
    $style = array(
    'position' => '',
    'align' => 'C',
    'stretch' => true,
    'cellfitalign' => '',
    'border' => false,
    //'border' => true,
    'hpadding' => 'auto',
    'vpadding' => '0',
    'fgcolor' => array(0,0,0),
    'bgcolor' => false, //array(255,255,255),
    //'text' => true,
    'text' => false,
    'font' => 'helvetica',
    'fontsize' => 8,
    'stretchtext' => 4
  );
  
  /*
            for($i=$_POST['__from__'];$i<=$_POST['__to__'];$i++)
            {
              $pdf->AddPage();
              $pdf->SetFont('helveticaB', '', 9);

                  $pdf->write1DBarcode($_POST['__prefix__'].$i, 'C128',5,5 , 40, 10, 0.4, $style, 'N');
                  $pdf->SetXY(5,15);
                  $pdf->Cell (20,5,$_POST['__prefix__'].$i,$border=0, $ln=1, $align='', $fill=false, 
                        $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');  
                  $pdf->SetXY(25,15);
                  $pdf->Cell (20,5,'',$border=1, $ln=1, $align='', $fill=false, 
                        $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');
            }
  */
    
        $type=array('T','B','F');
        for($i=$_POST['__from__'];$i<=$_POST['__to__'];$i++)
        {
                for($n=0;$n<=2;$n++)
                {
                        $pdf->AddPage();
                        $pdf->SetFont('helveticaB', '', 9);

                        $pdf->write1DBarcode($_POST['__prefix__'].$i, 'C128',5,5 , 40, 10, 0.4, $style, 'N');

                        if($n==0){$brd=1;}else{$brd=0;}
                        $pdf->SetXY(5,15);
                        $pdf->Cell (18,5,$_POST['__prefix__'].$i,$border=$brd, $ln=1, $align='', $fill=false, 
                                                $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');

                        $pdf->SetXY(23,15);
                        $pdf->Cell (2,5,$type[$n],$border=0, $ln=1, $align='', $fill=false, 
                                                $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');
                        $pdf->SetXY(25,15);
                        $pdf->Cell (20,5,'',$border=1, $ln=1, $align='', $fill=false, 
                        $link='', $stretch=1, $ignore_min_height=false, $calign='T', $valign='M');
                }
        }
}

?>
