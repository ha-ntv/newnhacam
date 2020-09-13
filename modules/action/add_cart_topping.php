<?php 

$id = isset($_POST['id']) ? $_POST['id'] : 0;
$qty = isset($_POST['qty']) ? $_POST['qty']+0: 0;
$topping = isset($_POST['topping']) ? $_POST['topping']: '';
$note = isset($_POST['note']) ? $_POST['note']: '';
if($id > 0) {
	if(!isset($_SESSION['cart'][$id]))  {
        $_SESSION['cart'][$id] = array();
    }
}

if($topping) {
    if(isset($_SESSION['cart'][$id][$topping])) $_SESSION['cart'][$id][$topping] += $qty;
    else  $_SESSION['cart'][$id][$topping] = $qty;
    
    $_SESSION['note'][$id][$topping] = $note;
} else {
    if(isset($_SESSION['cart'][$id]['0'])) $_SESSION['cart'][$id]['0'] += $qty;
    else $_SESSION['cart'][$id]['0'] = $qty;
    $_SESSION['note'][$id]['0'] = $note;
}
$cart = calculateCart();
$cart['desktop'] = showCartForDesktop();
$cart['mobile'] = showCartForMobile();
echo json_encode(
   $cart
 );
?> 