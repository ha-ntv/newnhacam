<?php 

$id = isset($_POST['id']) ? $_POST['id'] : 0;
$qty = isset($_POST['qty']) ? $_POST['qty'] : array();
if(isset($qty)) {
	updateCart($qty);
}
foreach($_SESSION['cart'] as $key=>$value) {
		$item[] = $key;
	}
	$str = empty($item) ? 0 : implode(",",$item);

	$db->table = "product";
	$db->condition = "is_active = 1 and product_id IN ($str)";
	$db->order = "created_time DESC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount>0) {
		$total = 0;
		$contact = false;
		foreach($rows as $row) {
			$img_product    = '';
			$name_product   = '';
			$price_product  = '';
			$money_price    = '';
			$price          = 0;
			$price_amount   = 0;
			$price          = $row['price']+0;
			$price_product  = ($price==0) ? 'Liên hệ'  : formatNumberVN($price);
			$price_amount   = $price*$_SESSION['cart'][$row['product_id']];
			$money_price    = ($price==0) ? 'Liên hệ'  : formatNumberVN($price_amount);
			if($price==0) $contact = true;
			$total = $total + $price_amount;

		}
		$total_money = ($contact==true) ? 'Liên hệ'  : formatNumberVN($total);
		echo $total_money;
	}

?>