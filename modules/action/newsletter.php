<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['phone'])) {
	$phone = $_POST['phone'];
    if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
    else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;

	$db->table = "newsletter";
	$data = array(
		'phone'         => $db->clearText($phone),
		'ip'            => $db->clearText($IP_NUMBER),
		'is_active'     => 0,
		'created_time'  => time()
	);
	$db->insert($data);
	if($db->LastInsertID > 0) echo $txtNewsletter_sendOk;
	else echo $txtNewsletter_sendDie;
}