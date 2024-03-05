<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
	////////User code below/////////////////////
		  
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';
		  	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
echo '<div id=response></div>';
main_menu($link);

$save_mode='no';

//if($_POST['action']=='consumable')
//{
	list_consumable($link);
//}

if(isset($_POST['save_id']))
{
	$pk_name='save_id';
	
	$not=array("session_name" => '',
			"action" => '',
			"id" => '',
			"recording_time" => '',
			"recorded_by" => ''
			);
    
	$array=array_diff_key($_POST,$not);
	$my_id=$array['save_id'];
	unset($array['save_id']);
	$array['id']=$my_id;
	$farray=$_FILES;
	xxx_update($link,'consumable_receipt','id',$array,$farray);
	$save_mode='yes';
}


if($_POST['action']=='save_insert')
{
	for($sr=$_POST['from^serial_number'];$sr<=$_POST['to^serial_number'];$sr++)
	{
		$temp_post=$_POST;
		unset($temp_post['from^serial_number']);
		unset($temp_post['to^serial_number']);
		$temp_post['serial_number']=$sr;		
		xxx_insert_direct_with_default($link,'consumable_receipt',$temp_post,$default=array());
	}
	$edit_id= isset($_POST['id'])?$_POST['id']:0;
	view_edit_consumable_receipt($link,$_POST['consumable_name'],$edit_id,$save_mode);	
}



if($_POST['action']=='view_edit' || $_POST['action']=='view_edit')
{
	$edit_id= isset($_POST['id'])?$_POST['id']:0;
	view_edit_consumable_receipt($link,$_POST['consumable_name'],$edit_id,$save_mode);
}

if($_POST['action']=='insert')
{
	xxx_add_direct_with_default($link,'consumable_receipt',$header='no',$default=array(),$readonly=array());
}


//////////////user code ends////////////////
tail();

echo '<pre>';print_r($_POST);echo '</pre>';

//////////////Functions///////////////////////

function list_consumable($link)
{
	echo '<form method=post><input type=hidden name=session_name value=\''.session_name().'\'>';
	
	echo '<div class="btn-group">';
			echo '<div class="border border-important p-1 m-1">';
				mk_select_from_sql($link,'select consumable_name from consumable_name','consumable_name','consumable_name','consumable_name','','',$blank='yes',$extra='');
				echo '<button class="btn btn-outline-primary m-0 p-0" type=submit name=action value=view_edit>View/Edit Consumable</button>';	
			echo '</div>';
			echo '<div class="border border-important p-1 m-1">';
				echo '<button class="btn btn-outline-primary m-0 p-0" type=submit name=action value=insert>Insert Consumable</button>';
			echo '</div>';
	echo '</div>';
	
	echo '</form>';
}


function print_lable($link,$pdf,$id)
{
	
	
	
}
/*
id	int(11) Auto Increment	
consumable_name	varchar(100) NULL	
lot_identifier	varchar(20) NULL	
serial_number	varchar(20) NULL	
unit_size	varchar(50) NULL	
manufacturer	varchar(50) NULL	
date_of_manufacture	date NULL	
date_of_expiry	date NULL	
date_of_receipt	date NULL	
condition_on_receipt	varchar(50) NULL	
date_of_starting_use	varchar(100) NULL	
date_of_ending_use	varchar(100) NULL	
remark	varchar(100) NULL	
recording_time	datetime NULL	
recorded_by	varchar(100) NULL	
*/


function xxx_add_direct_with_default($link,$tname,$header='no',$default=array(),$readonly=array())
{
    //print_r($readonly);
    
    $sql='show columns from `'.$tname.'` ';
    $result=run_query($link,$GLOBALS['database'],$sql);
        
    echo '<form method=post class="d-inline" enctype="multipart/form-data">';
    echo '<div class="two_column_one_by_two bg-light border border-success m-3 p-3">';
            while ( $ar=get_single_row($result))
            {
                //print_r($ar);
                //Array ( [Field] => id [Type] => int(11) [Null] => NO [Key] => PRI [Default] => [Extra] => auto_increment ) 
                $defval=isset($default[$ar['Field']])?$default[$ar['Field']]:'';
                $readonly_val=isset($readonly[ $ar['Field'] ])?'readonly':'';
                //echo '<h1>'.$readonly_val.'</h1>';
                if($ar['Field']=='id')
                {
                    echo '<div class="border">'.$ar['Field'].'</div>';
                    echo '<div class="border">';
                        echo 'auto';
                    echo '</div>';
                }
                
                elseif($ar['Field']=='serial_number')
                {
                    echo '<div class="border">'.$ar['Field'].'</div>';
                    echo '<div class="border btn-group">';
							echo '<input class="w-100" type=text  name=from^serial_number placeholder=from>';
							echo '<input class="w-100" type=text  name=to^serial_number placeholder=to>';
                    echo '</div>';
                }
                
                elseif(substr($ar['Type'],-4)=='blob')
                {
                    echo '<div class="border">'.$ar['Field'].'</div>';
                    echo '<div class="border">';
                        echo '<input type=file name=\''.$ar['Field'].'\' >';
                    echo '</div>';
                }
                elseif(in_array($ar['Field'],array('recording_time','recorded_by')))
                {
                    echo '<div class="border">'.$ar['Field'].'</div>';
                    echo '<div class="border">';
                        echo 'auto';
                    echo '</div>';
                }
                else
                {
                    echo '<div class="border">'.$ar['Field'].'</div>';
                    echo '<div class="border">';                
                        xxx_read_field($link,$tname,$ar['Field'],$defval,'no',$readonly_val);
                    echo '</div>';
                }
                
            }

            echo '</div>';

            echo 
                '<div class="d-block" >
                    <button type=submit class="btn btn-block btn-outline-success btn-sm m-0 p-0" name=action value=save_insert ><h5>Save</h5></button>
                    <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
                    <input type=hidden name=tname value=\''.$tname.'\'>
                </div>';
                 
    echo'</form>';

}


function xxx_insert_direct_with_default($link,$tname,$post,$default=array())
{
    //print_r($post);
    $sql1='insert into `'.$tname.'` ';
    $sql2='(';
    $sql3='values(';

    foreach($post as $key=>$value)
    {
        if(!in_array($key,array('action','tname','session_name','id','recording_time','recorded_by')))
        {
            $sql2=$sql2.'`'.$key.'`, ';
            if(strlen($value)==0)
            {
				$sql3=$sql3.' null , ';
			}
			else
			{
				$sql3=$sql3.'\''.(isset($default['key'])?$default['key']:$value).'\', ';
			}
        }
    }
    $sql2=$sql2.'`recording_time`,`recorded_by` ';
    $sql3=$sql3.'now(),\''.$_SESSION['login'].'\'';
    //echo $sql1.$sql2.')'.$sql3.')';
    $sql= $sql1.$sql2.')'.$sql3.')';
    //echo $sql;
    if($result=run_query($link,$GLOBALS['database'],$sql))
    {
        $id=last_autoincrement_insert($link);
        foreach($_FILES as $k=>$v)
        {
            if(!in_array($k,array('action','tname','session_name','id','recording_time','recorded_by')))
            {
                xxx_update_one_field_blob($link,$tname,$k,$k.'_name',$id);
            }
        } 
        return $id;       //echo 'inserted a record with id: '.last_autoincrement_insert($link);
    }
    else
    {
        echo 'Record not inserted';
        return false;
    }
}

function insert_consumable($link,$consumable_name)
{
	echo '<h3>New Consumable</h3>';
	echo '<form method=post><input type=hidden name=session_name value=\''.session_name().'\'>';
    echo '<input type=hidden name=action value=save_insert>';
    echo '<input type=hidden name=consumable_name value=\''.$consumable_name.'\'>';

	$sql='select * from consumable_receipt where consumable_name=\''.$consumable_name.'\'';
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		 return false;
	}
	
		echo '<table border=1 class="table table-sm table-striped table-hover table-responsive">';
		//echo '<table border=1 class="table table-sm table-striped table-hover ">';
				
        $first_data='yes';

        while($array=get_single_row($result))
        {
				$id=$array['id'];
				
                if($first_data=='yes')
                {
                        echo '<tr bgcolor=lightgreen>';
                        foreach($array as $key=>$value)
                        {
                                echo '<th >'.$key.'</th>';
                                //echo '<th style="writing-mode: sideways-lr;">'.$key.'</th>';
                                //echo '<th >'.str_replace('_','<br>',$key).'</th>';	//style="writing-mode: sideways-lr;"
                        }
                        echo '</tr>';
                        $first_data='no';
                }
                
                
                echo '<tr>';
                
                if($array['id']==$edit_id && $save_mode=='no')
				{
					echo '<td colspan=20>';
					echo '<table>';
					
							foreach($array as $key=>$value)
							{
								if($key=='id')
								{
									echo '<tr>
												<td>'.$key.'</td>
												<td>';
														echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
														echo '<input type=hidden name=save_id value=\''.$value.'\'>';
												echo '</td>
									</tr>';							
								}
								else
								{
									echo '<tr><td>'.$key.'</td>';
									echo '<td>';
									xxx_read_field($link,'consumable_receipt',$key,$value,$search='no',$readonly='');
									echo '</td>';
									echo '</tr>';							
								}
							}
					
					
					echo '</table>'; 
					echo '</td>';
				}
				
				else
				{
					foreach($array as $key=>$value)
					{
						if($key=='id')
						{
							if($value==$edit_id && $save_mode=='no')
							{
								echo '<td>';
								echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
								echo '<input type=hidden name=save_id value=\''.$value.'\'>';
								echo '</td>';							
								
							}
							else
							{
								echo '<td>';
								echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
								echo '</td>';
							}
						}
						else
						{
							if($id==$edit_id && $save_mode=='no') 
							{						
								//echo '<td style="white-space: nowrap;"><input type=text name=\''.$key.'\' value=\''.$value.'\'>'.$value.'</td>';
								echo '<td>';
								xxx_read_field($link,'consumable_receipt',$key,$value,$search='no',$readonly='');
								echo '</td>';
							}
							else
							{						
								echo '<td style="white-space: nowrap;">'.$value.'</td>';
							}
							
						}
					}
					
				}
                
                echo '</tr>';

        }
        echo '</table>';
	echo '</form>';
}

function view_edit_consumable_receipt($link,$consumable_name,$edit_id=0,$save_mode='no')
{
	//echo '<h3>Consumable Details</h3>';
	echo '<form method=post><input type=hidden name=session_name value=\''.session_name().'\'>';
    echo '<input type=hidden name=action value=view_edit>';
    echo '<input type=hidden name=consumable_name value=\''.$consumable_name.'\'>';

	//$sql='select * from consumable_receipt where consumable_name=\''.$consumable_name.'\' order by id desc limit 100';
	$sql='select * from consumable_receipt where consumable_name=\''.$consumable_name.'\' order by date_of_expiry desc limit 100';
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		 return false;
	}
	
		echo '<table border=1 class="table table-sm table-striped table-hover table-responsive">';
		//echo '<table border=1 class="table table-sm table-striped table-hover ">';
				
        $first_data='yes';

        while($array=get_single_row($result))
        {
				$id=$array['id'];
				
                if($first_data=='yes')
                {
                        echo '<tr bgcolor=lightgreen>';
                        foreach($array as $key=>$value)
                        {
                                //echo '<th >'.$key.'</th>';
                                //echo '<th style="writing-mode: sideways-lr;">'.$key.'</th>';
                                echo '<th >'.str_replace('_','<br>',$key).'</th>';	//style="writing-mode: sideways-lr;"
                        }
                        echo '</tr>';
                        $first_data='no';
                }
                
                
                echo '<tr>';
                
                if($array['id']==$edit_id && $save_mode=='no')
				{
					echo '<td colspan=20>';
					echo '<table>';
					
							foreach($array as $key=>$value)
							{
								if($key=='id')
								{
									echo '<tr>
												<td>'.$key.'</td>
												<td>';
														echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
														echo '<input type=hidden name=save_id value=\''.$value.'\'>';
												echo '</td>
									</tr>';							
								}
								else
								{
									echo '<tr><td>'.$key.'</td>';
									echo '<td>';
									xxx_read_field($link,'consumable_receipt',$key,$value,$search='no',$readonly='');
									echo '</td>';
									echo '</tr>';							
								}
							}
					
					
					echo '</table>'; 
					echo '</td>';
				}
				
				else
				{
					foreach($array as $key=>$value)
					{
						if($key=='id')
						{
							if($value==$edit_id && $save_mode=='no')
							{
								echo '<td>';
								echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
								echo '<input type=hidden name=save_id value=\''.$value.'\'>';
								echo '</td>';							
								
							}
							else
							{
								echo '<td>';
								echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
								echo '<button formaction="print_consumable_lable.php" formtarget=_blank class="btn btn-outline-primary btn-sm" name=id value='.$value.'><img src="img/barcode.png" width=20  /></button>';
								echo '</td>';
							}
						}
						else
						{
							if($id==$edit_id && $save_mode=='no') 
							{						
								//echo '<td style="white-space: nowrap;"><input type=text name=\''.$key.'\' value=\''.$value.'\'>'.$value.'</td>';
								echo '<td>';
								xxx_read_field($link,'consumable_receipt',$key,$value,$search='no',$readonly='');
								echo '</td>';
							}
							else
							{						
								echo '<td style="white-space: nowrap;">'.$value.'</td>';
							}
							
						}
					}
					
				}
                
                echo '</tr>';

        }
        echo '</table>';
	echo '</form>';
}

function view_edit_consumable_receipt_horizontal($link,$consumable_name,$edit_id=0,$save_mode='no')
{
	echo '<h3>Consumable Details</h3>';
	echo '<form method=post><input type=hidden name=session_name value=\''.session_name().'\'>';
    echo '<input type=hidden name=action value=view_edit>';
    echo '<input type=hidden name=consumable_name value=\''.$consumable_name.'\'>';

	$sql='select * from consumable_receipt where consumable_name=\''.$consumable_name.'\'';
	if(!$result=run_query($link,$GLOBALS['database'],$sql))
	{
		 return false;
	}
	
		echo '<table border=1 class="table table-sm table-striped table-hover table-responsive">';
		//echo '<table border=1 class="table table-sm table-striped table-hover ">';
				
        $first_data='yes';

        while($array=get_single_row($result))
        {
				$id=$array['id'];
				
                if($first_data=='yes')
                {
                        echo '<tr bgcolor=lightgreen>';
                        foreach($array as $key=>$value)
                        {
                                echo '<th >'.$key.'</th>';
                                //echo '<th style="writing-mode: sideways-lr;">'.$key.'</th>';
                                //echo '<th >'.str_replace('_','<br>',$key).'</th>';	//style="writing-mode: sideways-lr;"
                        }
                        echo '</tr>';
                        $first_data='no';
                }
                echo '<tr>';
                foreach($array as $key=>$value)
                {
					if($key=='id')
					{
						if($value==$edit_id && $save_mode=='no')
						{
							echo '<td>';
							echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
							echo '<input type=hidden name=save_id value=\''.$value.'\'>';
							echo '</td>';							
							
						}
						else
						{
							echo '<td>';
							echo '<button class="btn btn-outline-primary btn-sm" name=id value='.$value.'>'.$value.'</button>';
							echo '</td>';
						}
					}
					else
					{
						if($id==$edit_id && $save_mode=='no') 
						{						
							//echo '<td style="white-space: nowrap;"><input type=text name=\''.$key.'\' value=\''.$value.'\'>'.$value.'</td>';
							echo '<td>';
							xxx_read_field($link,'consumable_receipt',$key,$value,$search='no',$readonly='');
							echo '</td>';
						}
						else
						{						
							echo '<td style="white-space: nowrap;">'.$value.'</td>';
						}
						
					}
                }
                echo '</tr>';

        }
        echo '</table>';
	echo '</form>';
}


function xxx_read_field($link,$tname,$field,$value,$search='no',$readonly='')
{
    //echo '<h1>'.$readonly.'</h1>';

    //$ftype=get_field_details($link,$tname,$field);
    $fspec=xxx_get_field_spec($link,$tname,$field);
    //print_r($fspec);
    if($fspec)
    {
        if($fspec['ftype']=='table')
        {
            if($readonly!='readonly')
            {
                mk_select_from_sql($link,'select distinct `'.$fspec['field'].'` from `'.$fspec['table'].'`',
                $fspec['field'],$fspec['fname'],$fspec['fname'],'',$value,$blank='yes');
            }
            else
            {
                echo '<input class="w-100" type=text  '.$readonly.' name=\''.$field.'\' value=\''.htmlentities($value,ENT_QUOTES).'\'>';
                //echo '<input  type=text  '.$readonly.' name=\''.$field.'\' value=\''.htmlentities($value,ENT_QUOTES).'\'>';
            }
        }
        else if($fspec['ftype']=='dtable')
        {
            //if($readonly!='readonly')
            //{
            $sql='select 
                distinct `'.$fspec['field'].'` , 
                concat_ws("|",'.$fspec['field_description'].') as description
            from `'.$fspec['table'].'`
            order by '.$fspec['field_description'];
            //echo $sql;
            mk_select_from_sql_with_description($link,$sql,
                    $fspec['field'],$fspec['fname'],$fspec['fname'],'',$value,$blank='yes',$readonly);
            echo '<input placeholder="enter search string" type=text id=\'input_for_'.$fspec['fname'].'\' onchange="find_from_dd(this , \''.$fspec['fname'].'\');">';
        }
        elseif($fspec['ftype']=='date')
        {
            if($search=='yes')
            {
                echo '<input type=text '.$readonly.' name=\''.$field.'\' value=\''.$value.'\'>';
            }
            else
            {
                echo '<input type=date id=\''.$field.'\' name=\''.$field.'\' value=\''.$value.'\'>';
                $default=strftime("%Y-%m-%d");
                show_source_button($field,$default);
            }
        }
        elseif($fspec['ftype']=='time')
        {
            if($search=='yes')
            {
                echo '<input type=text  name=\''.$field.'\' value=\''.$value.'\'>';
            }
            else
            {
                echo '<input type=time id=\''.$field.'\'  '.$readonly.' name=\''.$field.'\' value=\''.$value.'\'>';
                $default=strftime("%H:%M");
                show_source_button($field,$default);
            }
        }               
        elseif($fspec['ftype']=='textarea')
        {
            echo '<pre><textarea   '.$readonly.' name=\''.$field.'\' >'.$value.'</textarea></pre>';
        }   
        else
        {
            echo 'not implemented';
        }
    }
    else
    {
        echo '<input class="w-100" type=text  '.$readonly.' name=\''.$field.'\' value=\''.htmlentities($value,ENT_QUOTES).'\'>';
        //echo '<input type=text  '.$readonly.' size=10 name=\''.$field.'\' value=\''.htmlentities($value,ENT_QUOTES).'\'>';
    }
}




function xxx_get_field_spec($link,$tname,$fname)
{
    $sql='select * from table_field_specification  where tname=\''.$tname.'\' and fname=\''.$fname.'\'';
    $result=run_query($link,$GLOBALS['database'],$sql);
    return $ar=get_single_row($result); //return only first row, if mutiple, only forst one is returned
}



function xxx_update_one_field($link,$tname,$fname,$pk)
{
    if(strlen($_POST[$fname])==0)
    {
        $value=' NULL ';
    }
    else
    {
        $value=' \''.my_safe_string($link,$_POST[$fname]).'\' ';
    }
    //echo $fname.'<br>';
    xxx_update_one_field_with_value($link,$tname,$fname,$pk,$value);
}

function xxx_update_one_field_with_value($link,$tname,$fname,$pk,$value)
{
        $sql='update `'.$tname.'`
            set 
                `'.$fname.'` ='.$value.',
                recording_time=now(),
                recorded_by=\''.$_SESSION['login'].'\'
            where 
                id=\''.$pk.'\' ';
        //echo $sql;
    
    if(!$result=run_query($link,$GLOBALS['database'],$sql))
    {
        echo '<p>Data not updated</p>';
    }
    else
    {
        if(rows_affected($link)==1)
        {
            //echo '<p>Saved</p>';              
        }
        else
        {
            //echo '<p>Result need no update</p>';
        }
    }
}

function xxx_update_one_field_blob($link,$tname,$fname,$name_fname,$pk)
{
    $data=file_to_str($link,$_FILES[$fname]);
    if(strlen($data)==0){return;}
    $sql='update `'.$tname.'`
        set 
            `'.$fname.'` =\''.$data.'\',
            recording_time=now(),
            recorded_by=\''.$_SESSION['login'].'\'          
        where 
            id=\''.$pk.'\' ';

    if(!$result=run_query($link,$GLOBALS['database'],$sql))
    {
        echo '<p>Data not updated</p>';
    }
    else
    {
        if(rows_affected($link)==1)
        {
            //echo '<p>Saved</p>';
            xxx_update_one_field_with_value($link,$tname,$name_fname,$pk,'\''.$_FILES[$fname]['name'].'\'');                
        }
        else
        {
            //echo '<p>Result need no update</p>';
        }
    }
}

function xxx_update($link,$tname,$pk_name,$array,$farray)
{
    foreach($array as $k=>$v)
    {
			if($k!=$pk_name)
			{
				xxx_update_one_field($link,$tname,$k,$array[$pk_name]);
			}
    }
    foreach($farray as $k=>$v)
    {
            xxx_update_one_field_blob($link,$tname,$k,$k.'_name',$array[$pk_name]);
    }   
}



?>
