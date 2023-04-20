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
echo '<div id=response></div>';

if($_POST['action']=='set_barcode')
{
	get_parameters($link);
}


//elseif($_POST['action']=='view_dbid')
//{
	////echo_class_button($link,'Haemogram');
	//view_sample($link,$_POST['sample_id']);
//}

//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////
?>

<style>
/*50x25 mm*/

.label
{
	display:grid;
	grid-template-areas: 
		'a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 p0 p1 p2 p3 p4 p5 p6 p7 p8 p9'
		'b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 q0 q1 q2 q3 q4 q5 q6 q7 q8 q9'
		'c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 r0 r1 r2 r3 r4 r5 r6 r7 r8 r9'
		'd0 d1 d2 d3 d4 d5 d6 d7 d8 d9 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9'
		'e0 e1 e2 e3 e4 e5 e6 e7 e8 e9 t0 t1 t2 t3 t4 t5 t6 t7 t8 t9'
		'f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 u0 u1 u2 u3 u4 u5 u6 u7 u8 u9'
		'g0 g1 g2 g3 g4 g5 g6 g7 g8 g9 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9'
		'h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 w0 w1 w2 w3 w4 w5 w6 w7 w8 w9'
		'i0 i1 i2 i3 i4 i5 i6 i7 i8 i9 x0 x1 x2 x3 x4 x5 x6 x7 x8 x9'
		'j0 j1 j2 j3 j4 j5 j6 j7 j8 j9 y0 y1 y2 y3 y4 y5 y6 y7 y8 y9'
		;
}

.a0
{
  grid-area: a0;
}

</style>

<?php
function get_parameters()
{

$lable_defination=
array(
'sample_id'=>array("b","h",0.0, 0.0, 1.0, 0.5),
'sample_id'=>array("v","h",0.0, 0.5, 1.0 ,0.1),
'sample_id'=>array("v","v",1.3, 0.1, 0.1 ,0.5)
);


echo '<form method=post action=print_set_barcode.php target=_blank>';
$rows=array('a','b','c','d','e','f','g','h','i','j',);
$cols=array('1','2','3','4','5','6','7','8','9','0','1','2','3','4','5','6','7','8','9','0');

echo '<table class="table table-sm d-inline">';
foreach ($rows as $row)
{
	echo '<tr>';
	foreach ($cols as $col)
	{
		echo '<td><input type=text size=1 style="grid-area:\''.$row.$col.'\' " id=\''.$row.$col.'\'  name=\''.$row.$col.'\' placeholder=\''.$row.$col.'\'></td>';
	}
	echo '</tr>';
}
echo '</table>';

echo '<button type=submit class="btn btn-primary form-control" name=action value=print>Print</button>';
echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
echo '</form>';
}

//barcode or value, horizontal or vertical, startx,starty,width,height


?>
