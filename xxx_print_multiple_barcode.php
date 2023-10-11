<?php
$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<pre>';print_r($_POST);echo '</pre>';
$received=unserialize(base64_decode($_POST['label_list']));
//echo '<pre>';print_r($received);echo '</pre>';

//create_multi_label_button($link,$received);

//exit(0);	//echo will cause problem in pdf

$pdf=get_pdf_link_for_barcode();

foreach($received as $one_label)
{
	foreach($one_label as $sample)
	{
		for($i=0;$i<$sample[2];$i++)
		{
			xxx_prepare_sample_barcode($link,$sample[1],$sample[0],$pdf);
		}
	}
}

print_pdf($pdf,'barcode.pdf');

/*
Array
(
    [9] => Array
        (
            [1114] => Array
                (
                    [0] => 9
                    [1] => 1114
                    [2] => 1
                )

            [1115] => Array
                (
                    [0] => 9
                    [1] => 1115
                    [2] => 1
                )

        )

    [10] => Array
        (
            [1114] => Array
                (
                    [0] => 10
                    [1] => 1114
                    [2] => 1
                )

            [1115] => Array
                (
                    [0] => 10
                    [1] => 1115
                    [2] => 1
                )

        )

)


*/

?>
