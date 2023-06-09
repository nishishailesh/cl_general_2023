<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

main_menu($link);

$requested_examinations=isset($_POST['requested_examinations'])?$_POST['requested_examinations']:'';

$tok=explode("|",$_POST['action']);

//if($tok[0]=='request')
//{
	get_request($link,$requested_examinations);
//}

if($_POST['action']=='insert')
{
	$request_id=insert_request($link);
	view_request($link,$sample_id);
}
                           
function get_request($link,$requested_examinations)
{
	echo '<form method=post class="bg-light jumbotron">';
		echo '<h2 class="text-success">Request</h2>';
		echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
		//get_basic_request();
		get_available_request($link,$requested_examinations);
		echo '</div>';
		echo '<button class="btn btn-outline-primary btn-sm" name=action value=preview>Preview</button>';
		echo '<button class="btn btn-outline-primary btn-sm" name=action value=insert>Save</button>';
		echo '<input type=text readonly name=requested_examinations id=requested_examinations value=\''.$requested_examinations.'\'>';
		
		display_details($link,$requested_examinations);

	echo '</form>';			
}

//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_available_request($link,$requested_examinations)
{
	$sql='select * from available_request';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$ar_requested=explode(',',$requested_examinations);

		
	echo '<div>';
	while($ar=get_single_row($result))
	{
		//if(in_array($ar['id'],$ar_requested))
		//{
		//	echo 'requested='.$ar['id'].'<br>';
		//}
		my_on_off_request($ar['name'],$ar['id'],in_array($ar['id'],$ar_requested));
	}
	echo '</div>';
}

function my_on_off_request($label,$id,$selected)
{
	if($selected==True)
	{
		$class="btn btn-sm btn-outline-primary bg-warning";
	}
	else
	{
		$class="btn btn-sm btn-outline-primary";
	}
	
	echo '<button 
			class="'.$class.'"
			type=button 
			onclick="select_request_js(this, \''.$id.'\',\'requested_examinations\')"
			>'.$label.'</button>';
}

function display_details($link,$request_csv)
{
	if(strlen($request_csv)==0){return;}
	$sql='select * from available_request where id in ('.$request_csv.')';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$price=0;
	echo '<table class="table table-striped table-bordered table-sm">';
	echo '<tr><td>id</td><td>name</td><td>examination_ids</td><td>price</td></tr>';

	while($ar=get_single_row($result))
	{
		//echo '<pre>';print_r($ar);echo '</pre>';
		echo '<tr><td>'.$ar['id'].'</td><td>'.$ar['name'].'</td><td>'.$ar['examination_ids'].'</td><td>'.$ar['price'].'</td></tr>';
		$price=$price+$ar['price'];
	}
	$discount=(isset($_POST['discount'])?$_POST['discount']:0);
	$received=(isset($_POST['received'])?$_POST['received']:0);
	
	echo '<tr><td></td><td></td><td>Total</td><td>'.$price.'</td></tr>';
	echo '<tr><td></td><td></td><td>Discount</td><td><input type=number id=discount name=discount  value='.$discount.'></td></tr>';
	echo '<tr><td></td><td></td><td>Received</td><td><input type=number name=received id=received   value='.$received.'></td></tr>';
	echo '<tr><td></td><td></td><td>Due</td><td><input type=number id=due name=due  readonly value='.($price-$discount-$received).'></td></tr>';
	
	
	echo '</table>';
}
?>

<script>
var selected_request=<?php $ex=explode(',',$requested_examinations); echo json_encode($ex); ?>

function select_request_js(me,ex_id,list_id)
{
	selected_request=selected_request.filter(n=>n)

	if(selected_request.indexOf(ex_id) !== -1)
	{
		selected_request.splice(selected_request.indexOf(ex_id),1)
		document.getElementById(list_id).value=selected_request
		me.classList.remove('bg-warning')
	}
	else
	{
		selected_request.push(ex_id);
		document.getElementById(list_id).value=selected_request
		me.classList.add('bg-warning')
	}
}

</script>
