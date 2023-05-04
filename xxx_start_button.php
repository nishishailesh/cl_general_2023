<?php
require_once 'base/verify_login.php';
	////////User code below/////////////////////
require_once 'project_common.php';
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<div>';
main_menu($link); 
$user=get_user_info($link,$_SESSION['login']);
$auth=explode(',',$user['authorization']);

/*
echo '<style>
.monitor_grid
{';
	for ($i=1;$i<=200;$i++)
	{
		if($i%10==1 && ($i/10)%2==0){echo '\'';}	
		echo 'a'.str_pad($i,3,0,STR_PAD_LEFT).' ';
		if($i%10==0 && ($i/10)%2==0){echo '\' ';}
	}
echo ';}
</style>';
*/

?>
<style>
.monitor_grid
{
	display: grid;
	grid-template-areas: 'a001 a002 a003 a004 a005 a006 a007 a008 a009 a010 a011 a012 a013 a014 a015 a016 a017 a018 a019 a020 ' 'a021 a022 a023 a024 a025 a026 a027 a028 a029 a030 a031 a032 a033 a034 a035 a036 a037 a038 a039 a040 ' 'a041 a042 a043 a044 a045 a046 a047 a048 a049 a050 a051 a052 a053 a054 a055 a056 a057 a058 a059 a060 ' 'a061 a062 a063 a064 a065 a066 a067 a068 a069 a070 a071 a072 a073 a074 a075 a076 a077 a078 a079 a080 ' 'a081 a082 a083 a084 a085 a086 a087 a088 a089 a090 a091 a092 a093 a094 a095 a096 a097 a098 a099 a100 ' 'a101 a102 a103 a104 a105 a106 a107 a108 a109 a110 a111 a112 a113 a114 a115 a116 a117 a118 a119 a120 ' 'a121 a122 a123 a124 a125 a126 a127 a128 a129 a130 a131 a132 a133 a134 a135 a136 a137 a138 a139 a140 ' 'a141 a142 a143 a144 a145 a146 a147 a148 a149 a150 a151 a152 a153 a154 a155 a156 a157 a158 a159 a160 ' 'a161 a162 a163 a164 a165 a166 a167 a168 a169 a170 a171 a172 a173 a174 a175 a176 a177 a178 a179 a180 ' 'a181 a182 a183 a184 a185 a186 a187 a188 a189 a190 a191 a192 a193 a194 a195 a196 a197 a198 a199 a200 ' ;
}
</style>

<?php

$sql='select distinct priority from `sample_status` order by priority';
$result=run_query($link,$GLOBALS['database'],$sql);

echo '<div>';
$prev=-1;
while($ar=get_single_row($result))
{
	echo '<div class="d-inline-block align-top m-1">';
		$sql_b='select * from `sample_status` where priority=\''.$ar['priority'].'\'';
		$result_b=run_query($link,$GLOBALS['database'],$sql_b);
		while($ar_b=get_single_row($result_b))
		{	
		echo '<div class="d-block">';
		echo '<button class="btn  w-100 btn-primary btn-rounded-right p-1 m-1 btn-sm"
					style="	border:solid black 1px;padding:3px;  
							border-top-right-radius: 25px; 
							border-bottom-right-radius: 25px;">'.$ar_b['name'].'
				</button>';
		echo '</div>';
		}
	echo '</div>';

}
echo '</div>';

xxx_make_unique_id_option($link);

echo '<div id=monitor>Wait for update of recent sample status</div>';

//////////////user code ends////////////////
tail();
echo '<pre>start:post';print_r($_POST);echo '</pre>';
//echo '<pre>start:session';print_r($_SESSION);echo '</pre>';

///////////////////Functions////////////////

function xxx_make_unique_id_option($link)
{
	$sql="SELECT * from examination
	where 
	JSON_EXTRACT(edit_specification, '$.type')='id_single_sample'  or 
	JSON_EXTRACT(edit_specification, '$.type')='id_multi_sample'";
	
	$result=run_query($link,$GLOBALS['database'],$sql);
	
	echo '<div class="btn-group d-block">';					
	
	echo '<form method=post>';
	while($ar=get_single_row($result))
	{
		echo '<button 
					class="btn btn-outline-primary m-1 p-1 " 
					type=submit 
					name=unique_id
					value=\''.$ar['examination_id'].'\'> '.$ar['name'].'</button>';
	}
	echo '</div>';
	echo '<input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
	echo '</form>';

}

?>

<script>

jQuery(document).ready(
	function() 
	{
		console.log( "ready!" );
		start();
		show_offset=0;
	}
);


function start()
{
	setTimeout(callServer, 0);
}

function callServer()
{
	//console.log( new Date() );
	//alert(new Date())
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (this.readyState == 4 && this.status == 200) 
		{
			document.getElementById('monitor').innerHTML = xhttp.responseText;
		}
	};
	post='unique_id=<?php echo $_POST["unique_id"];?>&session_name=<?php echo $_POST["session_name"];?>&login=<?php echo $_SESSION["login"];?>&password=<?php echo $_SESSION["password"];?>&show_offset='+show_offset;
	xhttp.open('POST', 'xxx_monitor_button.php', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(post);	
	setTimeout(callServer, 10000);
}

function manage_offset(math_sign)
{
	if(math_sign=='plus')
	{
		show_offset=show_offset+100;	
	}
	if(math_sign=='minus')
	{
		show_offset=show_offset-100;	
	}
	if(math_sign=='zero')
	{
		show_offset=0;	
	}	
	
	document.getElementById('current_offset').innerHTML=show_offset;
}
</script>
