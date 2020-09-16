function $$$(id) {
	return document.getElementById(id);
}
function	Forward(url) {
	window.location.href = url;
}
function	_postback() {
	return void(1);
}
jQuery.fn.exists = function(){ return this.length > 0; }
//----------------------------------------------------------------------------------------------------------------------
function ajaxFunction() {
	var xmlHttp=null;
	try {
		// Firefox, Internet Explorer 7. Opera 8.0+, Safari.
		xmlHttp = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer 6.
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try{
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e) {
				return false;
			}
		}
	}
}

//----------------------------------------------------------------------------------------------------------------------
/**
 *
 * @param obj
 * @returns {string}
 */
function $query(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		var t = $(obj).find("input").eq(i);
		if ((t.attr("type") != "checkbox") && (t.attr("type") != "button") && (t.attr("type") != "radio") ) {
			if (t.attr("type") != "password") {
				query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
			} else {
				query += "&"+t.attr("name")+"="+document.getElementById(t.attr("name")).value;
			}
		}
		else {
			if(t.attr("type") == "checkbox") {
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
			else if (t.attr("type") == "radio") {
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
		}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
	});
    $(obj).find("button").each(function(i) {
        var t = $(obj).find("button").eq(i);
        query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
    });
	$(obj).find("select").each(function(i) {
		var t = $(obj).find("select").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
	});

	return query.substring(1);
}

//----------------------------------------------------------------------------------------------------------------------
function $query_unt(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		var t = $(obj).find("input").eq(i);
		if((t.attr("type") != "button") && (t.attr("type") != "submit") && (t.attr("type") != "reset") && (t.attr("type") != "hidden")) {
			if ((t.attr("type") != "checkbox") && (t.attr("type") != "radio") ) {
				t.val('');
			} else {
				t.attr("checked", false);
			}
		} else {}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		t.val('');
	});
	return true;
}


//----------------------------------------------------------------------------------------------------------------------
function showResult(type,data) {
	closeLoader();
	$("#"+type+"").html(data).hide().fadeIn(100);
	block = false;
}

//----------------------------------------------------------------------------------------------------------------------
$(document).ready(function() {
    $(".olala-vp360").each(function () {
        $(this).html('');
    	$(this).Valiant360();
    });
	$(window).scroll(function() {
		if($(this).scrollTop() > 50){
			$('#go-top').stop().animate({
				bottom: '50px'
			}, 500);
		}
		else{
			$('#go-top').stop().animate({
				bottom: '-50px'
			}, 500);
		}
	});
	$('#go-top').click(function() {
		$('html, body').stop().animate({
			scrollTop: 0
		}, 500, function() {
			$('#go-top').stop().animate({
				bottom: '-50px'
			}, 500);
		});
	});
    // $("#scroll_support").scrollToFixed({
    //     marginTop: 20,
    //     limit: function() {
    //         var limit = $('.content').offset().top + $('.content').height() - $("#scroll_support").outerHeight(true);
    //         return limit;
    //     },
    //     zIndex: 3
    // });
});
// $(window).load(function() {
    // $(".detail-wp img").each(function () {
    //     var ck = $(this).parent('a').length;
    //     if($(this).width()>100 && ck==0) {
    //         $(this).replaceWith('<a class="f-zoom" data-fancybox="photos" href="'+$(this).attr('src')+'">'+$(this)[0].outerHTML +'</a>');
    //     }
    // });
// });
//----------------------------------------------------------------------------------------------------------------------
function sendMail(type, id) {
    var dataList = $query('#' + id);
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url='+type+'&'+dataList,
        dataType: "html",
        success: function(data){
            closeLoader();
            $query_unt('#' + id);
            if(type == 'send_order1') {
            	window.location.href = '/thank-you-reservation'
            } else {
            	alert(data);
            }
           if(type == 'send_order2') window.location.href = '/thank-you-reservation'
        }
    });
    return false;
}

//----------------------------------------------------------------------------------------------------------------------
function form_check(){
    var inputs = document.getElementById('form_contact');
	var err_field = $("[name='lang_field']").val();
	var err_email = $("[name='lang_email']").val();
	var err_phone = $("[name='lang_phone']").val();
	var run_onchange = false;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var name = inputs[i].getAttribute('name');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(name != 'address' && name != 'send') {
					span.innerHTML = err_field;
				}
			}
			if(name == 'email' && value != '') {
				var return_val=email_filter.test(value);
				if(return_val==false){span.innerHTML = err_email;}
			}
			if(name == 'tel' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_phone;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.borderColor = '#f70626';
			}
		}
		return !errors;
	}

	var register = document.getElementById('_send');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.borderColor = '#d8d9dd';
				valid();
			}
		}
	}
}



function register_newsletter() {
    var phone = document.forms['newsletter']['phone'].value;
    var phone_filter=/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,7}$/i;
    var test = true;
    test = phone_filter.test(phone);
    if(test==false) {
        alert('Số điện thoại bạn nhập không hợp lệ.');
        return false;
    } else {
        showLoader();
        $.ajax({
            url:'/action.php',
            type: 'POST',
            data: 'url=newsletter&phone='+phone,
            dataType: 'html',
            success: function(data){
                closeLoader();
                $('#newsletter_phone').val('');
                alert(data);
            }
        });
    }
    return false;
}
function check_order(){
	var input = document.forms['frmOrder'].getElementsByTagName('input');
	var txtarea = document.forms['frmOrder'].getElementsByTagName('textarea');

	var err_field = $('#txtEnterField').val();
	var err_email = $('#txtEnterMail').val();
	var err_tell = $('#txtEnterTell').val();

	var inputs = new Array();
	for(var i=0; i<(input.length+txtarea.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=txtarea[i-input.length];
	}
	var run_onchange = false;
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if( value == ''){
				if(id != 'txtAddress'  && id != 'btnSendOrder' && id != 'txtCode' && id != 'total1') {
					span.innerHTML = err_field;
				}
			}
			if(id == 'txtEmail' && value != '') {
				var returnval=emailfilter.test(value);
				if(returnval==false){span.innerHTML = err_email;}
			}
			if(id == 'txtTell' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_tell;}
				if(isNaN(value) == false && value.length < 10){span.innerHTML = err_tell;}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #ff6e69';
			}
		}
		return !errors;
	}

	var register = document.getElementById('btnSendOrder');
	register.onclick = function(){
		return valid();
	}

	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e0e1e0';
				valid();
			}
		}
	}
}
function showMobileCart() {
	$.ajax({
		url: '/action.php',
		type: 'POST',
		data: 'url=calculateCart',
		dataType: "json",
		success: function(data) {
			$('#total-item-cart').text(data.total_item)
			$('#total-value-cart').text((+data.total).toLocaleString('de-DE') + 'đ');
			$('#d-cart').show();
		}
	});
}

$(document).ready(function(){
	$('#open_category').click(function(){
		$.ajax({
			url: '/action.php',
			type: 'POST',
			data: 'url=get_category_modal',
			dataType: 'html',
			success: function(data) {
				$('#healthymenu-modal').html(data);
				$('.d-filter-material-menu').show();
				$('#healthymenu-modal').modal('show');
			}
		});
	})
	$('.see-mb-cart').click(
		function(){
			$.ajax({
				url: '/action.php',
				type: 'POST',
				data: 'url=cart_detail',
				dataType: 'html',
				success: function(data) {
					$('#healthymenu-modal').html(data);
					$('#healthymenu-modal').modal('show');
				}
			});
		}
	)
	$(document).on('click', '.reset-cart', function(){
		var val = confirm('You want to reset the cart ?');
		
		if(val) {
			$.ajax({
				url:'/action.php',
				type: 'POST',
				data: 'url=detroy_cart',
				dataType: "html",
				success: function(data){
					$('#d-cart').hide();
				}
			  });
			  if(/\/payment/.test(location.pathname)) location.href = '/';
		}
	})
	$(document).on('click','.modal-close', function() {
		$('#healthymenu-modal').modal('hide');
	}); 
	$(document).on('click', '.menu-item-input > img', function(){
		var id = $(this).siblings('input[name="pro-id"]').val();
		// $('#note_menu2 input[name="key"]').val(id);
		// $('#note_menu2').modal('show');
		$(this).siblings('textarea').focus();
	})
	$(document).on('click', '.item-note', function(){
		var id = $(this).data('id');
		var key = $(this).data('key');
		 $('#note_menu2 input[name="id"]').val(id);
		 $('#note_menu2 input[name="key"]').val(key);
		 $('#note_menu2').modal('show');
	})
	$(document).on('click', '#detail-mb-cart .d-menu-item .menu-item-minus , #detail-mb-cart .d-menu-item .menu-item-add', function(){
		var qtyEle = $(this).closest('.menu-item-number').find('.item-amount');
		var key = $(this).closest('.menu-item-number').find('input[name="cart-key"]').val();
		var id = $(this).closest('.menu-item-number').find('input[name="cart-key"]').attr('data-id');
		var val = parseInt(qtyEle.text(), 10);
		if($(this).hasClass('menu-item-minus')) {
			val -=1;
		} else {
			val +=1;
		}
		$.ajax({
			url:'/action.php',
			type: 'POST',
			data: 'url=update_cart_mobile&key='+key+'&val='+val+'&id='+id,
			dataType: "json",
			success: function(data){
				if(+data.count == 0) {
					$('#healthymenu-modal').modal('hide');
					$('#d-cart').hide();
				} 
				else {
					$('#mobile-cart-wrapper').html(data.html)
				}
			}
		  });
		
	})
	$(document).on('click', '#detail-mb-cart-payment .d-menu-item .menu-item-minus , #detail-mb-cart-payment .d-menu-item .menu-item-add', function(){
		var qtyEle = $(this).closest('.menu-item-number').find('.item-amount');
		var key = $(this).closest('.menu-item-number').find('input[name="cart-key"]').val();
		var id = $(this).closest('.menu-item-number').find('input[name="cart-key"]').attr('data-id');
		var val , originVal;
			val = originVal = parseInt(qtyEle.text(), 10);
		var originAmount = parseInt($('#payment_total_item').text(),10);
		var originCheckoutValue = parseInt($('#payment_total_checkout').text().slice(0, -4).replace(/\./g,''));
		
		var price = parseInt($(this).closest('.payment-item-root').find('.payment-cont').text().slice(0, -1).replace(/\./g,''),10);
		
		if($(this).hasClass('menu-item-minus')) {
			val -=1;
			originAmount -=1;
			originCheckoutValue -= price;
		} else {
			val +=1;
			originAmount +=1;
			originCheckoutValue += price;
		}
		if(val == 0) {
			$(this).closest('.payment-item-root').remove();
		}
		qtyEle.text(val);
		$('#payment_total_item').text(originAmount);
		$('#payment_total_checkout').text(originCheckoutValue.toLocaleString('de-DE') + ' VNĐ');
	})
	$(document).on('click', '.update-note', function(){
		var id = $('#note_menu2 input[name="id"]').val();
		var key = $('#note_menu2 input[name="key"]').val();
		var content = $('#note_menu2 .dialog-input').val();
		if(content) {
			$.ajax({
				url:'/action.php',
				type: 'POST',
				data: 'url=update_note_mobile&id='+id + '&key='+key+'&content='+content,
				dataType: "json",
				success: function(data){
					console.log('update');
				}
			  });
			}
		$('#note_menu2').modal('hide');	
	});
	$(document).on('click', '#payment-cart-info', function(){
		$.ajax({
			url: '/action.php',
			type: 'POST',
			data: 'url=get_cart_detail_mobile',
			dataType: 'html',
			success: function(data) {
				$('#mobile-cart-info-modal').html(data);
				$('#mobile-cart-info-modal').modal('show');
			}
		});
	})
	$(document).on('click', '.d-cart-btn', function(){
		location.href = '/payment';
	})
	$(document).on('click', '.apply-promo-cd', function(){
		if($(this).hasClass('code-apply')){
			var code = $(this).closest('.promotions-order').find('.promo-code').text();
		} else {
			var code = $(this).siblings('input').val();
		}
		if(code) {
			showLoader();
			$.ajax({
				url: '/action.php',
				type: 'POST',
				data: 'url=getValueGetCode&id=' + code ,
				dataType: "json",
				success: function(data) {
					closeLoader();
					if (data.success) {
						$('#voucher').val(code);
						$('#mobile-address-promote-modal').modal('hide');
						$('.promo-code-btn').append('<div id="after-code"><div class="o-function-note ">'+code+'</div></div>')
						$('#promo-part').show();
						$('#promo-calc').text(parseInt(data.value).toLocaleString('de-DE') + 'đ');
						var current = parseInt($('#pm-total-cart').text().slice(0,-1).replace(/\./g, ''));
						var shipping = $('#shipping-calc').text() ? parseInt($('#shipping-calc').text().slice(0,-1).replace(/\./g, '')): 0;
						var appliedTotal = 0;
						
						appliedTotal = (data.freeship && shipping > +data.value) ? (current + shipping - data.value) : current;
						
						$('#pm-total-value').text(appliedTotal.toLocaleString('de-DE') + 'đ');

					} else {
						alert(data.html)
						$('#voucher').val('');
					}
				}
			});
		}
		
	})
	$(document).on('click', '.promo-code-btn', function(){
		$.ajax({
			url: '/action.php',
			type: 'POST',
			data: 'url=get_promotion_modal',
			dataType: 'html',
			success: function(data) {
				$('#mobile-address-promote-modal').html(data);
				$('#mobile-address-promote-modal').modal('show');
			}
		});
	})
	$(document).on('click', '.note-modal-mb-btn', function(){
		$('#note_menu').modal('show');
	})
	$(document).on('click', '.address-btn', function(){
		$.ajax({
			url: '/action.php',
			type: 'POST',
			data: 'url=get_address_modal',
			dataType: 'html',
			success: function(data) {
				$('#mobile-address-promote-modal').html(data);
				$('#mobile-address-promote-modal').modal('show');
			}
		});
	})
	$(document).on('click', '.note-update-btn', function(){
		var note = $('#last-note').val();
		if(note) {
			$.ajax({
				url:'/action.php',
				type: 'POST',
				data: 'url=update_last_note&content='+note,
				dataType: "json",
				success: function(data){
					console.log('update');
				}
			});
			$('.note-modal-mb-btn').append('<div id="after-note"><div class="o-function-note text-truncate">'+note+'</div></div>')
		}
		$('#note_menu').modal('hide');	
	})
	$(document).on('click', '.modal-close-note', function(){
		$('#note_menu').modal('hide');
	})
	$(document).on('click', '.modal-close-address', function(){
		var address = $('#main_address').val();
		var km = $('#km_distance').val();
		var phone = $('#billing_phone').val();
		var shippingCost = $('#cal_shipping').val() ? parseInt($('#cal_shipping').val()): 0;
		$('#shipping-calc').text(shippingCost.toLocaleString('de-DE') + 'đ');
		$('#shipping-part').show()
		$('#after-address').remove()
		$('#address_mb').remove()
		$('#phone_mb').remove()
		$('.address-btn').append('<div id="after-address"><div class="o-function-note "> Khoảng cách: '+km+' km</div></div>')
		$('#payment_mb_modal').append('<div id="address_mb"><hr class="hr-space o-hr"><section class="address-section"> Địa chỉ ship: <span id="input-address">'+address+'</span></section></div>')
		$('#payment_mb_modal').append('<div id="phone_mb"><hr class="hr-space o-hr"><section class="phone-section"> Số điện thoại:<span id="phone-mb">'+phone+'</span></section></div>')
		$('#note-address-promo').append('<div class="o-function-item modal-button promo-code-btn"><div class="o-function-img " ><img src="/images/cart-tag.svg" class="inline-svg"></div><div class="o-function-note text-truncate"><span class="false align-middle">Promotion</span></div></div>')
	})
	$(document).on('click', '.modal-close-update-cart', function(){
		var totalItem = $('#payment_total_item').text();
		if(totalItem == 0) {
			var val = confirm('You want to reset the cart ?');
		
			if(val) {
				$.ajax({
					url:'/action.php',
					type: 'POST',
					data: 'url=detroy_cart',
					dataType: "html",
					success: function(data){
						$('#d-cart').hide();
					}
				});
				if(/\/payment/.test(location.pathname)) location.href = '/';
			}
		} else {
			var dt = {};
			$('.payment-item-root').each(function(){
				var qty = $(this).find('.item-amount').text();
				var key = $(this).find('input[name="cart-key"]').val();
				var id = $(this).find('input[name="cart-key"]').attr('data-id');
				var str = id + ':' + key;
				dt[str] = qty;
			})
			dt = JSON.stringify(dt);
			$.ajax({
				url:'/action.php',
				type: 'POST',
				data: 'url=update_cart_mb&data='+dt,
				dataType: "json",
				success: function(data){
				
				},
				complete: function(data) {
				
				}
			});
			location.reload()
		}
		
	//	$('#mobile-cart-info-modal').modal('hide');
	})
	$('#checkout_btn').click(function(){
		var code = $('#after-code').text();
		var shipping = $('#shipping-calc').text().replace(/\./g, '');
		var promo = $('#promo-calc').text().replace(/\./g, '');
		var phone = $('#phone-mb').text();
		var address = $('#input-address').text();
		if(address && phone && shipping)  {
			showLoader();
			$.ajax({
				url:'/action.php',
				type: 'POST',
				data: 'url=send_order2&shipping='+shipping+'&code='+code+'&promo='+promo+'&phone='+phone,
				dataType: "html",
				success: function(data){
					closeLoader();
					window.location.href = '/thank-you-reservation'
				}
			});
		} else {
			if(!address ) $.toaster({ priority :'danger', title :'Lỗi', message :'Bạn phải nhập địa chỉ'});
			if(address && !shipping) $.toaster({ priority :'danger', title :'Lỗi', message :'Địa chỉ không hợp lệ'});
			if(!phone) $.toaster({ priority :'danger', title :'Lỗi', message :'Bạn phải nhập số điện thoại'});
			if(phone &&  !/^0\d{9}$/.test(phone)) $.toaster({ priority :'danger', title :'Lỗi', message :'Số điện thoại không hợp lệ'});
			
		}
		
	})
	$('.code-copy').click(function(event) {
		var _this = this;
		var copyTextarea = $(this).closest('.promotions-order').find('.promo-code').text();
		var textArea = document.createElement("textarea");
		textArea.style.position = 'fixed';
		textArea.style.top = 0;
		textArea.style.left = 0;
		textArea.style.width = '2em';
		textArea.style.height = '2em';
		textArea.style.padding = 0;
		textArea.style.border = 'none';
		textArea.style.outline = 'none';
		textArea.style.boxShadow = 'none';
		textArea.style.background = 'transparent';
		textArea.value = copyTextarea;
		document.body.appendChild(textArea);
		textArea.focus();
		textArea.select();
		try {
			document.execCommand('copy');
			$(_this).text('Đã copy');
			
		} catch (err) {
			console.log('Oops, unable to copy');
		}
		document.body.removeChild(textArea);
		setTimeout(function(){
			$(_this).text('Copy code');
		},2000)
	});
	$(document).on('click', '#set-list', function(){
		$('.list-realty .healthymenuProductBox ').each(function(){
			$(this).addClass('full-width');
		})
	})
	$(document).on('click', '#set-grid', function(){
		$('.list-realty .healthymenuProductBox ').each(function(){
			$(this).removeClass('full-width');
		})
	})
})
