<?php
if (!defined('TTH_SYSTEM')) {
	die('Please stop!');
}
//
$step = isset($_GET['step']) ? intval($_GET['step']) : 0;
if (isset($_POST['remove'])) {
	removeCart();
}
if (isset($_SESSION['cart']))
	$cart = $_SESSION['cart'];
else
	$cart = array();
$_SESSION['cart'] = $cart;
if (isset($_POST['addCart']) && isset($_POST['id'])) {
	addToCart($_POST['id'] + 0, 1);
}
if (isset($_GET['del']) && isset($_GET['key'])) {
	delItemCart($_GET['del'], $_GET['key']);
}
if (isset($_POST['updates']) && isset($_POST['qty'])) {
	updateCart($_POST['qty']);
}
$customer = array();
if ($_SESSION['user_id']) {
	$db->table = "core_user";
	$db->condition = "user_id = " . $_SESSION['user_id'];
	$db->limit = 1;
	$user = $db->select('email');
	$user_email = $user[0]['email'];
}
$isMobile = preg_match("/(android|webos|avantgo|iphone|ipad|ipod|blackberry|iemobile|bolt|boost|cricket|docomo|fone|hiptop|mini|opera mini|kitkat|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
if (!$isMobile) :
?>
	<style type="text/css">
		.form-order {
			width: 100%;
		}

		.con-wp.cart {
			width: 100%;
			margin: 10px 0px 10px;
		}

		.form-order thead tr td {
			padding: 8px 0px;
		}

		.form-order thead {
			background: #fafafa;
		}

		.cart-parent {}

		.wrap-con {
			padding: 10px;
			background: #fff;
			margin-bottom: 10px;
		}

		.show-cart table tr {
			border-bottom: 1px solid #f1f0f0;
		}

		.show-cart table strong {
			padding: 10px 0px;
			display: inline-block;
		}

		.show-cart table {
			margin-bottom: 10px;
		}

		#btn-ordered {
			margin-right: 5px;
		}

		.img a {
			margin: 5px 0px;
			display: inline-block;
		}

		.show-cart table tr td {
			text-align: center;
		}

		.show-cart table input {
			max-width: 70px;
			box-shadow: none;
			text-align: center;
			border-radius: 2px;
			border: 1px solid #999;
		}

		.show-cart form>input,
		.btn_nhan {
			color: #fff;
			border: 0px;
			box-shadow: none;
			padding: 5px 10px;
			outline: none;
			background: -moz-linear-gradient(to bottom, #753b16 0%, #d4911f 100%);
			background: -webkit-linear-gradient(to bottom, #753b16 0%, #d4911f 100%);
			background: linear-gradient(to bottom, #753b16 0%, #d4911f 100%);
		}

		.detail-wp .form-contact {
			margin: 0 auto;
		}

		.form-sm {
			padding: 5px;
			width: 50%;
			float: left;
		}

		.form-lg {
			padding: 5px;
			width: 100%;
			float: left;
		}

		.form .form-item {
			position: relative;
			margin: 0;
			padding: 7px;
		}

		.form .form-item:nth-child(2n+3) {
			clear: both;
		}

		.form .form-item input,
		.form .form-item select,
		.form .form-item textarea {
			background-color: #f7f7f7;
			border: 1px solid #d8d9dd;
			padding: 8px 10px 8px 35px;
			width: 100%;
		}

		.form .form-item textarea {
			resize: none;
		}

		.form .form-item i {
			left: 7px;
			top: 8px;
			position: absolute;
			width: 40px;
			height: 38px;
			color: #b8b8b8;
			text-align: center;
			line-height: 34px;
			-webkit-transition: all 0.3s ease-out;
			-moz-transition: all 0.3s ease-out;
			-ms-transition: all 0.3s ease-out;
			-o-transition: all 0.3s ease-out;
			transition: all 0.3s ease-out;
			pointer-events: none;
		}

		.form .form-item input:hover~i,
		.form .form-item select:hover~i,
		.form .form-item textarea:hover~i {
			color: #39b54a;
		}

		.form .form-item input:focus~i,
		.form .form-item select:focus~i,
		.form .form-item textarea:focus~i {
			color: #39b54a;
		}

		.form .form-item input[type=submit] {
			background-color: #39b54a;
			border: none;
			width: 100%;
			padding: 10px 10px 8px;
			display: inline-block;
			color: #ffffff;
			font-size: 15px;
			font-weight: normal;
			max-width: 250px;
			text-transform: uppercase;
		}

		.form .form-item input[type=submit]:hover,
		.form .form-item input[type=submit]:focus {
			background-color: #39b54a;
		}

		.form .form-item .show-error {
			color: #f70626;
			font-size: 13px;
			font-weight: 300;
			white-space: nowrap;
		}

		.form-item.it-error input,
		.form-item.it-error select,
		.form-item.it-error textarea {
			border: 1px solid #ff6e69;
		}

		#frmOrder {
			margin-top: 20px;
			margin-bottom: 10px;
		}

		#frmOrder input {
			width: 100%;
			display: inline-block;
			padding: 5px 0px;
			padding-left: 10px;
		}

		.form-item.form-bg {
			padding: 5px;
		}

		.form-item.form-bg textarea {
			width: 100%;
			display: inline-block;
		}
	</style>
	<script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfPZhOobyQI9SCUhFCAxO7FaSBWIKTrRQ&amp;sensor=false&amp;libraries=places&amp;language=vi&amp;callback=initMap"></script>
	<div class="container">
		<div class="row hidden-md-down">
			<div class="col-xs-12">
				<div class="breadcrumbList">
					<ul class="breadcrumb">
						<li><a href="<?php echo HOME_URL_LANG ?>">Home</a></li>
						<li class="active"><?= $_SESSION['language'] == 'en' ? 'Cart' : 'Giỏ hàng' ?></li>
					</ul>
				</div>
			</div>
		</div>
		<section class="content">
			<div class="box-wp clearfix">
				<div class="wrap-con detail clearfix">
					<div class="con-wp cart">
						<div class="cart-parent">
							<div class="show-cart"><?php echo showCart(); ?></div>
						</div>
						<div id="map"></div>
						<div id="order-form" class="f-space15">
							<form id="frmOrder" name="frmOrder" class="frm shopping" method="post" onsubmit="return sendMail('send_order2', 'frmOrder');">
								<input type="hidden" name="txtEnterField" id="txtEnterField" value="<?= $txtEnter_field ?>" />
								<input type="hidden" name="txtEnterMail" id="txtEnterMail" value="<?= $txtEnter_email ?>" />
								<input type="hidden" name="txtEnterTell" id="txtEnterTell" value="<?= $txtEnter_tell ?>" />
								<input type="hidden" name="s" id="start" value="<?php echo getConstant('address_contact') ?>" />
								<input type="hidden" name="total1" id="total1" value="" class="tongtien1">
								<div class="f-space05 clearfix">
									<div class="form-item form-sm">
										<input type="text" id="txtName" class="form-control" name="txtName" placeholder="<?= $txtContact_name ?>" value="" maxlength="250">
									</div>
									<div class="form-item form-sm">
										<input type="text" id="txtCode" class="form-control" name="code" placeholder="<?= $txtCode ?>" value="" maxlength="250">
									</div>
									<div class="form-item" style="padding: 0px 5px;">
										<input type="text" id="end" class="form-control" name="txtAddress" placeholder="<?= $txtContact_address ?>" value="" maxlength="250">
									</div>
									<div class="clearfix"></div>
									<div class="form-item form-sm">
										<input type="text" id="txtEmail" class="form-control" name="txtEmail" placeholder="<?= $txtContact_email ?>" value="<?= $user_email ?>" maxlength="250">
									</div>
									<div class="form-item form-sm">
										<input type="text" id="txtTell" class="form-control" name="txtTell" placeholder="<?= $txtContact_fone ?>" value="" maxlength="20">
									</div>
								</div>
								<div class="form-item form-bg">
									<textarea id="txtContent" name="txtContent" class="form-control" placeholder="<?= $txtContact_content ?>" cols="60" rows="5"></textarea>
								</div>
								<div class="form-sm hidden-xs"></div>
								<div class="form-item form-sm">
									<input type="submit" id="btnSendOrder" class="btn_nhan" name="btnSendOrder" value="<?= $_SESSION['language'] == 'en' ? 'Submit' : 'Gửi' ?>" style="max-width: 80px;padding-left: 0px;">
								</div>
								<div class="clearfix"></div>
							</form>
							<div class="">
								<span id="infoDirections"></span>
								<input type="hidden" id="distance-value" value="0">
							</div>
							<script type="text/javascript">
								window.onload = check_order();
							</script>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script type="text/javascript">
		$('.hinhanh').text('<?php echo $hinhanh ?>')
		$('.sanpham').text('<?php echo $sanpham ?>')
		$('.dongia').text('<?php echo $price_unit ?>')
		$('.soluong').text('<?php echo $soluong ?>')
		$('.thanhtien').text('<?php echo $thanhtien ?>')
		$('.luuy').text('<?php echo $note_lang ?>')
		$('.huy').text('<?php echo $huy ?>')
		$('.btn1s').val('<?php echo $muahang ?>')
		$('.btn2s').val('<?php echo $capnhap ?>')
		$('.btn3s').val('<?php echo $tieptuc ?>')
		$('.btn4s').val('<?php echo $cancel ?>')

		$('#txtCode').change(function(event) {
			var val = $(this).val();
			var distance = $('#distance-value').val()
			showLoader();
			$.ajax({
				url: '/action.php',
				type: 'POST',
				data: 'url=getValueGetCode&id=' + val + '&km=' + distance,
				dataType: "json",
				success: function(data) {
					closeLoader();
					if (data.success) {
						alert('Đã áp dụng mã thành công')
					} else {
						alert(data.html)
						$('#txtCode').val('');
					}
				}
			});
			return false;
		})



		$('.btn-icon.plus').click(function() {
			var n = $(this).siblings('input').val()
			n = Number(n) + 1;
			$(this).siblings('input').val(n);
			var that = this;
			var a = $(this).siblings('input').attr('data-id');
			var key = $(this).siblings('input').attr('data-key');
			showLoader();
			$.ajax({
				url: '/action.php',
				type: 'POST',
				data: 'url=update_cart3&id=' + a + '&key=' + key + '&qty=' + n,
				dataType: "json",
				success: function(data) {
					closeLoader();
					$(that).closest('tr').find('.totalitem').text(data.item);
					$(that).closest('tbody').find('.total').text(data.total);
				}
			});
			return false;

		})


		$('.btn-icon.minus').click(function() {
			var that = this;
			var n = $(this).siblings('input').val()
			if (n > 1) {
				n = Number(n) - 1;
				$(this).siblings('input').val(n);

				var a = $(this).siblings('input').attr('data-id');
				var key = $(this).siblings('input').attr('data-key');
				showLoader();
				$.ajax({
					url: '/action.php',
					type: 'POST',
					data: 'url=update_cart3&id=' + a + '&key=' + key + '&qty=' + n,
					dataType: "json",
					success: function(data) {
						closeLoader();
						$(that).closest('tr').find('.totalitem').text(data.item);
						$(that).closest('tbody').find('.total').text(data.total);
					}
				});
				return false;
			}
		})
		$('.w-100').change(function() {
			var txt = $(this).val();
			var id = $(this).attr('data-id');
			var key = $(this).attr('data-key');
			showLoader();
			$.ajax({
				url: '/action.php',
				type: 'POST',
				data: 'url=update_note&id=' + id + '&txt=' + txt + '&key=' + key,
				dataType: "html",
				success: function(data) {
					closeLoader();

				}
			});
		});
	</script>
<?php endif; ?>
<?php if ($isMobile) : ?>
<script type="text/javascript" src="/js/jquery.toaster.js"></script>
	<div id="modal-confirm">
		<div class="modal-dialog" role="document">
		<?php 
			$response = showMobileCart3();
			if($response['total'] > 0) :  
			?>
			<div class="modal-content">
				<div class="modal-nav ">
					<div class="container">
						<nav class="navbar row justify-content-between align-items-center">
							
							<div class="navbar-title col text-truncate text-center">Nhà Cám</div>
							
						</nav>
					</div>
				</div>
				<div class="modal-body" id="payment_mb_modal" style="overflow-y:auto">
					<hr class="hr-space">
					<section class="o-menu">
						<div class="container">
							<div id="payment-cart-info">
								<?php echo $response['html']; ?>
							</div>
						</div>
					</section>
					<section class="o-fee">
						<div class="container">
							<div class="row-mod o-fee-item o-fee-sum total-before">
								<div class="">Total <strong id="pm-total-item"><?php echo $response['total_item'] ?></strong> items&nbsp;</div>
								<div class=""><strong id="pm-total-cart"><?php echo formatNumberVN($response['total']) ?>đ</strong></div>
							</div>
							<div class="row-mod o-fee-item o-fee-sum shipping-part" id="shipping-part" style="display:none">
								<div class="">Phí ship </div>
								<div class=""><strong id="shipping-calc"></strong></div>
							</div>
							<div class="row-mod o-fee-item o-fee-sum promo-part" id="promo-part" style="display:none">
								<div class="">Khuyến mãi </div>
								<div class=""><strong  id="promo-calc"></strong></div>
							</div>
							<div class="row-mod o-fee-item  o-fee-total">
								<div class="">Total :</div>
								<div class=""><strong  id="pm-total-value"><?php echo formatNumberVN($response['total']) ?>đ</strong></div>
							</div>
						</div>
					</section>
					<hr class="hr-space o-hr">
					<section class="o-function" id="note-address-promo">
						<div class="o-function-item is-active modal-button note-modal-mb-btn">
							<div class="o-function-img" ><img src="/images/cart-pen.svg" class="inline-svg"></div>
							<div class="o-function-note text-truncate">
								<div class="o-function-note-img"></div> Note
							</div>
						</div>
						<div class="o-function-item modal-button address-btn">
							<div class="o-function-img " ><img src="/images/destination.svg" class="inline-svg"></div>
							<div class="o-function-note text-truncate"><span class="false align-middle">Address</span></div>
						</div>
					</section>
					
				</div>
				<div class="modal-footer border-0"><span class="btn btn-primary  modal-button modal-footer-btn blue font-weight-bold" id="checkout_btn">Submit Order</span><span class="foo-btn-number"><?php echo $response['total_item'] ?> items </span><span class="foo-btn-price"><?php echo formatNumberVN($response['total']) ?>đ</span></div>
			</div>
			<?php endif; ?>
		</div>
	</div>
<?php endif; ?>