<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '      <link rel="stylesheet" href="project_common.css">
      <script src="project_common.js"></script>
      <script src="bootstrap/chart.min.js"></script>
      <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
';  
      
////////User code below/////////////////////
//echo '<pre>';print_r($_POST);echo '</pre>';



$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

if($_POST['action']=='xbarb_details')
{
	xbarb_details($link,$_POST['sample_id'],$_POST['examination_id'],$_POST['uniq']);
}

function xbarb_details($link,$sample_id,$examination_id, $uniq)
{
	$sql='select * from primary_result where sample_id< '.$sample_id.' and 
			substring_index(uniq,"|",-1)=\''.explode('|',$uniq)[0].'\' and 
			examination_id= '.$examination_id.' and
			result REGEXP "^-?[0-9]+\\.[0-9]+$" 
			order by sample_id desc 
			limit 40';

	view_sql_result_as_table($link,$sql,$show_hide='no');

}

main_menu($link);

$limit=isset($_POST['row_limit'])?$_POST['row_limit']:get_config_value($link,'qc_result_limit');


$qc_sql="select * from examination  where sample_requirement!='None' order by request_route,name";

echo '<a  data-toggle="collapse" href="#get_data" aria-expanded="false" class="m-2 p-2">Show/Hide Search Window</a>';
echo '<div id="get_data" class=" p-3 bg-light border border-dark collapse">';
  echo '<div class="two_column_one_by_two show" >';
        echo '<div>';

            xxx_get_examination_data_for_qc($link,$qc_sql);

            echo '<div>
                <span class="badge badge-primary"  data-toggle="collapse" data-target="#status-window">Selected Examinations</span>';
                echo '  <div id="status-window" 
                      class="border border-success">
                    </div>
                <span class="badge badge-primary"  data-toggle="collapse" data-target="#select-window">Select Examinations</span>';
                echo '  <div id="select-window" class="border border-success">
                      <input type=text id=my_search_text  onchange="my_search_test()">
                      <button type=button id=my_search onclick="my_search_test()">search</button>
                      <div id=my_search_result></div>
                    </div>            
            </div>';
        echo '</div>';
    
        echo '<div>';
            get_qc_search_conditions($link,'sample_id',array(),array('sample_id'),$limit);
        echo '</div>';
  echo '</div>';
echo '</div>';

if($_POST['action']=='find_qc_data')
{
  echo '<a  data-toggle="collapse" href="#lj_table" class="m-2 p-2" aria-expanded="false" >Show/Hide Results</a>';
      echo '<div id="lj_table" class="show p-3 bg-light border border-dark">';
        $data=prepare_qc_data_from_search_condition($link,$_POST,$limit);
      echo '</div>';
}


//////////////user code ends////////////////
tail();


//////////////Functions///////////////////////

function get_ref_data($ref_data,$sample_id,$uniq)
{
	foreach( $ref_data as $i)
	{
		if(	$i['from_sample_id']<=$sample_id && 
			$sample_id<=$i['to_sample_id'] &&
			$i['algorithm']==$uniq )
		{
			return $i;
		}
	}
	return false;
}
function prepare_qc_data_from_search_condition($link,$post,$limit=400)
{
	$ref_sql='select * from xbarb_xxx_lab_reference_value';
	$ref_result=run_query($link,$GLOBALS['database'],$ref_sql);
	$ref_data=[];
	while($ref_ar=get_single_row($ref_result))
	{
		$ref_data[]=$ref_ar;
	}
	//print_r($ref_data);
	
	
  $ex_list_csv=$post['selected_examination_list'];
  //echo 'selected examinations:'.$ex_list_csv.'<br>';
  
  /////////////make selection of sample id/////////////////////
  $sql='';
  $from=$post['__from__sample_id'];
  $to=$post['__to__sample_id'];
  $sql=$sql . 'select * from xbarb_primary_result where sample_id between \''.$from.'\' and  \''.$to.'\' and examination_id in ('.$ex_list_csv.')';
  //echo "SQL1:".$sql.'<br>';
 
  /////////////add ordering//////////////////////////
  
    $sql=$sql.' order by uniq,sample_id desc limit '.$limit;
  
  //echo $sql;
  
  //view_sql_result_as_table($link,$sql,$show_hide='no');
  //return 0;
  
  $result=run_query($link,$GLOBALS['database'],$sql);
  
  echo '<table id="main_table" class="table table-striped table-sm m-3 table-responsive">';
  $first='yes';
  while($ar=get_single_row($result))
  {
    //$q=display_one_qc($link,$ar,$first);
    $r=get_ref_data($ref_data,$ar['sample_id'],$ar['uniq']);
	//echo('<hr>');
	//print_r($ar);
	//print_r($r);
	display_one_qc($ar,$r,$first);
	$first='no';
  }
  echo '</table>';
  //echo 'xyz';
}

function format_one_lj_point($q)
{
  $bar_color=["green","lightgreen","orange","red"];
  echo '<td style="border-right-style: dotted;padding:0px;border-left-style: dotted;padding:0px;text-align:right">';
  if(is_numeric($q['sdi']))
  {
    if($q['sdi']<0)
    {
      $id=$q['sample_id'].$q['examination_id'].$q['uniq'];
      $position=160-min(-$q['sdi']*40,160);
      echo '<canvas id="'.$id.'" 
            height="30" 
            width="160" 
            ></canvas>';
      echo '<script>
          can=document.getElementById("'.$id.'");
          ctx=can.getContext("2d");
          ctx.font = "15px Arial";
          ctx.strokeStyle = "'.$bar_color[ min(floor(-$q['sdi']),3) ].'";
          ctx.strokeText("X", '.$position.', 20);

          ctx.strokeStyle = "red";
          ctx.strokeText(".", 40 , 5);
          ctx.strokeStyle = "orange";
          ctx.strokeText(".", 80 , 5);
          ctx.strokeStyle = "lightgreen";
          ctx.strokeText(".", 120 , 5);
        </script>';

    }
    else
    {
      $id=$q['sample_id'].$q['examination_id'].$q['uniq'].'blank';
      echo '<canvas id="'.$id.'" 
      height="30" 
      width="160" 
      ></canvas>';
      
      echo '<script>
          can=document.getElementById("'.$id.'");
          ctx=can.getContext("2d");
        
          ctx.strokeStyle = "red";
          ctx.strokeText(".", 40 , 5);
          ctx.strokeStyle = "orange";
          ctx.strokeText(".", 80 , 5);
          ctx.strokeStyle = "lightgreen";
          ctx.strokeText(".", 120 , 5);
                  </script>';
    }
  }
  echo '</td>';
  
  echo '<td style="padding:0px;border-right-style: dotted;padding:0px;">';
  if(is_numeric($q['sdi']))
  {
    if($q['sdi']>=0)
    {   
      $id=$q['sample_id'].$q['examination_id'].$q['uniq'];
      $position=min( ($q['sdi']*40),150 );
      echo '<canvas id="'.$id.'" 
      height="30" 
      width="160" 
      ></canvas>';
      
      echo '<script>
          can=document.getElementById("'.$id.'");
          ctx=can.getContext("2d");
          ctx.font = "15px Arial";
          
          ctx.strokeStyle = "'.$bar_color[ min(floor($q['sdi']),3) ].'";
          ctx.strokeText("X", '.$position.', 20);
          
          ctx.strokeStyle = "lightgreen";
          ctx.strokeText(".", 40 , 5);
          ctx.strokeStyle = "orange";
          ctx.strokeText(".", 80 , 5);
          ctx.strokeStyle = "red";
          ctx.strokeText(".", 120 , 5);
                  </script>';
    }
    
    else
    {
      $id=$q['sample_id'].$q['examination_id'].$q['uniq'].'blank';
      echo '<canvas id="'.$id.'" 
      height="30" 
      width="160" 
      ></canvas>';
      
      echo '<script>
          can=document.getElementById("'.$id.'");
          ctx=can.getContext("2d");
        
          ctx.strokeStyle = "lightgreen";
          ctx.strokeText(".", 40 , 5);
          ctx.strokeStyle = "orange";
          ctx.strokeText(".", 80 , 5);
          ctx.strokeStyle = "red";
          ctx.strokeText(".", 120 , 5);
                  </script>';
    }
  }
  echo '</td>';   
  
}

function display_one_qc($ar,$r,$first)
{
  $mean=$r['mean'];
  $sd=$r['sd'];
  $sdi=round(($ar['result']-$r['mean'])/$r['sd'],2);

  $q['sample_id']=$ar['sample_id'];
  $q['sdi']=$sdi;
  $q['examination_id']=$ar['examination_id'];
  $q['uniq']=$ar['uniq'];
  $q['result']=round($ar['result'],2);
  $q['result_extra']=$ar['extra'];
  $q['mean']=$mean;
  $q['sd']=$sd;
  $q['other_ref_data']=$r['other_data'];
  $q['ref_remark']=$r['remark'];
  ////////////////
  if($first=='yes')
  {

    $lj_graphics= '    <th style="border-right-style: dotted;padding:0px;border-left-style: dotted;padding:0px;text-align:right"><canvas id="lj_header_negative" height="30" width="160" ></canvas><script>  can=document.getElementById("lj_header_negative");            ctx=can.getContext("2d");            ctx.font = "15px Arial";            ctx.strokeText("-3s", 40,20);            ctx.strokeText("-2s", 80,20);            ctx.strokeText("-1s", 120,20);            ctx.strokeStyle = "red";            ctx.strokeText(".", 40 , 5);            ctx.strokeStyle = "orange";            ctx.strokeText(".", 80 , 5);            ctx.strokeStyle = "lightgreen";            ctx.strokeText(".", 120 , 5);          </script>    </th>    <th style="border-right-style: dotted;padding:0px;text-align:left"><canvas id="lj_header_positive"               height="30"               width="160"               ></canvas>        <script>            can=document.getElementById("lj_header_positive");            ctx=can.getContext("2d");            ctx.font = "15px Arial";            ctx.strokeText("1s", 25,20);            ctx.strokeText("2s", 65,20);            ctx.strokeText("3s", 105,20);            ctx.strokeStyle = "lightgreen";            ctx.strokeText(".", 40 , 5);            ctx.strokeStyle = "orange";            ctx.strokeText(".", 80 , 5);            ctx.strokeStyle = "red";            ctx.strokeText(".", 120 , 5);          </script>  </th>';      
    
    echo '<tr>
    <th style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;">sample_id</th>';
    //echo '<td>'.$lj_graphics.'</td>';
    foreach($q as $k=>$v)
    {
      if(!in_array($k,['sample_id']))
      {
        echo '<th style="border-right-style: dotted;border-right-color: lightgray;">'.$k.'</th>';
      }
      if(in_array($k,['sdi']))
      {
        echo $lj_graphics;
      }
    }
    echo '</tr>';
  }
  
  ///////////////
  echo '<tr>';
    
  foreach($q as $k=>$v)
  {
    if(in_array($k,['sdi']))
    {
      echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;" >'.$v.'</td>';
      format_one_lj_point($q);
    }
    else
    {
      if($k=='sample_id')
      {        
        $arr=htmlentities($q['result_extra']);
        //echo '<h4>'.$arr.'</h4>';

        echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;">';
          echo '<form method=post action="xbarb_details.php" target=_blank >';
            echo '<input  type=hidden name=session_name value=\''.$_POST['session_name'].'\'>';
            echo '<button             name=detail       type=submit >'.$q['sample_id'].'</button>';
            echo '<input  type=hidden name=data         value=\''.htmlentities($q['result_extra']).'\'>';
          echo '</form>';
        echo '</td>';
      }
      else if($k=='result_extra')
      {
          echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;" title=" '.htmlentities($v).' " >'.substr($v,0,10).'</td>';      }
      else
      {
        echo '<td style="white-space: nowrap;border-right-style: dotted;border-right-color: lightgray;">'.$v.'</td>';
      }
    }
  }
  
  echo '</tr>';
  $first='no';
}



function xbarb_xxx_sample_id_button($sample_id,$examination_id,$uniq,$target='',$label='Edit')
{
  echo '<div class="d-inline-block" ><form method=post '.$target.' class=print_hide>
  <button class="btn btn-outline-primary btn-sm" name=sample_id value=\''.$sample_id.'\' >'.$label.'</button>
  <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
  <input type=hidden name=examination_id value=\''.$examination_id.'\'>
  <input type=hidden name=uniq value=\''.$uniq.'\'>
  <input type=hidden name=action value=xbarb_details>
  </form></div>';
}



function xxx_get_lab_reference_value($link,$sample_id,$examination_id)
{
  $analysis_time=get_any_examination_result($link,$sample_id,get_config_value($link,'qc_analysis_time_examination_id'));
  $qc_equipment=get_any_examination_result($link,$sample_id,get_config_value($link,'qc_equipment_examination_id'));
  $qc_lot=get_any_examination_result($link,$sample_id,get_config_value($link,'qc_lot_examination_id'));

//              str_to_date(concat(start_date," ",start_time),\'%Y-%m-%d %H:%i:%s\') 


  $sql='select * from xxx_lab_reference_value where 
      qc_lot=\''.$qc_lot.'\'
        and
      examination_id=\''.$examination_id.'\'
        and
        start_datetime < str_to_date(\''.$analysis_time.'\',\'%Y-%m-%dT%H:%i:%s\')
                and
        end_datetime > str_to_date(\''.$analysis_time.'\',\'%Y-%m-%dT%H:%i:%s\')
        and
      equipment=\''.$qc_equipment.'\'
      ';

  //echo $sql.'<br>';
  $result=run_query($link,$GLOBALS['database'],$sql);
  if(rows_affected($link)!=1)
  {
    //echo 'exact one raw for lab_reference_value is required. got (('.rows_affected($link).'))<br>';
    return false;
  }
  $ar=get_single_row($result);
  return $ar;
  //database user is responsible to see that only one such row is avaialble
}

function xxx_get_examination_data_for_qc($link,$sql)
{
  echo '<button class="btn btn-success " data-status=off type=button id=ex_all_expand onclick="expand_all(this)"><h4>&darr;&darr;&darr;</h4></button>';
  //echo '<button class="btn btn-danger "type=button id=ex_all_collapse onclick="collapse_all()">Collapse All</button>';
  $tree=xxx_make_examination_tree($link,$sql,'request_route');
  //tree_to_div($tree);
  echo '<ul id="get_examination_data" style="list-style-type: none">';
  xxx_tree_to_panel($link,$tree,'',' collapse ');
  echo '</ul>';
}



function get_qc_search_conditions($link,$examination_id,$search_list_of_examination_id,$range_search_list_of_examination_id,$limit)
{
  if($examination_id=='sample_id')
  {
    $ex_name='sample_id';
  }
  else
  {
    $examination_details=get_one_examination_details($link,$examination_id);
    $ex_name=$examination_details['name'];
  } 
    
  echo '<form method=post>';
  
  foreach($search_list_of_examination_id as $examination_id)
  {
    get_one_field_for_search($link,$examination_id);
  }

  $qc_id_examination_id=get_config_value($link,'qc_id_examination_id');
  foreach($range_search_list_of_examination_id as $examination_id)
  {
    if($examination_id=='sample_id')
    {
      get_sample_id_for_range_search($link);
    }
    else
    {
      
      if($qc_id_examination_id==$examination_id)
      {
        $max_qc_id=find_max_qc_id($link);
        get_one_field_for_range_search($link,$examination_id,$max_qc_id-20,$max_qc_id);
      }
      else
      {
        get_one_field_for_range_search($link,$examination_id);
      }
    }
  }

  echo '<fieldset ><legend>Sort</legend>';
  echo '<div><label for="sample_id_sort" >sample_id sort</lable><input type="radio" checked="checked" id="sample_id_sort" name="sort_order" value="sample_id"></div>';
  echo '<div><label for=examination_id_sort >examination_id sort</lable><input type="radio" name="sort_order" id=examination_id_sort value="examination_id"></div>';
  echo '</fieldset>';
  echo '<label for="row_limit" >limit</lable><input id=row_limit value=\''.$limit.'\' type=number name=row_limit>';

  echo '<button type=submit class="btn btn-primary form-control m-1" name=action value=find_qc_data>Search</button>';

  
  echo '<input type=text readonly class="w-100" name=selected_examination_list type=text id=selected_examination_list>';

  echo '<input type=hidden name=session_name value=\''.session_name().'\'>';
  echo '</form>';

}

function xxx_edit_primary_result_extra_button($sample_id,$examination_id,$uniq,$extra,$target=' target=_blank ',$label='extra')
{
  echo '<div class="d-inline-block" ><form method=post '.$target.' action=xxx_edit_primary_result_extra.php class=print_hide>
  <button class="btn btn-outline-primary btn-sm" onclick="return confirm(\'Current Extra Remark is : '.$extra.' \n presss ok to edit.\');" name=sample_id value=\''.$sample_id.'\' >'.$label.'</button>
  <input type=hidden name=examination_id value=\''.$examination_id.'\' >
  <input type=hidden name=uniq value=\''.$uniq.'\' >
  <input  type=hidden name=extra value=\''.$extra.'\' >
  <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
  <input type=hidden name=action value=edit_qc_extra>
  </form></div>';
}


?>


<script>
  
function my_search_test()
{
  search_text=document.getElementById("my_search_text").value;
  //alert("search="+search_text)
  if(search_text==="")
  {
    return false;
  }
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
    if (this.readyState == 4 && this.status == 200) 
    {
      document.getElementById('my_search_result').innerHTML = xhttp.responseText;
    }
  };

  post1='search_text='+search_text
  post2='session_name=<?php echo $_POST["session_name"];?>'
  post3='login=<?php echo $_SESSION["login"];?>'
  post4='password=<?php echo $_SESSION["password"];?>'
  
  post=post1+'&'+post2+'&'+post3+'&'+post4
  xhttp.open('POST', 'xxx_search_examination.php', true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send(post); 
}



function jsonToTable(jsonData) {
  // 1. Parse the JSON string if it isn't already an object/array
  const data = typeof jsonData === 'string' ? JSON.parse(jsonData) : jsonData;

  if (!data || data.length === 0) return '<p>No data available</p>';

  // 2. Extract column headers dynamically from the first object
  const columns = Object.keys(data[0]);

  // 3. Generate Table Headers
  const headerRow = columns
    .map(col => `<th>${col.charAt(0).toUpperCase() + col.slice(1)}</th>`)
    .join('');

  // 4. Generate Table Body Rows
  const bodyRows = data
    .map(row => {
      const cells = columns
        .map(col => `<td>${row[col] ?? ''}</td>`) // fallback to empty string if null/undefined
        .join('');
      return `<tr>${cells}</tr>`;
    })
    .join('');

  // 5. Assemble the complete HTML table
  return `
    <table>
      <thead>
        <tr>${headerRow}</tr>
      </thead>
      <tbody>
        ${bodyRows}
      </tbody>
    </table>
  `;
}



function openNewWindow(data) {
  let newWin = window.open("", "_blank");
  x='['+data.slice(1,-1)+']'
  y=JSON.parse(x);
  z=jsonToTable(y);
  document.body.innerHTML=z;
  newWin.document.write(z);
}

</script>
