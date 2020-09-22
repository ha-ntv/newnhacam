<?php
error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
ini_set('error_log','./hantv');
// test me
	$date = new DateClass();
	$stringObj = new String();
	$address = $_POST['address'];
	$txtTel         = $_POST['phone'];
	$order_time         = $_POST['time'];
	$code           = $_POST['code'];
	$shipping 		= isset($_POST['shipping']) ? $_POST['shipping']+0 : 0 ;
	$promo 			= isset($_POST['promo']) ? $_POST['promo']+0 : 0;
	$payment 			= isset($_POST['payment']) ? $_POST['payment']+0 : 0;
	$total = 0;
	$total_item = 0;
	$response = '<div class="order_info_redirect">
					<section class="order_address"><strong>Giao đến: </strong><br>
						<p>'.$address.'</p>
						<p>Thời gian đặt: '.date("d/m/Y h:i").'</p>
					</section>
					<section class="detail_order_area">
						<h3>Nhà Cám</h3>
						<div class="inside_order">';
	if($code != ''){
		$db->table = "others";
		$db->condition = "is_active = 1 and name like '".$code."'";
		$db->limit = "";
		$db->order = "";
		$rows = $db->select();
		if(count($rows) > 0){
			foreach($rows as $row){
				if($txtTotal > $row['p_max'] ){
					$tal=$row['p_price'];
					$status=$row['status'];
					$db->table="others";
					$db->condition="name like '" . $code . "'";
					$data = array(
						'status' => $status + 1,
					);
					$db->update($data);
				}
			}
		}
	}

	$slug_cat74      = getSlugCategory(74);
	$product = '';
	$item = array();
	$productMap = cartInfo();
	$productL = array();
	foreach($_SESSION['cart'] as $key=>$arr) {
		$item[] = $key;
		$each_total = 0;
		foreach($arr as $k => $vl) {
			$each_total += $vl;
		}
		$productL[$key] = $each_total;
	}
	$str = empty($item) ? 0 : implode(",",$item);
	$db->table = "product";
	$db->condition = "is_active = 1 and product_id IN ($str)";
	$db->order = "";
	$db->limit = "";
	$rows_product = $db->select();
	if($db->RowCount>0) {
		foreach($rows_product as $row_product) {
			$viewee = $row_product['order_count'];
			$db->table = "product";
			$db->condition = "`is_active` = 1 and `product_id` = " . $row_product['product_id'];
			$data = array(
				'order_count' => $viewee + $productL[$row_product['product_id']]
			);
			$db->update($data);
		}
	}
	foreach ($_SESSION['cart'] as $key => $arr) {
		$keyList = showToppingCart($productMap, $key, $arr);

		foreach ($keyList as $ele) {
			$total += $ele['total'];
			$total_item += $ele['amount'];
			$alt = stripslashes($productMap[$key]['name']);
			if ($productMap[$key]['img'] != "" && $productMap[$key]['img'] != "no") {
				$img_product = '<img src="' . HOME_URL . '/uploads/product/' . $productMap[$key]['img'] . '" alt="' . $alt . '" />';
				$img_product = '<a href="' . HOME_URL .  '" title="' . stripslashes($productMap[$key]['name']) . '">' . $img_product . '</a>';
			} else {
				$img_product = '<img src="' . HOME_URL . '/images/404-img-pro.jpg" alt="' . $alt . '" />';
				$img_product = '<a href="' . HOME_URL .  '" title="' . stripslashes($productMap[$key]['name']) . '">' . $img_product . '</a>';
			}
			$price = '';
			if($ele['price']>0) $price = '<label style="font-weight:600;padding-left:12px; color:#bb1821;padding-top:5px;">Giá bán: </label> ' . stripslashes(formatNumberVN($ele['price']))  . ' đ<br>';
			else $price = '<label style="font-weight:600;padding-left:12px; color:#bb1821"; padding-top:5px;>Giá bán: </label> Liên hệ<br>';
			
			$product .= '<label style="font-size:15px;font-weight:600;padding-left:12px;text-transform:uppercase;"><a href="'. HOME_URL_LANG . '/" title="' . stripslashes($productMap[$key]['name']) . '">' . stripslashes($productMap[$key]['name']) . '</a></label><br>';
			$product .= '<label style="font-weight:600;padding-left:12px;">Hình ảnh: </label><br><label style="padding-left:12px;padding-bottom:3px;">'. $img_product .'</label><br>';
		
			$product .= $price;
			$product .=  '<label style="font-weight:400;padding-left:12px;">Ghi chú : ' .(isset($_SESSION['note'][$key][$ele['key']])? $_SESSION['note'][$key][$ele['key']]:"") . '</label><br>';
			$response .= '<div class="each_order_item">';
			$response .= '<div class="inner_img">'.$img_product.'<span class="quantity">x'.$ele['amount'].'</span></div>';
			$response .= '<div class="dish_info">'.$alt.'<div class="topping_list">'.showTopping($ele['topping']).'</div></div>';
			$response .= '<div class="price_info"><strong>'.formatNumberVN($ele['total']).'đ</strong></div>';
			$response .= '</div>';
		}
	}
	$response .='</div>';
	$response .='<div class="order_summary">';
	$response .='<div class="order_sum bold">Tổng('.$total_item.' phần)<span class="money">'.formatNumberVN($total).'đ</span></div>';
	$response .='<div class="order_sum">Phí giao hàng:<span class="money">'.formatNumberVN($shipping).'đ</span></div>';
	if($promo > 0) $response .='<div class="order_sum">Giảm giá:<span class="money">'.formatNumberVN($promo).'đ</span></div>';
	$response .='<div class="order_totality">Tổng cộng: <span class="money">'.formatNumberVN($total + $shipping - $promo).'đ</span></div>';
	$response .='</div>';
	
	if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");
	else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;
	$domain = $_SERVER['HTTP_HOST'];

	$date = new DateClass();
	$time_now = time();
	$datetime_now = $date->vnDateTime(time());
	$subject = "[ĐẶT HÀNG] ".$txtName." (".$datetime_now.")";
	$message = '<div marginwidth="0" marginheight="0" style="font-family:Arial,serif;"><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" style="table-layout:fixed;"><tbody><tr><td width="100%" valign="top" bgcolor="#f5f5f5" style="border-top:3px solid #e62127;padding:0;"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;width:100%;"><tbody><tr><td bgcolor="white" style="padding:10px 0; text-align: center;"><a href="' . HOME_URL_LANG .'" target="_blank"><img src="'. HOME_URL . getConstant('file_logo') .'" style="max-height:100px;max-width:80%;" alt="' . getConstant('meta_site_name') . '" border="0"></a></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table border="0" cellpadding="0" cellspacing="0" align="center" style="min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;" width="620"><tbody><tr><td style="border-left:6px solid #e62127;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;" bgcolor="#fdfdfd"><p style="margin: 10px 0">Chào <b> '.$txtName.'</b>,</p><p style="margin: 10px 0">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!<br>Yêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style="margin: 10px 0"><b style="text-decoration:underline;">THÔNG TIN ĐẶT HÀNG CỦA QUÝ KHÁCH:</b><br/><label style="font-weight:600;padding-left:12px;">Họ và tên: </label> ' .$txtName.'<br/><label style="font-weight:600;padding-left:12px;">Địa chỉ: </label> ' .$txtAddress.'<br/><label style="font-weight:600;padding-left:12px;">Email: </label> '.$txtEmail.'<br/><label style="font-weight:600;padding-left:12px;">Điện thoại: </label> '.$txtTel.'<br/>' . $product;	
	$message .= '<label style="font-weight:600;padding-left:12px;">Tổng tiền: </label> ' . number_format($total,'0',',','.') . '<br/>';
	$message .= '<label style="font-weight:600;padding-left:12px;">Phí ship: </label> ' . number_format($shipping,'0',',','.') . '<br/>';
	if($promo > 0){
		$message .= '<label style="font-weight:600;padding-left:12px;">Mã khuyến mãi: </label> '.$code.'<br/><label style="font-weight:600;padding-left:12px;">Tiền khuyến mãi: </label> ' . number_format($promo, '0', ',', '.') . '<br/>';
		
	}
	$message .= '<label style="font-weight:600;padding-left:12px;">Tổng thanh toán: </label> ' . number_format($total + $shipping - $promo, '0', ',', '.') . '<br/>';
	$message .= '<label style="font-weight:600;padding-left:12px;">Ngày đặt: </label> '.$datetime_now.'<br/></p><p><label style="font-weight:600;padding-left:12px;">Địa chỉ giao hàng: </label>'.$address.'</p></td></tr></tbody></table><div style="min-height:35px">&nbsp;</div><table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td bgcolor="#e1e1e1" style="padding:15px 10px 25px"><table border="0" cellpadding="0" cellspacing="0" align="center" style="margin:0 auto;min-width:290px;" width="620"><tbody><tr><td><table width="80%" cellpadding="0" cellspacing="0" border="0" align="left"><tbody><tr><td valign="top" style="font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;">' . getConstant('meta_site_name') . '</td></tr></tbody></table><table width="20%" cellpadding="0" cellspacing="0" border="0"><tbody><tr><td style="font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;"><span>Follow us on</span><br><a href="' . getConstant('link_facebook') . '" target="_blank"><img src="https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png" width="27" height="27" alt="Facebook logo" title="Facebook" border="0" style="padding:3px;"></a>&nbsp;<a href="' . getConstant('link_twitter') . '" target="_blank"><img src="https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png" width="27" height="27" alt="Twitter logo" title="Twitter" border="0" style="padding:3px;"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>';
	$db->table = "order";
	$data = array(
		'phone'=>$db->clearText($txtTel),
		'total'=>$db->clearText($total + $shipping - $promo),
		'content'=>$db->clearText($message),
		'ip'=>$db->clearText($IP_NUMBER),
		'icon'=>'fa-shopping-car',
        'code' => $code,
		'created_time'=>$time_now
	);
	$db->insert($data);
	$id_order = $db->LastInsertID;
	$db->table = "order";
	$db->condition = "order_id = ".$id_order;
	$order_code = "NHACAM_".date('Y'). "_".$id_order ;
	$dt = array('order_code' => $order_code);
	$db->update($dt);
	$response .='<section class="detail_all">
					<h3>Chi tiết đơn hàng</h3>
					<div class="order_sum">Mã đơn hàng: <span class="money">'.$order_code.'</span></div>
					<div class="order_sum">Thời gian đặt: <span class="money">'.$order_time.'</span></div>
					<div class="order_sum">Phương thức thanh toán: <span class="money">'. ($payment == 0 ? 'Tiền mặt': 'Chuyển khoản').'</span></div>
				</section>
				</div>';
	unset($_SESSION['cart']);
	
    if($id_order)

		echo $response;
	else
		echo $txtContact_sendDie;