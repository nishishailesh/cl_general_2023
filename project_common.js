var selected_ex=[]
var selected_profile=[]
var selected_super_profile=[]
var copy_bin=''

function select_examination_js(me,ex_id,list_id)
{
  if(selected_ex.indexOf(ex_id) !== -1)
  {
    selected_ex.splice(selected_ex.indexOf(ex_id),1)
    document.getElementById(list_id).value=selected_ex
    me.classList.remove('bg-warning')
  }
  else
  {
    selected_ex.push(ex_id);
    document.getElementById(list_id).value=selected_ex
    me.classList.add('bg-warning')
  }
}

function select_profile_js(me,ex_id,list_id)
{
  if(selected_profile.indexOf(ex_id) !== -1)
  {
    selected_profile.splice(selected_profile.indexOf(ex_id),1)
    document.getElementById(list_id).value=selected_profile
    me.classList.remove('bg-warning')
  }
  else
  {
    selected_profile.push(ex_id);
    document.getElementById(list_id).value=selected_profile
    me.classList.add('bg-warning')
  }
}

function select_super_profile_js(me,ex_id,list_id)
{
  if(selected_super_profile.indexOf(ex_id) !== -1)
  {
    selected_super_profile.splice(selected_super_profile.indexOf(ex_id),1)
    document.getElementById(list_id).value=selected_super_profile
    me.classList.remove('bg-warning')
  }
  else
  {
    selected_super_profile.push(ex_id);
    document.getElementById(list_id).value=selected_super_profile
    me.classList.add('bg-warning')
  }
}

function toggle_color(me)
{
  if(me.classList.contains("btn-secondary"))
  {
    me.classList.remove('btn-secondary')
    me.classList.add('btn-primary')
  }
  else
  {
    me.classList.add('btn-secondary')
    me.classList.remove('btn-primary')
  }
}

function toggle_display(class_name)
{
  $("."+class_name).toggle()
}

function copy_to_bin(me)
{
  //copy_bin=copy_bin+me.innerHTML
  //alert(copy_bin)
  document.getElementById('cb_ta').value=document.getElementById('cb_ta').value+me.innerHTML
}

function clear_bin()
{
  //copy_bin='';
  //alert(copy_bin)
  document.getElementById('cb_ta').value=''
}

function copy_binn()
{
  x=document.getElementById('cb_ta')
  x.select()
  x.setSelectionRange(0, 99999)
  document.execCommand("copy")
}

function sync_result(me)
{
  //alert(me.getAttribute('data-type'));
  target=document.getElementById('r_id_'+me.getAttribute('data-sid')+'_'+me.getAttribute('data-exid'))
  target.value=me.value
  var event = new Event('change');
  target.dispatchEvent(event);
}

function sync_result_blob(me)
{
  //alert(me.getAttribute('data-uniq'));
  target=document.getElementById('r_id_'+me.getAttribute('data-sid')+'_'+me.getAttribute('data-exid'))
  target.value=me.value
  target.setAttribute('data-uniq',me.getAttribute('data-uniq'))
  var event = new Event('change');
  target.dispatchEvent(event);
}

function sync_with_that(me,that_element_id)
{
  //alert(me.getAttribute('data-type'));
  target=document.getElementById(that_element_id);
  target.value=me.value
  var event = new Event('change');
  target.dispatchEvent(event);
}

function sync_all()
{
  $("[id^=pr_id_]").each(
    function()
    {
      target=document.getElementById('r_id_'+$(this).attr('data-sid')+'_'+$(this).attr('data-exid'))
      target.setAttribute('data-uniq',$(this).attr('data-uniq'))
      target.value=$(this).val()
      var event = new Event('change');
      target.dispatchEvent(event);    
    }
  )
}

function calcuate_for_target(me,target_element_id,equation)
{
  alert(target_element_id+equation)
}

function set_print_class(jsn)
{
  //alert(jsn)
  ar=JSON.parse(jsn)
  $("[id^=ex_]").css('display','none')
  ar.forEach(
        function(x)
        {
          $("#ex_"+x).css('display','')
        }
  
        )
}


function my_sort(me,col_index,my_table)
{
  cur_val=me.getAttribute("data-sorting")
  //alert(col_index + ' ' + cur_val);
  me.setAttribute("data-sorting",cur_val*-1);
  //alert(col_index);
  
  done_something=true
  while(done_something==true)
  {
        done_something=false
        tbl=document.getElementById(my_table)
        all_rows = tbl.rows
        for (i = 1; i < (all_rows.length - 1); i++) //omit header row
        {
            //alert(all_rows[i].getElementsByTagName("TD")[col_index].innerHTML)
            //first = all_rows[i].getElementsByTagName("TD")[col_index].innerHTML.toLowerCase();
            //second = all_rows[i+1].getElementsByTagName("TD")[col_index].innerHTML.toLowerCase();
            first = all_rows[i].getElementsByTagName("TD")[col_index].innerHTML
            second = all_rows[i+1].getElementsByTagName("TD")[col_index].innerHTML

            if(cur_val==1)  //ascending
            {
                if ( first > second ) //(Z,A) Z>A
                {
          //node.insertBefore(newnode, existingnode)
          //ascending: result should be (A,Z)
                    all_rows[i].parentNode.insertBefore(all_rows[i+1], all_rows[i]);
                    done_something=true
                }
                //else do nothing
            }
            else        //descending
            {
                 if ( first < second ) //((A,Z) A<Z
                {
          //node.insertBefore(newnode, existingnode)
          //ascending: result should be (Z,A)
                    all_rows[i].parentNode.insertBefore(all_rows[i + 1], all_rows[i]);
                    done_something=true
                }           
            
            }
        }
    }
}


function my_sort_float(me,col_index,my_table)
{
  cur_val=me.getAttribute("data-sorting")
  //alert(col_index + ' ' + cur_val);
  me.setAttribute("data-sorting",cur_val*-1);
  //alert(col_index);
  
  done_something=true
  while(done_something==true)
  {
        done_something=false
        tbl=document.getElementById(my_table)
        all_rows = tbl.rows
        for (i = 1; i < (all_rows.length - 1); i++) //omit header row
        {
            //alert(all_rows[i].getElementsByTagName("TD")[col_index].innerHTML)
            //first = all_rows[i].getElementsByTagName("TD")[col_index].innerHTML.toLowerCase();
            //second = all_rows[i+1].getElementsByTagName("TD")[col_index].innerHTML.toLowerCase();
            first = parseFloat(all_rows[i].getElementsByTagName("TD")[col_index].innerHTML)
            second = parseFloat(all_rows[i+1].getElementsByTagName("TD")[col_index].innerHTML)
      if(Number.isNaN(first))
      {
        //alert('NA')
        all_rows[i].parentNode.appendChild(all_rows[i]);
      }
      if(Number.isNaN(second))
      {
        all_rows[i].parentNode.appendChild(all_rows[i+1]);
      }
      else
      {
        if(cur_val==1)
        {
          if ( first > second ) 
          {
            all_rows[i].parentNode.insertBefore(all_rows[i + 1], all_rows[i]);
            done_something=true
          }
        }
        else
        {
           if ( first < second ) 
          {
            all_rows[i].parentNode.insertBefore(all_rows[i + 1], all_rows[i]);
            done_something=true
          }           
        
        }
      }
        }
    }
}

function show_comment_modal()
{
    
}

$(document).ready
  (
    function()
    {
      //$("input[type!=file]").change(
      $(".autosave").change(
                function()
                {
                  //alert($(this).attr('minlength')+$(this).val().length)
                  
                  //if( $(this).attr('minlength') > $(this).val().length)
                  //{
                  //  alert("do")
                  //  focus($(this))
                  //  return false;
                  //}
                  
                  $.post(
                      "save_record.php",
                      {
                        examination_id: $(this).attr('data-exid'),
                        primary: $(this).attr('data-primary'),
                        uniq: $(this).attr('data-uniq'),
                        sample_id: $(this).attr('data-sid'),
                        result: $(this).val(),
                        session_name: $(this).attr('data-session_name'),
                        user: $(this).attr('data-user')
                       },
                      function(data,status)
                      {
                        //alert("Data: " + data + "\nStatus: " + status);
                        $("#response").html(data)
                      }
                    );
                }
              );
              

      $(".autosave-blob").change(
                function()
                {
                  
                  $.post(
                      "save_record_blob.php",
                      {
                        examination_id: $(this).attr('data-exid'),
                        primary: $(this).attr('data-primary'),
                        uniq: $(this).attr('data-uniq'),
                        sample_id: $(this).attr('data-sid'),
                        result: $(this).val(),
                        type: $(this).attr('data-type'),
                        uniq: $(this).attr('data-uniq'),
                        session_name: $(this).attr('data-session_name'),
                        user: $(this).attr('data-user')
                       },
                      function(data,status)
                      {
                        //alert("Data: " + data + "\nStatus: " + status);
                        $("#response").html(data)
                      }
                    );
                }
              );
              
                            
          $(".autosave-yesno").click(
                function()
                {
                  if($(this).val()!='yes')
                  {
                    $(this).val('yes')
                    $(this).html('yes')
                  }
                  else
                  {
                    $(this).val('no')
                    $(this).html('no')
                  }
                  
                  $.post(
                      "save_record.php",
                      {
                        examination_id: $(this).attr('data-exid'),
                        primary: $(this).attr('data-primary'),
                        uniq: $(this).attr('data-uniq'),
                        sample_id: $(this).attr('data-sid'),
                        result: $(this).val(),
                        session_name: $(this).attr('data-session_name'),
                        user: $(this).attr('data-user')
                       },
                      function(data,status)
                      {
                        //alert("Data: " + data + "\nStatus: " + status);
                        $("#response").html(data)
                      }
                    );
                }
              );

          $(".autosave-select").change(
                function()
                {                 
                  $.post(
                      "save_record.php",
                      {
                        examination_id: $(this).attr('data-exid'),
                        primary: $(this).attr('data-primary'),
                        uniq: $(this).attr('data-uniq'),
                        sample_id: $(this).attr('data-sid'),
                        result: $(this).val(),
                        session_name: $(this).attr('data-session_name'),
                        user: $(this).attr('data-user')
                       },
                      function(data,status)
                      {
                        //alert("Data: " + data + "\nStatus: " + status);
                        $("#response").html(data)
                      }
                    );
                }
              );      
    }
  );



function expand_all(me)
{
  //console.log("expand_all()")
  status=me.getAttribute('data-status','on')
  
  if(status=='off')
  {
    me.setAttribute('data-status','on')
    me.innerHTML="<h4>&uarr;&uarr;&uarr;</h4>"
    //ul = document.getElementsByTagName("html")[0]; 
    ul = document.getElementById("get_examination_data"); 
    ul.childNodes.forEach(go_down_tree_for_expand);
    $(".my-toggle").html("&uarr;")
    $(".my-toggle").attr("data-status","on")
  }

  else if(status=='on')
  {
    me.setAttribute('data-status','off')
    me.innerHTML="<h4>&darr;&darr;&darr;</h4>"
    //ul = document.getElementsByTagName("html")[0]; 
    ul = document.getElementById("get_examination_data"); 
    ul.childNodes.forEach(go_down_tree_for_collapse);
    $(".my-toggle").html("&darr;")
    $(".my-toggle").attr("data-status","off")
  }
}

function go_down_tree_for_expand(item,index)
{
  //console.log(item+index)
  if(item.classList)
  {
    //console.log("go_down_tree_for_expand(item,index) Item Class:"+item.classList)
    if(item.classList.contains("ex_menu"))
    {
      item.classList.remove("collapse")
      item.classList.add("collapse")
      item.classList.add("show")
      
    }
    item.childNodes.forEach(go_down_tree_for_expand)
  }
  else
  {
    item.childNodes.forEach(go_down_tree_for_expand)
  }
  
}

function collapse_all()
{
  //console.log("collapse_all()")
  ul = document.getElementsByTagName("html")[0]; 
  ul.childNodes.forEach(go_down_tree_for_collapse);
  $(".my-toggle").html("&darr;")
  $(".my-toggle").attr("data-status","off")
}

function go_down_tree_for_collapse(item,index)
{
  //console.log(item+index)
  if(item.classList)
  {
    //console.log("go_down_tree_for_collapse(item,index) Item Class:"+item.classList)
    if(item.classList.contains("ex_menu"))
    {
      item.classList.remove("show")
      item.classList.remove("collapse")
      item.classList.add("collapse")
    }
    item.childNodes.forEach(go_down_tree_for_collapse)
  }
  else
  {
    item.childNodes.forEach(go_down_tree_for_collapse)
  }
  
}

////////////////new request related funtion///////////////
var selected_examination=[]


/////for tree

//when clicked on a button
function xxx_select_examination_js(me,ex_id,list_id)
{
  if(selected_examination.indexOf(ex_id) !== -1)
  {
    selected_examination.splice(selected_examination.indexOf(ex_id),1)
    document.getElementById(list_id).value=selected_examination
  }
  else
  {
    selected_examination.push(ex_id);
    document.getElementById(list_id).value=selected_examination
  }
  
  manage_all_button_for_ex_id(ex_id)
  update_sss()

}

//now deselect
function select_examination_by_ex_id(ex_element_id,list_id)
{
  ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
  if(selected_examination.indexOf(ex_id) !== -1)
  {
    selected_examination.splice(selected_examination.indexOf(ex_id),1)
    document.getElementById(list_id).value=selected_examination
  }
  //else
  //{
  //  selected_examination.push(ex_id);
  //  document.getElementById(list_id).value=selected_examination
  //}
  
  manage_all_button_for_ex_id(ex_id)
  //update_sss()    //updating at every call cause client 100% CPU usage
}

function invert_selection(target_id)
{
  //alert(target_id)
  const ul = document.querySelector('#'+target_id);

  // get all children
  const childern = ul.childNodes;

  // iterate over all child nodes
  childern.forEach(go_down_tree);
  update_sss()    //Just update once to prevent excessive client CPU usage
}



function go_down_tree(item, index)
{
  if(item.type=='button')
  {
    //console.log(item.id)
    select_examination_by_ex_id(item.id,'selected_examination_list')
  }
  else
  {
    item.childNodes.forEach(go_down_tree)
  }
  
}



function select_all_children(target_id)
{
  //alert(target_id)
  const ul = document.querySelector('#'+target_id);

  // get all children
  const childern = ul.childNodes;

  // iterate over all child nodes
  childern.forEach(go_down_tree_to_select_all);
  update_sss()    //Just update once to prevent excessive client CPU usage
}

///////////toggle start/////////////
function toggle_all_children(me,target_id)
{
  status=me.getAttribute('data-status')
  //This status variable is available to all functions called within this function!!!!!
  //alert(target_id)
    
  // get all children
  const ul = document.querySelector('#'+target_id);
  const childern = ul.childNodes;

  if(status=='on')
  {
    me.classList.remove('btn-success')
    me.classList.add('btn-outline-success')
    me.setAttribute('data-status','off')
  }
  else if(status=='off')
  {
    me.classList.add('btn-success')
    me.classList.remove('btn-outline-success')
    me.setAttribute('data-status','on')
  } 
  
  // iterate over all child nodes
  childern.forEach(go_down_tree_to_toggle_all);
  
  update_sss()    //Just update once to prevent excessive client CPU usage
  

}

function go_down_tree_to_toggle_all(item, index)
{
  //status from parent function is made avilable
  if(item.type=='button')
  {
    //console.log(item.id)
    toggle_examination_by_ex_id(item.id,'selected_examination_list')
  }
  else
  {
    item.childNodes.forEach(go_down_tree_to_toggle_all)
  }
  
}

function toggle_examination_by_ex_id(ex_element_id,list_id)
{
  ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
  //alert(status)
  //status from parent-of-parent is available
  if(status=='off') //now make status on
  {
    if(selected_examination.indexOf(ex_id) !== -1)
    {
    //already selected, do nothing
    //selected_examination.splice(selected_examination.indexOf(ex_id),1)
    //document.getElementById(list_id).value=selected_examination
    }
    else
    {
      selected_examination.push(ex_id);
      document.getElementById(list_id).value=selected_examination
    }
  }
  if(status=='on')  //now make status of
  {
    if(selected_examination.indexOf(ex_id) !== -1)
    {
    // selected, so, remove
    selected_examination.splice(selected_examination.indexOf(ex_id),1)
    document.getElementById(list_id).value=selected_examination
    }
    else
    {
      //do nothing
      //selected_examination.push(ex_id);
      //document.getElementById(list_id).value=selected_examination
    }
  } 
  manage_all_button_for_ex_id(ex_id)
  //update_sss()    //updating at every call cause client 100% CPU usage
}


function manage_toggle_lable(me)
{
  status=me.getAttribute("data-status")
  if(status=="off")
  {
    me.innerHTML="&uarr;"
    me.setAttribute("data-status","on")

  }
  if(status=="on")
  {
    me.innerHTML="&darr;"
    me.setAttribute("data-status","off")
  }
}
                  
//////////////toggle end////////////////////
function go_down_tree_to_select_all(item, index)
{
  if(item.type=='button')
  {
    //console.log(item.id)
    select_examination_by_ex_id_not_invert(item.id,'selected_examination_list')
  }
  else
  {
    item.childNodes.forEach(go_down_tree_to_select_all)
  }
  
}


function select_examination_by_ex_id_not_invert(ex_element_id,list_id)
{
  ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
  if(selected_examination.indexOf(ex_id) !== -1)
  {
    //already selected, do nothing
    //selected_examination.splice(selected_examination.indexOf(ex_id),1)
    //document.getElementById(list_id).value=selected_examination
  }
  else
  {
    selected_examination.push(ex_id);
    document.getElementById(list_id).value=selected_examination
  }
  
  manage_all_button_for_ex_id(ex_id)
  //update_sss()    //updating at every call cause client 100% CPU usage
}

//////////////////////sync all button
//called by select_examination_js and select_examination_by_ex_id
function manage_all_button_for_ex_id(ex_id)
{
  ul = document.getElementsByTagName("body")[0]; 
  ul.childNodes.forEach(go_down_tree_for_ex_id,{ex_id:ex_id});
}

function go_down_tree_for_ex_id(item,index)
{
  if(item.type=='button' && item.classList.contains("ex_btn"))
  {
    item_id=item.id
    if(item_id != null)
    {
      //console.log(item_id+ "part:" + item_id.split("_")[item_id.split("_").length-1])
      if(item_id.split("_")[item_id.split("_").length-1]==this.ex_id)
      {
        //console.log(this.ex_id+ " found in id")
        display_ex_button(item_id,'selected_examination_list')
      }
    }
  }
  else
  {
    item.childNodes.forEach(go_down_tree_for_ex_id,{ex_id:this.ex_id})
  }
  
}


function display_ex_button(ex_element_id,list_id)
{
  ex_id=document.getElementById(ex_element_id).getAttribute('data-examination_id')
  if(selected_examination.indexOf(ex_id) !== -1)
  {
    document.getElementById(ex_element_id).classList.add('bg-success')
    document.getElementById(ex_element_id).classList.remove('bg-warning')
    document.getElementById(ex_element_id).setAttribute("data-status","on")
  }
  else
  {
    document.getElementById(ex_element_id).classList.remove('bg-success')
    document.getElementById(ex_element_id).classList.add('bg-warning')
    document.getElementById(ex_element_id).setAttribute("data-status","off")
  }
}


function update_sss()
{
  document.getElementById("status-window").innerHTML=''
  
  selected_examination.forEach(
                  function (item,index)
                  {
                  //console.log("button[id$='_"+item+"']")
                  //jquery
                  $("button[id$='_"+item+"']").filter(".ex_btn").each(
                                    function (i, el) 
                                    {
                                      if(i==0)    //even if examination display multiple, status only one button 
                                      {
                                        //console.log(el.id)
                                        //bb='<button class="btn btn-sm btn-outline-info" type=button>'+el.innerHTML+'</button><br>';
                                        //bb=el.innerHTML.split('<br>')[0];
                                        //document.getElementById("status-window").innerHTML = document.getElementById("status-window").innerHTML+bb
//alert(document.getElementById("status-window").innerHTML+ el.getAttribute("data-examination_name"))
document.getElementById("status-window").innerHTML = document.getElementById("status-window").innerHTML + el.getAttribute("data-examination_name") +'<br>'
                                      }
                                    }
                                   );
                  }
                )
                

}


function select_super_profile(me,list_id)
{
  ex_list=me.getAttribute('data-ex_list').split(',')
  status=me.getAttribute('data-status')
  
  //alert(ex_list[2])
  //count=ex_list.length()
  
  if(status=='off')
  {
    ex_list.forEach
    (
      function (i,el)
      {
        if(selected_examination.indexOf(i) !== -1)
        {
          selected_examination.splice(selected_examination.indexOf(i),1)
          document.getElementById(list_id).value=selected_examination
        }
        
        selected_examination.push(i);
        document.getElementById(list_id).value=selected_examination

        manage_all_button_for_ex_id(i)
      }
    )
    
    me.classList.remove('btn-outline-success')
    me.classList.add('btn-success')
    me.setAttribute('data-status','on')
  }
  else
  {
    ex_list.forEach
    (
      function (i,el)
      {
        if(selected_examination.indexOf(i) !== -1)
        {
          selected_examination.splice(selected_examination.indexOf(i),1)
          document.getElementById(list_id).value=selected_examination
        }

        manage_all_button_for_ex_id(i)
      }
    )
    
    me.classList.remove('btn-success')
    me.classList.add('btn-outline-success')
    me.setAttribute('data-status','off')
    
  }

  update_sss()
}

function createContext(color,id) {
    var canvas = document.createElement('canvas');
    id.appendChild(canvas);
    canvas.width = 100;
    canvas.height = 40;
    ctx=canvas.getContext("2d");
    ctx.rect(0, 0, 100, 40);
  ctx.fillStyle = color;
  ctx.fill();
}


function popup_qc_choice(me,html)
{
  const para = document.createElement("div");
  para.innerHTML = html;
  para.id = 'abcd';
  para.style.position="absolute"; 
  para.style.left=me.offsetLeft
  para.style.top=me.offsetTop
  //para.style.width="5%";
  //para.style.height="5%";
  para.style.border="black 1px solid";
  para.style.backgroundColor="lightgray";
  me.appendChild(para);
  //para.addEventListener("click", function(){this.remove();})
  
  document.getElementById("this_lot").addEventListener("click", function(){document.getElementById('abcd').remove()})
}

function w_plus(me)
{
  ta = document.getElementById(me);
  ta.style.width=(Number(ta.style.width.slice(0,-2))+100)+"px";
}

function w_minus(me)
{
  ta = document.getElementById(me);
  ta.style.width=(Number(ta.style.width.slice(0,-2))-100)+"px";
}

function h_plus(me)
{
  ta = document.getElementById(me);
  ta.style.height=(Number(ta.style.height.slice(0,-2))+100)+"px";
}

function h_minus(me)
{
  ta = document.getElementById(me);
  ta.style.height=(Number(ta.style.height.slice(0,-2))-100)+"px";
}

function popup_textarea(me)
{
  
}

function distribute()
{
  //{"UHID":"20250050003","mobile":"9284339954","prefix":"Mrs.","name":"ALATAF JAMMU","middlename":"KHATIK","surname":"",
  //"sex":"Female","DOB":"01\/01\/1989 00:00:00","billing_type":"General","department":"Otorhinolaryngology",
  //"unit":"Unit1","clinic":"OPD-26 (ENT OPD)","address":"AAMBEDKAR CHOK SAKRI","f8":"","f10":"","f11":"","f15":"","f16":""}
  //age added manually
  
  x=document.getElementById("uhid_data").innerHTML
  document.getElementById("r_id_1001").value= JSON.parse(x)["UHID"]
  document.getElementById("r_id_1002").value= JSON.parse(x)["name"]+' '+JSON.parse(x)["middlename"]+' '+JSON.parse(x)["surname"]
  document.getElementById("r_id_1004").value= JSON.parse(x)["department"]
  document.getElementById("r_id_1005").value= JSON.parse(x)["unit"]
  
  //document.getElementById("r_id_1006").value= JSON.parse(x)["clinic"]
  //All arre OPD if outdoor
  //Indoor are selected manually
  //document.getElementById("r_id_1006").value="OPD"
  document.getElementById("r_id_1008").value= JSON.parse(x)["sex"]

  //17-07-1981
  dt=JSON.parse(x)["DOB"].split('-')

  mydate=dt[2]+'-'+dt[1]+'-'+dt[0]
  document.getElementById("r_id_1012").value=mydate
  
  document.getElementById("r_id_1007").value=JSON.parse(x)["age"]
  
  document.getElementById("r_id_1001").setAttribute('tabindex', '-1')
  document.getElementById("r_id_1002").setAttribute('tabindex', '-1')
  document.getElementById("r_id_1004").setAttribute('tabindex', '-1')
  document.getElementById("r_id_1005").setAttribute('tabindex', '-1')
  document.getElementById("r_id_1007").setAttribute('tabindex', '-1')
  document.getElementById("r_id_1008").setAttribute('tabindex', '-1')
  document.getElementById("r_id_1012").setAttribute('tabindex', '-1')
  document.getElementById("source_for_r_id_1012").setAttribute('tabindex', '-1')
  
}



//flatpickr("#myID2", {dateFormat: "Y-m-d"});
//flatpickr("#myID3", {dateFormat: "Y-m-d H:i:S" , enableTime:true,    });
//flatpickr("#myID4", {dateFormat: "Y-m-d H:i:S" , enableTime:true,time_24hr: true,enableSeconds:true});
//flatpickr("#myID5", {dateFormat: "d/m/Y"});
