<?php 

$id = isset($_POST['id']) ? $_POST['id'] : 0;
$key = isset($_POST['key']) ? $_POST['key'] : 0;
$qty = isset($_POST['qty']) ? $_POST['qty'] : 1;
if(isset($qty)) {
	$_SESSION['cart'][$id][$key] = $qty;
}
$data = array();
$total_items = 0;
if(count($_SESSION['cart']) > 0){
	$productMap = cartInfo();
	foreach($_SESSION['cart'] as $key => $arr) {
		$keyList = showToppingCart($productMap, $key, $arr);
	
		foreach($keyList as $ele) {
			$total_items +=  $ele['amount'];
			$price          = $ele['price'];
			$price_amount	= $ele['total'];
			if($price==0) $contact = true;
			$total = $total + $price_amount;
		}
	}
		$total_money = ($contact==true) ? 'Liên hệ'  : formatNumberVN($total);
		echo $total_money;
		
}
?>
