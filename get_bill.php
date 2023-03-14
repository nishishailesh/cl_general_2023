<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  
		  
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

echo '<div class=print_hide>';
main_menu($link);
echo '</div>';

//$request_id=isset($_POST['request_id'])?$_POST['request_id']:35;

$name=get_one_ex_result($link,$_POST['sample_id'],$GLOBALS['patient_name']);
$location=get_one_ex_result($link,$_POST['sample_id'],$GLOBALS['OPD/Ward']);
$mrd_here=get_one_ex_result($link,$_POST['sample_id'],$GLOBALS['mrd']);


$request_id=get_one_ex_result($link,$_POST['sample_id'],$GLOBALS['request_id_examination_id']);
if(strlen($request_id)>0 )
{
	$all_sample=get_sample_id_for_request_id($link,$request_id);
	//print_r($all_sample);
	
    $all_sample_csv=implode(',',$all_sample);
	//echo $request_id.'sss';
	$all_ex=get_request_id_examinations($link,$request_id);
	//echo '<pre>';print_r($all_ex);echo '</pre>';
}
else
{
	$request_id='';
	$all_sample_csv=$_POST['sample_id'];
	$all_ex=get_sample_id_examinations($link,$_POST['sample_id']);
}



$unique_ex=array_unique($all_ex);
//echo '<pre>';print_r($unique_ex);echo '</pre>';

$requested_profile=classify_examinations_for_billing($link,$unique_ex);

//echo '<pre>';print_r($requested_profile);echo '</pre>';

$final=remove_sub_profile($link,$requested_profile);
//echo '<pre>';print_r($final);echo '</pre>';
//echo '<h3>Request ID:'.$request_id.'</h3>';
echo '	<table class="table table-striped table-bordered table-sm">
			<tr><th>Request_ID: '.$request_id.'</th><th>Sample_Ids: '.$all_sample_csv.'</th></tr>
			<tr><th>Name: '.$name.'</th><th>ID:'.$mrd_here.'</th></tr>
			<tr><th>Address</th><th>'.$location.'</th></tr>
		</table>';

get_bill($link,$final);

////////////////////////////////////////////////////////////======
function remove_sub_profile($link,$profile_list)
{
	//for each profile find if any one is fully occupied
	$ret=array();

	$selected_request=array();

	foreach ($profile_list as $selected_profile_id)
	{
		$sql='select * from available_request where id=\''.$selected_profile_id.'\'';
		$result=run_query($link,$GLOBALS['database'],$sql);
		$ar=get_single_row($result);
		$ex_array=explode(',',$ar['examination_ids']);
		$selected_request[$ar['id']]=$ex_array;
	}
	
	$ret=$selected_request;
	$selected_request_ret=$selected_request;
	foreach($selected_request_ret as $kr=>$sr)
	{
			foreach($selected_request as $k=>$s)
			{
				if(array_intersect($sr,$s)==$sr && $sr!=$s)
				{
					unset($ret[$kr]);
				}
			}
	}

	return $ret;
}
                           
function get_sample_id_for_request_id($link,$request_id)
{
	$sql='select sample_id from result where examination_id=\''.$GLOBALS['request_id_examination_id'].'\' and result=\''.$request_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$sa=array();
	while($ar=get_single_row($result))
	{
		$sa[]=$ar['sample_id'];
	}
	return $sa;
}


function classify_examinations_for_billing($link,$ex_array)
{
	//for each profile find if any one is fully occupied
	$sql='select * from available_request';
	$result=run_query($link,$GLOBALS['database'],$sql);

	$selected_request=array();

	while($ar=get_single_row($result))
	{
		if(is_full_profile($ex_array,$ar))
		{
			$selected_request[]=$ar['id'];
		}
	}
	return $selected_request;
}


function is_full_profile($ex_array,$ar)
{
	//echo $ar['examination_ids'];
	$profile_ex=explode(',',$ar['examination_ids']);
	//print_r($profile_ex);
	foreach($profile_ex as $ex_id)
	{
		if(!in_array($ex_id,$ex_array))
		{
			return false;
		}
	}
	return true;
}

function get_bill($link,$r)
{
	echo '<table class="table table-sm table-striped table-bordered">';
	echo '<tr><th>Profile/Test</th><th>Price</th></tr>';
	$total=0;
	foreach ($r as $k=>$v)
	{
		$sql='select * from available_request where id=\''.$k.'\'';
		$result=run_query($link,$GLOBALS['database'],$sql);
		$ar=get_single_row($result);
		//echo '<pre>';print_r($ar);echo '</pre>';
		echo '<tr><td>'.$ar['name'].'('.$ar['id'].')</td><td>'.$ar['price'].'</td></tr>';
		$total=$total+$ar['price'];
	}
	echo '<tr><th>Total</th><th>'.$total.'</th></tr>';
	echo '</table>';
}
//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function get_request_id_examinations($link,$request_id)
{
	$sa=get_sample_id_for_request_id($link,$request_id);
	$all_ex=array();
	foreach($sa as $sid)
	{
		$sql='select examination_id from result where sample_id=\''.$sid.'\'';
		$result=run_query($link,$GLOBALS['database'],$sql);
		while($requested_ex=get_single_row($result))
		{
			$all_ex[]=$requested_ex['examination_id'];
		}
	}
	return $all_ex;
}


function get_sample_id_examinations($link,$sample_id)
{
	$all_ex=array();
	$sql='select examination_id from result where sample_id=\''.$sample_id.'\'';
	$result=run_query($link,$GLOBALS['database'],$sql);
	while($requested_ex=get_single_row($result))
	{
		$all_ex[]=$requested_ex['examination_id'];
	}
	return $all_ex;
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
