<?php
$val = isset($_POST['id']) ? $_POST['id'] : '';
$km = isset($_POST['km']) ? $_POST['km']+0 : 0;
//checkcode next model
$str = array();
$response = array();
$cart_info = calculateCart();


if ($cart_info['total']) {
	$db->table = "others";
	$db->condition = "is_active = 1 and name like '" . $val . "'";
	$db->limit = "";
	$db->order = "";
	$rows = $db->select();
	if (count($rows) > 0) {
		if($rows[0]['others_menu_id'] == 9) {
			if($cart_info['total'] >= (int)$rows[0]['p_max'] && $rows[0]['km'] >= $km ) {
				$km_value = $rows[0]['km'];
				$leg1 = intval(getPage('shipping_rate1', 'comment'));
				$leg2 = intval(getPage('shipping_rate2', 'comment'));
				$cal_value = $km_value <= 2 ? $leg1 : $leg1 + ($km_value-2)*$leg2;
				$response['success'] = true;
				$response['freeship'] = true;
				$response['value'] =  $cal_value;
			} else {
				$response['success'] = false;
				$response['html'] = 'Chưa đủ điều kiện để áp dụng mã';
			}
		} else {
			if($cart_info['total'] >= (int)$rows[0]['p_max']) {
				$response['success'] = true;
				$response['freeship'] = false;
				$value = $rows[0]['p_price'] > 0 ? $rows[0]['p_price']*$cart_info['total']/100 : $rows[0]['p_price1'];
				$end_value = $value > $rows[0]['p_price2'] ? $rows[0]['p_price2']: $value;
				$response['value'] = $end_value;
				
			} else {
				$response['success'] = false;
				$response['html'] = 'Chưa đủ điều kiện để áp dụng mã';
			}
		}
	} else {
		$response['success'] = false;
		$response['html'] = 'Mã không tồn tại';
	}
}
echo json_encode($response);
