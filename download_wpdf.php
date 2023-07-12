<?php

	/*
		pass command as POST
		get password from SESSION?(Safe)  or command?(Not safe)

	*/
	
	//wkhtmltopdf "127.0.0.1/cl_general/xxx_wprint_single.php?login=1&password=123" -
	$command="wkhtmltopdf --margin-bottom 20  --images --footer-right 'Page [page] of [topage]' '127.0.0.1/cl_general/xxx_wprint_single.php?login=1&password=123' -";
	header("Content-Type: application/octet-stream");
	header("Content-Disposition: attachment; filename=report.pdf");
	//header("Content-Length: 11111");
	passthru($command,$err);
	exit();
?>
