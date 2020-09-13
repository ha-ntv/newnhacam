<?php 


$key = isset($_POST['key']) ? $_POST['key']+0 : 0;
$qty = isset($_POST['val']) ? $_POST['val']+0 : 1;
$id = isset($_POST['id']) ? $_POST['id']+0 : 0;
$response = array();
if($id) {
    if($qty) {
        $_SESSION['cart'][$id][$key] = $qty;
    } else {
        unset($_SESSION['cart'][$id][$key]);
        $flg = false;
        foreach($_SESSION['cart'] as $key => $arr) {
            if(count($_SESSION['cart'][$key])) $flg = true;
            break;
        }
        if(!$flg) $_SESSION['cart'] = NULL;
    }
    if(count( $_SESSION['cart'] )) {
        $response['count'] = count( $_SESSION['cart']);
        $response['html'] = showMobileCart2();
    } else {
        $response['count'] = 0;
        $response['html'] = '';
    }
}
echo json_encode($response);
