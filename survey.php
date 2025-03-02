<?php
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '      <link rel="stylesheet" href="project_common.css">
      <script src="project_common.js"></script>'; 
      
  ////////User code below/////////////////////
echo '<script>
function no_enter()
{
  if(event.keyCode === 13) 
  {
    //alert("You have pressed Enter key, use submit button instead");
    return false;
  }
}

setTimeout(
            function()
              {         
                th=document.getElementsByClassName("thanks");
                for (i = 0; i < th.length; i++) 
                {
                        th[i].style.display="none";
                }
              }
            ,5000
          );

</script>';

echo '
    <div class="container">
    <form method="POST" id="application" action="survey.php" >
     <h4>Feedback</h4>
     <h4>Collection/Biochemistry</h4>
     <h4>STEM/NCHS/Surat</h4>
       <div class="rating-buttons">
            <input class="form-control" required type=text name="uid" placeholder=sample_id autofocus    onkeypress="return no_enter();"/>
            <button class="btn btn-block center btn-danger   " type="submit" name="rating" value=1 >&#9733;</button>
            <button class="btn btn-block center btn-warning  " type="submit" name="rating" value=2>&#9733;&#9733;</button>
            <button class="btn btn-block center btn-info     " type="submit" name="rating" value=3>&#9733;&#9733;&#9733;</button>
            <button class="btn btn-block center btn-primary  " type="submit" name="rating" value=4>&#9733;&#9733;&#9733;&#9733;</button>
            <button class="btn btn-block center btn-success " type="submit" name="rating" value=5>&#9733;&#9733;&#9733;&#9733;&#9733;</button>
            <input type=hidden name=session_name value=\''.$_POST['session_name'].'\'>
            
        </div>
    </form>';


//echo '<pre>';
//print_r($_POST);
//echo '</pre>';

if(isset($_POST['rating']))
{
  $link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
  $sql='INSERT INTO feedback 
            (sample_id, rating, timestamp) VALUES ("'.$_POST['uid'].'","'.$_POST['rating'].'","'.strftime("%Y-%m-%dT%H:%M:%S").'") 
            on duplicate key 
            update
            rating="'.$_POST['rating'].'" ,
            timestamp="'.strftime("%Y-%m-%dT%H:%M:%S").'"
            ';
            
  //echo '<br>'.$sql.'<br>';
  if($result=run_query($link,$GLOBALS['database'],$sql,$display_error='no')===False)
  {
    echo '<h5 class="text-danger thanks" >No Such Sample ID</h5>';
  }
  else
  {
    echo '<h2 class="text-success thanks">Thank you for giving '.$_POST['rating'].' star rating </h2>';
  }
}

echo '</div>';
tail();

?>
