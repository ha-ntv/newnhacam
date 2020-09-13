<?php
$id = isset($_POST['id']) ? $_POST['id'] : 0;
$key = isset($_POST['key']) ? $_POST['key'] : 0;
$n = array();
$total = 0;
if ($id > 0) {
	delItemCart($id, $key);
	echo json_encode(
		array(
			'desktop' => showCartForDesktop() ,
			'mobile' => showCartForMobile(),
		)
	 );
} 