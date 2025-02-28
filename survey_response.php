<?php
echo '<pre>';
print_r($_POST);
echo '</pre>';
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);

$sql='INSERT INTO feedback (sample_id, rating, timestamp) VALUES ("'.$_POST['uid'].'","'.$_POST['rating'].'","'.strftime("%Y-%m-%dT%M:%S").'")';
echo '<br>'.$sql.'<br>';
echo '<a href="survey.php">Back</a>';
?>
