<?php

function verify_sample($link,$sample_id)
{
  //echo '<pre>';print_r($_POST);echo '</pre>';
  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  //print_r($ex_result_array);
  $ret=0;
  foreach ($ex_result_array as $eid=>$eval)
  {
    $temp_ret=any_examination_id($link,$sample_id,$eid,$eval);
    if($ret==-1){$ret=-1;}else{$ret=$temp_ret;}

    if(function_exists('f_'.$eid))
    {
      echo '<div class="collapse navbar-collapse collapsed cal_data">[Start] Verifying ex='.$eid.'<hr>';
      echo '<p>running f_'.$eid.'().</p>';
      $fun_name='f_'.$eid;              ////This is how function name is found
      $fun_name($link,$sample_id,$eid); ////The function is executed
      //echo '[End] Verifying ex='.$eid.'<br><hr>';
      echo '</div>';
    } 
  }
  
  //verify blob
  $ex_result_blob_array=get_result_blob_of_sample_in_array($link,$sample_id); 
  foreach ($ex_result_blob_array as $eid=>$eval)
  {
    //$temp_ret=any_examination_id($link,$sample_id,$eid,$eval);
    //if($ret==-1){$ret=-1;}else{$ret=$temp_ret;}

    if(function_exists('f_'.$eid))
    {
      echo '<div class="collapse navbar-collapse collapsed cal_data">[Start] Verifying ex='.$eid.'<hr>';
      echo '<p>running f_'.$eid.'().</p>';
      $fun_name='f_'.$eid;
      $fun_name($link,$sample_id,$eid);
      echo '</div>';
    } 
  }

  return $ret;
}

function any_examination_id($link,$sample_id,$eid,$eval)
{
  $examination_details=get_one_examination_details($link,$eid);

  if(strlen($eval)==0)
  {
    echo '<span class="text-danger d-block">('.$eid.'-'.$examination_details['name'].') result is empty. [NOT OK]</span>';return -1;
  }

  if($GLOBALS['critical_autoinsert']=='yes')
  {
    $edit_specification=json_decode($examination_details['edit_specification'],true);

    $interval_l=isset($edit_specification['interval_l'])?$edit_specification['interval_l']:'';
    $cinterval_l=isset($edit_specification['cinterval_l'])?$edit_specification['cinterval_l']:'';
    $ainterval_l=isset($edit_specification['ainterval_l'])?$edit_specification['ainterval_l']:'';
    $interval_h=isset($edit_specification['interval_h'])?$edit_specification['interval_h']:'';
    $cinterval_h=isset($edit_specification['cinterval_h'])?$edit_specification['cinterval_h']:'';
    $ainterval_h=isset($edit_specification['ainterval_h'])?$edit_specification['ainterval_h']:'';

    $alert=decide_alert($eval,$interval_l,$cinterval_l,$ainterval_l,$interval_h,$cinterval_h,$ainterval_h);
    if($alert==$GLOBALS['critical_low_message'] || $alert==$GLOBALS['critical_high_message'])
    {
      echo '<span class="text-danger d-block">('.$eid.'-'.$examination_details['name'].') result is critical.[Inform and update remark]</span>';

      //insert, or update(but actually donot change existing value)
      //upto user to decide what to write, email/Phone to_whom , date,time etc
      $cr=get_one_ex_result($link,$sample_id,$GLOBALS['Critical_Alert']);
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['Critical_Alert'],$cr);
    }
  }

}

function examination_id_verified($which_id,$required_id,$display_name)
{
  if($required_id!=$which_id)
  {
    echo '<span class="text-danger">'.$display_name.' code provided ('.$which_id.') is not same as required code('.$required_id.').</span>';return false;
  }
  else
  {
    echo '<span class="text-success d-block">'.$display_name.' id is verified.</span>';return true;
    return true;
  }
}

function examination_result_numeric($result,$display_text)
{
  echo '<span>Checking if ('.$result.') result of '.$display_text.' is numeric</span>';
  if(!is_numeric($result))
  {
    echo '<span class="text-danger">'.$display_text.' result is not numeric.</span>';return false;
  }
  else
  {
    echo '<span class="text-success d-block">'.$display_text.' result is numeric.</span>';return true;
  }
  
  
}

//Plasma Glucose
function f_5031($link,$sample_id,$ex_id)
{
  echo 'Verification of examination_id=5031 (GLC, plasma) is under process........<br>';
  if($GLOBALS['plasma_glucose']!=$ex_id){echo '<span class="text-danger">Plasma Glucose code is not 5031. Not verified</span>';return;}
}

//serum Total Bilirubin
function f_5009($link,$sample_id,$ex_id)
{
  echo 'Verification of examination_id=5009 (TBIL, serum) is under process........<br>';
  if($GLOBALS['serum_TBIL']!=$ex_id){echo '<span class="text-danger">Serum TBIL code is not 5009. Not verified</span>';return;}
}

//serum direct bilirubin
function f_5010($link,$sample_id,$ex_id)
{
  echo 'Verification of examination_id=5010 (DBIL, serum)is under process........<br>';
  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  
  //is examination id correct?
  if($GLOBALS['serum_DBIL']!=$ex_id){echo '<span class="text-danger">Serum DBIL code is not 5010. Not verified</span>';return;}
  
  //is it's result a number?
  if(!is_numeric($ex_result_array[$GLOBALS['serum_DBIL']]))
  {
    echo '<span class="text-danger">DBIL is not numeric. Not verified</span>';return;
  }
  else
  {
    echo '<span class="text-success d-block">DBIL is numeric. Going next step</span>';
  }
  
  //is tbil id correct?
  if($GLOBALS['serum_TBIL']!=5009){echo '<span class="text-danger">Serum TBIL code is not 5009. Not verified</span>';return;}
  
  
  if(isset($ex_result_array[$GLOBALS['serum_TBIL']]))
  {
    //is tbil result a number?
    echo 'TBIL is available...<br>';
    if(!is_numeric($ex_result_array[$GLOBALS['serum_TBIL']]))
    {
      echo '<span class="text-danger">TBIL is not numeric. TBIL - DBIL relations not verified</span>';
    }
    else
    {
      echo '<span class="text-success d-block">TBIL is numeric. Going next step</span>';        
      if( $ex_result_array[$GLOBALS['serum_TBIL']] >= $ex_result_array[$GLOBALS['serum_DBIL']] )
      {
        echo '<span class="text-success">TBIL > DBIL [OK]</span>';
      }
      else
      {
        echo '<span class="text-danger">TBIL < DBIL [NOT OK], IBIL and Remarks updated, as applicable</span>';
        if($GLOBALS['serum_IBIL']!=5024)
        {
          echo '<span class="text-danger">Serum IBIL code is not 5024. IBIL Not updated</span>';
        }
        else
        {
          update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_IBIL'],'Not Calculated, See Remarks');
        }
        
        if($GLOBALS['Remark']!=5098)
        {
          echo '<span class="text-danger">Remark code is not 5098. Remark Not inserted / updated</span>';
        }
        else
        {
$remark=
'Analytical value of Total bilirubin is less than Direct Bilirubin.
Ignore if both are in reference range
Ignore if difference is <20%
Otherwise, Result may be considered absurd and repeat sample collection is advised';
          insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['Remark'],$remark);
        }       
        
      }
    }
  } 
}

//serum Total Cholesterol
function f_5015($link,$sample_id,$ex_id)
{
  echo '......Verification of examination_id=5015 (Cholesterol, serum).....<br>';
  if(!examination_id_verified($ex_id,$GLOBALS['serum_CHOL'],'serum cholesterol')){return false;}
  
  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  if( !examination_result_numeric($ex_result_array[$GLOBALS['serum_CHOL']],'serum cholesterol')){return false;}
  
  $cho=$ex_result_array[$GLOBALS['serum_CHOL']];
  $tg=$ex_result_array[$GLOBALS['serum_TG']];
  if($cho>240)
  {
    echo '<span class="text-success d-block">Cholesterol is more than 240 mg/dL</span>';
    if($tg<400)
    {
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_HDL'],$ex_result_array[$GLOBALS['serum_HDL']]);
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_VLDL'],$ex_result_array[$GLOBALS['serum_VLDL']]);
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_LDL'],$ex_result_array[$GLOBALS['serum_LDL']]);
      echo '<span class="badge badge-danger d-inline">HDL, VLDL, LDL reflexly added</span><br>';

    }
    else
    {
      echo '<span class="text-success d-block">TG >400 mg/dL. LDL not reliable.</span>';
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_HDL'],$ex_result_array[$GLOBALS['serum_HDL']]);
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_VLDL'],$ex_result_array[$GLOBALS['serum_VLDL']]);
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_LDL'],'TG>400, LDL unreliable, Homogeneous assay advised');
    }
    return true;
  }
}


//$GLOBALS['serum_CHOL']=5015;
//$GLOBALS['serum_TG']=5018;
//$GLOBALS['serum_HDL']=5016;
//$GLOBALS['serum_LDL']=5017;
//$GLOBALS['serum_VLDL']=5028;

//serum VLDL verification with reference to Total Triglyceride
function f_5028($link,$sample_id,$ex_id)
{
  echo '......Verification of examination_id=5028 (VLDL, serum).....<br>';
  if(!examination_id_verified($ex_id,$GLOBALS['serum_VLDL'],'serum VLDL')){return false;}
  
  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  if( !examination_result_numeric($ex_result_array[$GLOBALS['serum_VLDL']],'serum VLDL')){return false;}
  
  $tg=$ex_result_array[$GLOBALS['serum_TG']];
  if($tg>400)
  {
      echo '<span class="text-success d-block">TG is more than 400 mg/dL</span>';
      echo '<span class="text-success d-block">VLDL is not calculated</span>';
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_VLDL'],'TG>400, VLDL not calculated');
      return true;
  }
  else
  {
      echo '<span class="text-success d-block">TG is more than 400 mg/dL</span>';
      echo '<span class="text-success d-block">VLDL is not calculated</span>';
      //keep calculated value
      insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['serum_VLDL'],$ex_result_array[$GLOBALS['serum_VLDL']]);
  }
}


//10011 Acc symbol
function f_10011($link,$sample_id,$ex_id)
{
  echo '<br>......Verification of examination_id=10011 (Acc symbol).....<br>';
  if(xxx_should_display_accreditation_symbol($link,$sample_id))
  {
    //$acc=get_config_value_blob($link,'nabl_symbol');
    update_one_examination_with_result($link,$sample_id,$ex_id,'nabl_symbol');
    //echo 'symbol required . setting value to "nabl_symbol"<br>';
    return true;
  }
  else
  {
    update_one_examination_with_result($link,$sample_id,$ex_id,'');
  }
}

//K absurd
function f_5020($link,$sample_id,$ex_id)
{
  echo '.....Verification of examination_id=5020 (Potassium, serum).....<br>';
  if(!examination_id_verified($ex_id,$GLOBALS['serum_potassium'],'serum potassium')){return false;}

  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  if( !examination_result_numeric($ex_result_array[$GLOBALS['serum_potassium']],'serum potassium')){return false;}
  
  $potassium=$ex_result_array[$GLOBALS['serum_potassium']];
  if($potassium>7.5)
  {
    echo '<span class="badge badge-danger d-inline">potassium is more than 7.5 mmol/L. Adding calcium reflexly</span><br>';
    insert_one_examination_without_result($link,$sample_id,$GLOBALS['serum_calcium'],$error='yes');
    return true;
  }
  return true;
}

function f_5001($link,$sample_id,$ex_id)
{
  echo '<br><b>.....Verification of examination_id=5001 (Creatinine, serum).....</b><br>';
  if(!examination_id_verified($ex_id,$GLOBALS['serum_creatinine'],'serum creatinine')){return false;}

  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  if( !examination_result_numeric($ex_result_array[$GLOBALS['serum_creatinine']],'serum creatinine')){return false;}
  
  $creatinine=$ex_result_array[$GLOBALS['serum_creatinine']];
  if($creatinine>1.5)
  {
    echo '<span class="badge badge-danger d-inline">serum creatinine is more than 1.5 mg/dL. Adding Urea and electrolytes reflexly</span><br>';
    insert_one_examination_without_result($link,$sample_id,$GLOBALS['serum_urea'],$error='yes');
    insert_one_examination_without_result($link,$sample_id,$GLOBALS['serum_potassium'],$error='yes');
    insert_one_examination_without_result($link,$sample_id,$GLOBALS['serum_sodium'],$error='yes');
    return true;
  }
  return true;
}

//////////////////////////////////
//With Explanation for Shyam//////
//////////////////////////////////

//program finds relevent function defination from examination_id
//See ---> function verify_sample($link,$sample_id)
//1008 = Sex
//5087 = sex eGFR
//when Sex is verified, following function is run
function f_1008($link,$sample_id,$ex_id)
{
  //sole purpose is to calculate eGFR
  //don't waste time if it is not requested
  if(is_examination_requested($link,$sample_id,$GLOBALS['eGFR'])==True)
  {
      echo '<br><b>eGFR requested. So, trying for Sex based factor in MDRD equation</b><br>';
  }
  else
  {
      echo '<br><b>eGFR not requested. So, not trying for Sex based factor in MDRD equation</b><br>';
      return true;
  }
  
  //information display on web page. Not strctly necessary
  echo '<b>.....Verification of examination_id=1008 (Sex, None).....</b><br>';
  
  //This is cross check. If someone mistakenly alter examination_id of Sex, this function will not be run
  //If someone gives another examination this(1008) ID, then also it may create problems
  //see config.php for $GLOBALS defination
  if(!examination_id_verified($ex_id,$GLOBALS['Sex'],'Sex')){return false;}
  //if name and id do not match as per expectation, do not do any thing
  
  //get examination results 
  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  //print on page for debug purpose
  print_r($ex_result_array);
  
  
  //We do not want following. results are not numeric. 
  //if( !examination_result_numeric($ex_result_array[$GLOBALS['serum_creatinine']],'serum creatinine')){return false;}
 
  
  $sex=$ex_result_array[$GLOBALS['Sex']];
  //(male:1) (female:0.742)
  if($sex=='Male')
  {
    echo '<span class="badge badge-danger d-inline">Sex is Male. Sex for eGFR will be 1</span><br>';
    insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['Sex for eGFR'],'1');
    return true;
  }
  else if($sex=='Female')
  {
    echo '<span class="badge badge-danger d-inline">Sex is Female. Sex for eGFR will be 0.742</span><br>';
    insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['Sex for eGFR'],'0.742');
    return true;
  }
  else
  {
    echo '<br><span class="badge badge-danger d-inline">Sex is not Male/Female. eGFR can not be calculated</span><br>';
    echo '<span class="badge badge-danger d-inline">Consult clinician, if it is possible to use M or F based on some biological characteristics</span><br>';
    insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['Sex for eGFR'],'Sex must be M or F. No Result Given');
    return true;
  }    
  return true;
}

//eGFR (MDRD, Non african)
//$GLOBALS['eGFR']
function f_5060($link,$sample_id,$ex_id)
{
  //information display on web page. Not strictly necessary
  echo '<b>.....Verification of examination_id=5060(eGFR (MDRD, Non african), Serum).....</b><br>';
  
  //This is cross check. If someone mistakenly alter examination_id of Sex, this function will not be run
  //If someone gives another examination this(1008) ID, then also it may create problems
  //see config.php for $GLOBALS defination
  if(!examination_id_verified($ex_id,$GLOBALS['eGFR'],'eGFR (MDRD, Non african)')){return false;}
  //if name and id do not match as per expectation, do not do any thing
  
  //get examination results 
  $ex_result_array=get_result_of_sample_in_array($link,$sample_id);
  //print on page for debug purpose
  //print_r($ex_result_array);
  
  
  //if eGFR is not numeric, we will not touch it
  if( !examination_result_numeric($ex_result_array[$GLOBALS['eGFR']],'eGFR (MDRD, Non african)')){return false;}

  if( !examination_result_numeric($ex_result_array[$GLOBALS['Age(Y)']],'Age (In Completed Years)'))
  {
    return false;
  }
  else if (get_one_ex_result($link,$sample_id,$GLOBALS['Age(Y)'])<18)
  {
    insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['eGFR'],'age<18? eGFR can not be calculated');
    return true;
  }
   
  $gfr_value=$ex_result_array[$GLOBALS['eGFR']];
  //(male:1) (female:0.742)
  if($gfr_value>60)
  {
    echo '<span class="badge badge-danger d-inline">MDRD eGFR is valid only upto 60</span><br>';
    insert_update_one_examination_with_result($link,$sample_id,$GLOBALS['eGFR'],'greater than 60');
    return true;
  }
  return true;
}


?>
