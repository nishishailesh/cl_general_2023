<?php
require_once "dompdf/dompdf_config.inc.php";
  $content = '<head></head><h1 style="color:blue;">Hi</h1>
  <h2>Hi</h2><h3>hi</h3>';
  
  $dompdf = new DOMPDF();
  $dompdf->load_html($content);
  $dompdf->render();
  $dompdf->stream('example.pdf');

?>

