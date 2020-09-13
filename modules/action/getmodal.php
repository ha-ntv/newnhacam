<?php
$id = isset($_POST['id']) ? $_POST['id'] : 0;
$isMobile = preg_match("/(android|webos|avantgo|iphone|ipad|ipod|blackberry|iemobile|bolt|boost|cricket|docomo|fone|hiptop|mini|opera mini|kitkat|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
if ($id != 0) {
	$db->table     = "product";
	$db->limit     = "1";
	$db->condition = "product_id =  $id and is_active = 1";
	$db->order     = "";
	$rows          = $db->select();
	foreach ($rows as $row) {
		$img_src = $row['img'] != 'no' && $row['img'] != '' ? '/uploads/product/full-' . $row['img'] : '/images/404.jpg';
		if (!$isMobile) {
?>
			<div class="modal-dialog menuPopupRedBox">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<div class="img imgMenuPopup" style="display:flex;">
							<img src="<?php echo $img_src ?>" style="max-width:110px">
							<div class="food-content" style="padding: 0 10px">
								<h3><?php echo $row['name'] ?></h3>
								<p class=""><?php echo $row['comment'] ?></p>
								<div class="price-unit pull-left">
									Giá: <span class="productprice" id="one-pro-price"><?php echo number_format($row['price'], '0', ',', '.') ?></span><span class="productunit"> VNĐ</span>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<?php
						if ($row['children'] != 0 && $row['children'] != '') {
						?>
							<div class="topping-category-item" style="padding: 10px">
								<div class="topping-name">Topping <span class="topping-note"></span></div>
								<div class="topping-item">
									<div class="row-mod">
										<?php
										$children = $row['children'];
										echo getListTopping($children);
										?>
									</div>
								</div>
							</div>
						<?php
						}
						?>
					</div>
					<div class="modal-footer">
						<div class=" price-addtocart price-addtocartPopup addtocart-desc">
							<div class="topping-add-sub">
								<div class="btn-sub">-</div><input type="text" class="order-no" value="1">
								<div class="btn-adding">+</div>
							</div>
							<div class="cart-price-modal">
								<span id="modal-item-price"><?php echo number_format($row['price'], '0', ',', '.') ?></span><span>VNĐ</span>
							</div>
							<div class="btn-add-cart-wrapper pull-right">
								<input value="<?php echo $row['product_id'] ?>" type="hidden" name="id">
								<input type="hidden" name="addCart">
								<button type="button" class="modal-add-cart-btn btnAddtocart  addtocart pull-right " style="background: none;border:none;cursor: pointer;">
									<img src="/img/responsive/cart.png" alt=" " style="width: 27px;">
								</button>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		<?php
		} else {
		?>
			<div class="modal-dialog mobile-modal">
				<div class="modal-content animate-bottom">
					<div class="modal-nav ">
						<div class="heading-wrapper">
							<nav class="navbar navbar-blue header-modal justify-content-between align-items-center">
								<div class="navbar-left col-auto">
									<span class="navbar-link navbar-link-txt text-left modal-close svg-md" data-dismiss="modal" aria-hidden="true">
										<img class="svg-inline" src="/images/close.svg">
									</span>
								</div>
								<div class="navbar-title text-center col text-truncate">Add item</div>
								<div class="navbar-right col-auto"><span class="navbar-link navbar-link-txt text-right"></span></div>
							</nav>
						</div>
					</div>
					<div class="modal-header shadow-sm" style="padding-top:45px">
						<div class="d-menu-item  no-gutters">
							<div class=" col-auto">
								<div class="menu-item-img"><img src="<?php echo $img_src; ?>" class="img-fluid" alt="" style="max-width:100px"></div>
							</div>
							<div class="col" style="width: calc(100% - 100px)">
								<div class="menu-item-content">
									<h4 class="menu-item-name text-truncate"><?php echo $row['name'] ?></h4>
									<div class="menu-item-price"><span class="price" id="one-pro-price"><?php echo number_format($row['price'], '0', ',', '.') ?></span> VNĐ</div>
									<div class="menu-item-ordernum"><img class="svg-inline" src="/images/cart.svg" style="width:25px"><span class="pl-1"><?php echo showOrderCount($row['order_count']) ?></span></div>
								</div>
							</div>
						</div>
						<div class="menu-item-number ">
							<div class="no-gutters justify-content-end align-items-center update-number" >
								<div class="col-auto text-center"><span class="menu-item-minus"><img class="svg-inline" src="/images/cart-minus.svg"></span></div>
								<div class="col"><input type="number" class="form-control form-control-sm text-center order-no" value="1"></div>
								<div class="col-auto text-center "><span class="menu-item-add"><img class="svg-inline" src="/images/cart-plus.svg"></span></div>
							</div>
						</div>
					</div>
					<div class="modal-body" id="cart-item-mb">
						<div class="menu-item-input" style="display:flex">
							<input type="hidden" name="pro-id" value="<?php echo $row['product_id']?>" >
							<img class="svg-inline menu-item-input-icon" src="/images/cart-pen.svg" >
							<textarea class="form-control txt-note" rows="1" placeholder="Note"></textarea>
						</div>
						<div>
							<?php
							if ($row['children'] != 0 && $row['children'] != '') :
							?>
								<div class="menu-item-type text-truncate">
									<strong class="h5 font-weight-bold">Thêm topping</strong>
								</div>
								<div class="menu-item-option">
									<?php
									echo getListToppingForMobile($row['children']);
									?>
								</div>
							<?php endif; ?>
						</div>
					</div>
					<div class="modal-footer"><span class="menu-item-btnadd btn btn-primary btn-block">+&nbsp;Add to Cart<span style="float:right"><span class="" id="modal-item-price"><?php echo number_format($row['price'], '0', ',', '.') ?></span><span class="unit"> VNĐ</span></span></span></div>
				</div>
			</div>
<?php
		}
	}
}
?>
<script type="text/javascript">
	$('.btnAddtocart').click(function() {

		$('#healthymenu-modal').modal('hide');

	});
	$('[id^="topping-"]').change(function(e) {
		e.stopPropagation()
		if ($(this).is(':checked')) {
			$(this).closest('.mod-input').append('<div class="col-auto"><div class="topping-add-sub"><input type="text" class="topping-val" value="1"><div class="btn-adding topping-btn">+</div></div></div>')
		} else {
			$(this).closest('.mod-input').find('.col-auto').remove();
		}
		updatePrice()
	})
	$(document).on('change', '.topping-val', function(e) {
		e.stopPropagation()
		var val = $(this).val();
		if (val > 1) {
			if (!$(this).siblings('.btn-sub').length) {
				$(this).closest('.topping-add-sub').html('<div class="btn-sub  topping-btn">-</div><input type="text" class="topping-val" value="' + val + '"><div class="btn-adding  topping-btn">+</div>')
			}
		} else {
			$(this).siblings('.btn-sub').remove();
		}
		updatePrice()
	})
	$(document).off('click.modal');
	$(document).on('click.modal', '.btn-adding', function(e) {
		e.stopPropagation()
		var val = $(this).siblings('input').val();
		if ($(this).hasClass('topping-btn') && val == 1) {
			$(this).closest('.topping-add-sub').html('<div class="btn-sub  topping-btn">-</div><input type="text" class="topping-val" value="' + (+val + 1) + '"><div class="btn-adding  topping-btn">+</div>')
		}
		$(this).siblings('input').val(+val + 1);
		updatePrice()
	})
	$(document).on('click.modal', ' .menu-item-add', function(e) {
		e.preventDefault();
		var val = $(this).closest('.update-number').find('input').val();
		
		$(this).closest('.update-number').find('input').val(+val + 1);
		updatePrice()
	})
	$(document).on('click.modal', '.btn-sub ', function(e) {
		e.stopPropagation()
		var val = $(this).siblings('input').val();
		if (val > 1)
			$(this).siblings('input').val(+val - 1);
		else {
			$(this).siblings('input').val('1')
		}
		updatePrice()
	})
	$(document).on('click.modal', ' .menu-item-minus', function(e) {
		e.preventDefault()
		var val = $(this).closest('.update-number').find('input').val();
		if (val > 1)
			$(this).closest('.update-number').find('input').val(+val - 1);
		else {
			$(this).closest('.update-number').find('input').val('1')
		}
		updatePrice()
	})

	function updatePrice() {
		var item_price = $('#one-pro-price').text();
		item_price = item_price.replace(/\./g, '');
		var item_no = $('.order-no').val();
		var topping_price = 0;
		$('[id^="topping-"]:checked').each(function() {
			var quantityInput = $(this).closest('.mod-input').find('.topping-add-sub input');
			var topping_no = quantityInput.length ? quantityInput.val() : 1;
			var price = $(this).siblings('label').find('.topping-item-price').text().replace(/\./g, '');
			topping_price += (+topping_no) * (+price);
		})
		var totalEach = ((+item_price) + topping_price) * (+item_no);
		$('#modal-item-price').text(totalEach.toLocaleString('de-DE'));
	}
	
	$('.menu-item-btnadd, .modal-add-cart-btn').click(function() {
		var topping = '';
		var topping_total = $('[id^="topping-"]:checked').length;
		var txt = $('#cart-item-mb .txt-note').val();
		console.log('note is', txt)
		$('[id^="topping-"]:checked').each(function(index, ele) {

			var topping_id = $(this).val();
			var checkedInput = $(this).closest('.mod-input').find('.topping-add-sub input');
			var topping_no = checkedInput.length ? checkedInput.val(): 1;
			topping += topping_id + '-' + topping_no + (index < topping_total - 1 ? '_' : '');
		})
		var quantity = $('.order-no').val()
		$.ajax({
			url: '/action.php',
			type: 'POST',
			data: 'url=add_cart_topping&id=<?php echo $id ?>&qty=' + quantity + '&topping=' + topping+'&note='+txt,
			dataType: "json",
			success: function(data) {
				$('#listProductBill').html(data.desktop);
				$('.cart-list-responsive1').html(data.mobile);
				$('#healthymenu-modal').modal('hide');
				//mobile
				<?php 
				if($isMobile) : ?>
				$('#total-item-cart').text(data.total_item)
				$('#total-value-cart').text((+data.total).toLocaleString('de-DE') + 'đ');
				$('#d-cart').show();
				<?php endif; ?>
			}
		});
	})
</script>