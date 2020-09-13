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
?>
<script type="text/javascript">
	window.location.href = '<?= $_SESSION['language'] == 'en' ? '/' : '/vi' ?>';
</script>
<?php
$customer = array();
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
<div class="container">
	<div class="row hidden-md-down">
		<div class="col-xs-12">
			<div class="breadcrumbList">
				<ul class="breadcrumb">
					<li><a href="<?php echo HOME_URL_LANG ?>">Home</a></li>
					<li class="active">Card</li>
				</ul>
			</div>
		</div>
	</div>
	<section class="content">
		<div class="box-wp clearfix">
			<div class="wrap-con detail clearfix">
				<div class="title-detail alg-ctr f-space10">
					<h3 style="line-height: 50px; text-transform: uppercase;text-align: center;font-size: 17px;"><a><?php echo $lgTxt_menu_cart . ' (' . count($_SESSION['cart']) . ')'; ?></a></h3>
				</div>
				<div class="con-wp cart">
					<div class="cart-parent">
						<div class="show-cart"><?php echo showCart(); ?></div>
					</div>
					<div id="order-form" class="f-space15" style="display: none">
						<form id="frmOrder" name="frmOrder" class="frm shopping" method="post" onsubmit="return sendMail('send_order2', 'frmOrder');">
							<input type="hidden" name="txtEnterField" id="txtEnterField" value="<?= $txtEnter_field ?>" />
							<input type="hidden" name="txtEnterMail" id="txtEnterMail" value="<?= $txtEnter_email ?>" />
							<input type="hidden" name="txtEnterTell" id="txtEnterTell" value="<?= $txtEnter_tell ?>" />
							<div class="f-space05 clearfix">
								<div class="form-item form-sm">
									<input type="text" id="txtName" class="form-control" name="txtName" placeholder="<?= $txtContact_name ?>" value="" maxlength="250">
								</div>
								<div class="form-item form-sm">
									<input type="text" id="txtAddress" class="form-control" name="txtAddress" placeholder="<?= $txtContact_address ?>" value="" maxlength="250">
								</div>
								<div class="clearfix"></div>
								<div class="form-item form-sm">
									<input type="text" id="txtEmail" class="form-control" name="txtEmail" placeholder="<?= $txtContact_email ?>" value="" maxlength="250">
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
								<input type="submit" id="btnSendOrder" class="btn_nhan" name="btnSendOrder" value="Gửi" style="max-width: 80px;padding-left: 0px;">
							</div>
							<div class="clearfix"></div>
						</form>
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
	$('.dongia').text('<?php echo $price ?>')
	$('.soluong').text('<?php echo $soluong ?>')
	$('.thanhtien').text('<?php echo $thanhtien ?>')
	$('.huy').text('<?php echo $huy ?>')
	$('.btn1s').val('<?php echo $muahang ?>')
	$('.btn2s').val('<?php echo $capnhap ?>')
	$('.btn3s').val('<?php echo $tieptuc ?>')
	$('.btn4s').val('<?php echo $cancel ?>')
	$('#btn-ordered').click(function(event) {
		$('#order-form').slideToggle()
	});
</script>