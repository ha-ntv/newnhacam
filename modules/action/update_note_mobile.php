<?php 

$id = isset($_POST['id']) ? $_POST['id']+0 : 0;
$key = isset($_POST['key']) ? $_POST['key']+0 : 0;
$txt= isset($_POST['content']) ? $_POST['content'] :'';
if($id > 0 ) {
    if(!isset($_SESSION['note'])) $_SESSION['note'] = array();
    if(!isset($_SESSION['note'][$id]))  $_SESSION['note'][$id] = array();
    $_SESSION['note'][$id][$key] = $txt;
    echo 'Changed';
}
?>