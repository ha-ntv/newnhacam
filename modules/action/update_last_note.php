<?php 


$txt= isset($_POST['content']) ? $_POST['content'] :'';
if($txt) {
   
    $_SESSION['last_note'] = $txt;
    echo 'Changed';
}
?>