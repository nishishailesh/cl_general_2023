<?php
session_name('sn_'.rand(1000000000,1999999999));
session_start();
require_once 'base/common.php';
require_once 'config.php';
require_once $GLOBALS['main_user_location'];
require_once 'project_common.php';

echo '		  	<link rel="stylesheet" href="project_common.css">
				<script src="project_common.js"></script>
				';

head($GLOBALS['application_name']);
echo '<div class="index_page">';

	echo '<div 
			style=	"
					grid-area: login;
					background-color:green;
					padding:5px;
					">';
		login('xxx_start_button.php');
	echo '</div>';

	echo '<div 
			style=	"
					grid-area: mmenu;
					background-color:lightgray;
					padding:5px;
					">';
					
		$tag_list=index_menu();
	echo '</div>';
	

	echo '<div 
			style=	"
					grid-area: sstatus;
					background-color:lightblue;
					padding:5px;
					">';
			display_info();
	echo '</div>';
	
echo '</div>';

tail();


function display_info()
{
	$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
	$sql='select
				accr_status as `NABL Accreditation` ,
				examination_id, name,
				sample_requirement,
				instruction_for_requester,
				display_help as `units/reference_range/method`,
				class_tag
			from examination 
			where 
				sample_requirement!=\'None\'
				and
				displayed_scope=\'yes\'
			order by 
				name,sample_requirement
	';
	$result=run_query($link,$GLOBALS['database'],$sql);
	display_sql_result_data_for_index($result,$show_hide='no');
}

function mget_dbid()
{
	$YY=strftime("%y");

echo '<form method=post action=print_single_no_login.php target=_blank class="jumbotron m-0 p-3 border border-primary">';
echo '<h3>Get Report without Login</h3>';
echo '<div class="text-center"><span class="bg-warning">Both <span class="badge badge-primary ">Sample_ID</span> and <span class="badge badge-primary ">MRD</span> must exactly match to retrive report</span></div>';

echo '<div class="basic_form">';
	echo '	<label class="my_label text-danger" for="sid">Sample ID</label>
			<input type=number size=13 id=sid name=sample_id class="form-control text-danger" required="required" \>
			<p class="help"><span class=text-danger>Must be</span> number</p>';
echo '</div>';
//get_basic();
get_basic_specific_no_restriction();    //MRD


echo '<button type=submit class="btn btn-primary form-control" name=action value=view_dbid>Get Report (No login Required)</button>';
echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
echo '</form>';
}


function display_sql_result_data_for_index($result,$show_hide='yes')
{
	if($show_hide=='yes')
	{
		echo '<button data-toggle="collapse" data-target="#sql_result" class="btn btn-dark">Show/Hide Result</button>';
		
		echo '<div id="sql_result" class="collapse show">';		
	}

		echo '<table border=1 class="table table-sm table-striped table-hover table-responsive">';
				
        $first_data='yes';

        while($array=get_single_row($result))
        {
			//echo '<pre>';
			//print_r($array);
                if($first_data=='yes')
                {
                        echo '<tr bgcolor=lightgreen>';
                        foreach($array as $key=>$value)
                        {
                                echo '<th>'.$key.'</th>';
                        }
                        echo '</tr>';
                        $first_data='no';
                }
                $class_tag=str_replace(","," ",$array['class_tag']);
                echo '<tr class=" ex-tr '.$array['sample_requirement'].' '.$class_tag.' ">';
                foreach($array as $key=>$value)
                {
                        echo '<td style="white-space: nowrap;">'.$value.'</td>';
                }
                echo '</tr>';

        }
        echo '</table>';

	if($show_hide=='yes')
	{
		echo '</div>';	
	}
	
}

function index_menu()
{
	$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
	$sql='select distinct class_tag from examination';
	$result=run_query($link,$GLOBALS['database'],$sql);
	$class_tag_array=[];
	while($ar=get_single_row($result))
	{
		$ex=explode(',',$ar['class_tag']);
		foreach ($ex as $tag)
		{
			if($tag!='')
			{
				$class_tag_array[$tag]=$tag;
			}
		}
	}
	//print_r($class_tag_array);
	echo '<table class="table help">';
	echo '<tr>';
	echo '<td>';
		echo '<div><img src="img/biogmcs.jpg" width="150" ></div>';
	echo '</td>';
	echo '<td>';
	echo '<h1>Department of Biochemistry, NCHS and GMCS</h1>';
	echo '<h2>Majura Gate, Surat</h2>';
	echo '</td>';
	echo '<td>';
	echo '<div><img src="img/biogmcs.jpg" width="150" ></div>';
	echo '</td>';

	echo '</tr>';
	echo '</table>';
	foreach($class_tag_array as $one_tag=>$v)
	{
		echo '<button style="background-color:lightpink" type=button id='.$one_tag.'>'.$one_tag.'</button>';
	}
	//echo '<button type=button id=Urine>Urine</button>';
	//echo '<button type=button id=CSF>CSF</button>';
	//echo '<button type=button id=APREF>AP Reference Required</button>';
	echo '<button type=button id=All style="background-color:lightgreen">All</button>';
	
	return json_encode($class_tag_array);
}

?>


<script>
	
	tag_list=<?php echo $tag_list; ?>;
	mtag_list=[]
	/*tag_list=<?php echo json_encode($class_tag_array);?>*/
	/*array.forEach(function(currentValue, index, arr), thisValue)*/
	$(document).ready
	(
		function()
		{
			for (tag in tag_list)
			{			
					mtag_list.push(tag_list[tag])
			}
			
			
			for (a_tag in mtag_list)
			{
					//alert("during creation of function: "+mtag_list[a_tag])
					$("#"+mtag_list[a_tag]).click(
											function()
											{
													//alert("during execution of function:"+$(this).attr('id'))
													//console.log(mtag_list[a_tag])
													$(".ex-tr").hide()
													$("."+$(this).attr('id')).show()
											}
									)
			}
			
			$("#All").click(
								function()
								{
										$(".ex-tr").show()
								}
							)
								
		}
	)

/*
	$(document).ready
	(
	
		function()
		{
			$("#Blood").click(
								function()
								{
										$(".ex-tr").hide()
										$("[class*=Blood]").show()
								}
							)
	)*/
	
</script>

