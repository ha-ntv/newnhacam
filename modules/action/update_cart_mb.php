<?php
$data = isset($_POST['data']) ? $_POST['data']: 0;
$data = json_decode($data,true);
$id_arr = array();
$key_arr = array();
foreach($data as $item => $val) {
   
    $dt = explode(':',$item);
    $id = $dt[0];
    $key = $dt[1];
    $id_arr[]= $id;
    $key_arr[]= $key;
    var_dump($id);
    var_dump($key);
    $_SESSION['cart'][$id][$key] = $val+0;
}
foreach($_SESSION['cart'] as $id => $arr) {
    if(!in_array($id, $id_arr)) unset($_SESSION['cart'][$id]);
    foreach($arr as $key => $val) {
        if(!in_array($key, $key_arr)) unset($_SESSION['cart'][$id][$key]);
    }
}

$response = showMobileCart3();
echo json_encode($response);