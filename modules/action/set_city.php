<?php
    $city = isset($_POST['city'])? $_POST['city']: 'DN';
    setcookie('city', $city, strtotime( '+30 days' ),'/');
?>