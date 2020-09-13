<?php

$id = isset($_POST['id']) ? $_POST['id'] : 0;
$qty = isset($_POST['qty']) ? $_POST['qty'] + 0 : 0;
if (isset($qty) && $id > 0) {
  if (!isset($_SESSION['cart'][$id])) {
    $_SESSION['cart'][$id] = array();
    $_SESSION['cart'][$id][0] = $qty;
  } elseif ($_SESSION['cart'][$id][0]) $_SESSION['cart'][$id][0] += $qty;
  else $_SESSION['cart'][$id][0] = $qty;
}
echo showCartForDesktop()
?>
