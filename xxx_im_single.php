<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
echo '            <link rel="stylesheet" href="project_common.css">
				<script src="project_common.js"></script>';  
                  
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
main_menu($link);

$xmpp=get_one_ex_result($link,$_POST['sample_id'],get_config_value($link,'examination_id_for_xmpp'));


$ha=get_header_for_xmpp($link,$_POST['sample_id']);
//print_r($ha);

if(strlen($xmpp)==0)
{
  echo 'xmpp address not available';
}
else
{
	//$message=$ha.PHP_EOL.make_link_return($link,$_POST['sample_id']);
	$message=$ha.PHP_EOL;
	$xmpp_sql='insert into im_message (send_to,message,message_status,recording_time,recorded_by) 
			values
			(
				\''.$xmpp.'\',
				\''.$message.'\',
				0,
				now(),
				\''.$_SESSION['login'].'\'
			)';
		
	//echo $xmpp_sql;

	if(run_query($link,$GLOBALS['database'],$xmpp_sql))
	{
	  echo 'xmpp message sent to main server. It may reach destination after 5-30 minutes, depending on main server configuration<br>';
	}
	else
	{
	  echo 'xmpp message can not be sent to main server.';
	}
}

include 'viewww_single.php';
//////////////user code ends////////////////
tail();

function get_header_for_xmpp($link,$sample_id)
{
	$header_ex=array();
	
	$header_html=get_config_value($link,'report_header');
	$dom = new DOMDocument();
	$dom->preserveWhiteSpace = false;
	$dom->loadHTML($header_html);

	$td = $dom->getElementsByTagName ("td");
	$txt='';
	foreach ($td as $node)
	{
		//echo 'Name='.$node->nodeName.' Value='.$node->nodeValue.' Path='.$node->getNodePath().'<br>';
		$ex=explode('|',$node->nodeValue);
		if($node->nodeValue=='sample_id'){$txt=$txt.'sample_id:';}
		else if($node->nodeValue=='sample_id_value'){$txt=$txt.$sample_id.PHP_EOL;}
		else if($node->nodeValue=='report_qr_code')
		{
			$txt=$txt.make_link_return($link,$sample_id).PHP_EOL;
		}
		else if(is_numeric($ex[0]))
		{
			$header_ex[]=$ex[0];
			if($ex[1]=='n')
			{
				$examination_details=get_one_examination_details($link,$ex[0]);
				$txt=$txt.$examination_details['name'].":";
			}
			else if($ex[1]=='r')
			{
				$examination_details=get_one_examination_details($link,$ex[0]);
				$edit_specification=json_decode($examination_details['edit_specification'],true);
				$type=isset($edit_specification['type'])?$edit_specification['type']:'';

				if($type=='config_value_blob')
				{
				}
				else if ($type=='blob')
				{
				}
				else
				{
					$sql='select * from result where sample_id=\''.$sample_id.'\' and examination_id=\''.$ex[0].'\'';
					$result=run_query($link,$GLOBALS['database'],$sql);
					//if(get_row_count($result)!=1){$node->nodeValue='';continue;}
					$ar=get_single_row($result);
					
					if($examination_details['append_user']==1)
					{
						$user_info=get_user_info($link,$ar['recorded_by']);
						$append_info=' ,'.$user_info['name'].'('.$user_info[$GLOBALS['user_id']].')';
					}
					else
					{
						$append_info='';
					}
										
					$txt=$txt.(isset($ar['result'])?$ar['result']:'').$append_info.PHP_EOL;
				}
			}
		}
		
	}

	//echo $dom->saveHTML();
	//exit();
	return $txt;

}


?>
