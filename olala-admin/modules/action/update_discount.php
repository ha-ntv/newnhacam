<?php
$discount = isset($_POST['discount'])? $_POST['discount']+0: 0;
$productList = isset($_POST['productList'])? $_POST['productList']: 0;
if($discount && $productList) {
    $sql = 'UPDATE olala_product SET discount = '.$discount.' , sales = 0  WHERE product_id IN ('.$productList.')';
    $res = $db->sql_query($sql);
    if($res) echo 'done';
}
?>