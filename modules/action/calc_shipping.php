<?php
$km = isset($_POST['km'])? $_POST['km']+0: 0;
$leg1 = (int)getConstant('shipping_rate1', 'comment');
$leg2 = (int)getConstant('shipping_rate2', 'comment');
$value = $km <= 2 ? $leg1 : $leg1 + ($km-2)*$leg2;
echo $value;