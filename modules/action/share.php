<?php
if(isset($_POST['send'])) {
    $id         = isset($_POST['id']) ? intval($_POST['id']) : 0;
    $name       = isset($_POST['name']) ? trim($_POST['name']) : '';
    $phone      = isset($_POST['phone']) ? trim($_POST['phone']) : '';
    $email      = isset($_POST['email']) ? trim($_POST['email']) : '';
    $session    = md5(session_id());

    $db->table = "share";
    $data = array(
        'article_id' => $id,
        'name' => $db->clearText($name),
        'phone' => $db->clearText($phone),
        'email' => $db->clearText($email),
        'session' => $db->clearText($session),
        'count' => 0,
        'created_time' => time(),
        'modified_time' => time()
    );
    $db->insert($data);
    if($db->LastInsertID) echo $txtContact_sendOk;
    else echo $txtContact_sendDie;

} else echo 'Error--';