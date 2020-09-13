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


		$total_money = ($contact==true) ? 'Liên hệ'  : formatNumberVN($total);
		//echo $total_money;
           ?>
              <div class="boxwidth120">
            
           <p class="totalItem" style="text-align:left;"><?=$_SESSION['language'] == 'en'? 'Total dishes : ':'Số loại món : '?> <span class="monan monan1"><?php echo count($_SESSION['cart']); ?></span><?=$_SESSION['language'] == 'en'? ' dishes':' món'?></p>
           <p class="totalItem" style="text-align:left;"><?=$_SESSION['language'] == 'en'? 'You have ':'Bạn đặt '?> <span class="monan monan2"><?php echo $total_items; ?></span><?=$_SESSION['language'] == 'en'? ' items':' phần'?></p>
      </div>
      <div class="subtotalPriceBox">
          <p><?=$_SESSION['language'] == 'en'? 'Total':'Tổng cộng'?> <span class="subtotalPrice"><?php echo number_format($total,'0',',','.'); ?></span> vnđ</p>
      </div>
      <div class="clearfix"></div>
         <?php
	}

?>