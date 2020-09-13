

  $('.nav-product-menu-responsive, .home-product-menu-mobile, .line-between-nav-product, .overlay-menu-product').affix({
    offset: {
      top: 66,
    }
  });

  function GetURLParameter(sParam)
  {
      var sPageURL = window.location.search.substring(1);
      var sURLVariables = sPageURL.split('&');
      for (var i = 0; i < sURLVariables.length; i++)
      {
          var sParameterName = sURLVariables[i].split('=');
          if (sParameterName[0] == sParam)
          {
              return sParameterName[1];
          }
      }
      return '';
  }

  $(".owl-carousel").owlCarousel({
    items:1,
    margin:0,
    autoplay:true,
    autoplayTimeout:3000,
    autoplayHoverPause:true,
    // animateOut: 'fadeOut',
    onInitialized:initialized
  });
  function initialized(event) {
    $('div.progress-owl-carousel').remove();
  }
  $('.foodRecommendMenu').hide();
  $('#formProductBill').submit(function(){
    return false;
  });
  var reloadRecommended = function(){
    // $('#listProductRecommendMenu').load(API_RECOMMENDED_IN_DELIVERY,function(){
    //   if($(this).html().match(/Recommend menu not found/) != null){
    //       $('.foodRecommendMenu').hide();
    //   }else{
    //       $('.foodRecommendMenu').show();
    //   }
    //   $('#listProductRecommendMenu').find('.slideshow-product-recommend').cycle();
    // });
  }
  var reloadFavorite = function(){
    // $('#listProductFavorite').html('<div class="listProductFavorite">Loading...</div>');
    // $('#listProductFavorite').load(API_FAVORITE_MENU_IN_DELIVERY,function(){
    //   $('#listProductFavorite').find('.slideshow-product-recommend').cycle();
    // });
  }
  // reloadRecommended();
  // reloadFavorite();
  var progressReloadCart = 0;
  var increaseProgress = setInterval(function(){
    if (progressReloadCart >= 90) {
      clearInterval(increaseProgress);
    }

    progressReloadCart = (progressReloadCart+10);
    $('progress').attr('value', progressReloadCart);
  }, 10);
  
  var reloadCart = function(first){
      // $.get(API_CART_LIST,function(result){
      //   result.pagename = 'delivery';
      //   if(result.count==0){
      //       $('.listProductBill.full').hide();
      //       $('.listProductBill.empty').show();
      //   }else{
      //       $('.listProductBill.full').show();
      //       $('.listProductBill.empty').hide();
      //   }
      //   $('.listProductBill ul').html(_.template(cart_side_bar, result));
      //   $('.cart-list-responsive').html(_.template(cart_list_responsive, result));
      //   $('.spin-edit').spinedit();
      //   $('.spin-edit').on("valueChanged", function (e) {
      //     var rowId = $(this).data('rowid');
      //     var qty = $(this).data('qty');
      //     var val = e.value;
      //     // if(qty != val){
      //     //   $('#listProductBillBox').block({ message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 2000  });
      //     //   $.post(API_CART_UPDATE_ITEM, {
      //     //     rowId: rowId,
      //     //     qty: val
      //     //   }, function(result){
      //     //     reloadCart(false);
      //     //   });
      //     // }
      //   });
      //   var productInCart = result.count === 0 ? '':result.count;
      //   $('span.totalProduct').html(productInCart);

      //   $('.totalItem span').html(result.count);
      //   $('.billTotalPrice .subtotalPrice').html(result.subtotal);
      //   setTimeout(function(){
      //     $('#listProductBillBox').unblock();
      //     $.unblockUI();
      //   },1000);
      // });
  };
  // $(document).on('click', '.delete-cart-item', function(){
  //   $('#listProductBillBox').block({ message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 2000  });
  //   var rowId = $(this).data('rowid');
  //   $.post(API_CART_DELETE_ITEM, {
  //     rowId: rowId
  //   }, function(result){
  //     $('#listProductBillBox').unblock();
  //     reloadCart();
  //     reloadRecommended();
  //   });
  //   return false;
  // });

  // $('#empty-cart').click(function(event) {
  //   $('#listProductBillBox').block({ message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 2000  });
  //   $.get(API_CART_EMPTY,function(result){
  //     reloadCart();
  //     reloadRecommended();
  //   });
  //   return false;
  // });
  reloadCart(true);
//  $('.spin-edit').spinedit();

  function flyToElement(flyer, flyingTo) {
      var $func = $(this);
      var divider = 3;
      var flyerClone = $(flyer).clone();
      $(flyerClone).css({position: 'absolute', top: $(flyer).offset().top + "px", left: $(flyer).offset().left + "px", opacity: 1, 'z-index': 4000});
      $('body').append($(flyerClone));
      var gotoX = $(flyingTo).offset().left + ($(flyingTo).width() / 2) - ($(flyer).width()/divider)/2;
      var gotoY = $(flyingTo).offset().top + ($(flyingTo).height() / 2) - ($(flyer).height()/divider)/2;

      $(flyerClone).animate({
          opacity: 0.4,
          left: gotoX,
          top: gotoY,
          width: $(flyer).width()/divider,
          height: $(flyer).height()/divider
      }, 700,
      function () {
          $(flyingTo).fadeOut('fast', function () {
              $(flyingTo).fadeIn('fast', function () {
                  $(flyerClone).fadeOut('fast', function () {
                      $(flyerClone).remove();
                  });
              });
          });
      });
  }
  window.mixandmatchData = {};
  window.mixandmatchDataSubmit = {};
  $(document).on('click', 'a.btnAddtocart, .btnAddtoCartResponsive', function(){

      $.blockUI({message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 2000  });
      $('#listProductBillBox').block({message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 2000  });

      var qty = $(this).data('qty');qty

      var id = $(this).data('id');
      $.post(API_CART_ADD_ITEM,{
          id: id,
          qty: 1,
          mix_and_match_items: mixandmatchDataSubmit
      }, function(result){
          if(result.status == 'success') {
              reloadCart();
              reloadRecommended();
              $.blockUI({ message: '<div class="text-center text-nowrap"><img src="/img/responsive/added-to-cart.svg" width="80"/><br> <strong style="color:#fff;line-height: 30px;">ADDED TO CART</strong></div>',overlayCSS: { backgroundColor: '#000' }, css: { border: 'none', background: 'none' }, baseZ: 2000  });

              if (result.is_mix_and_match == 1) {
                  loadMixAndMatchProductDetail(id, result.rowid);
              }
              
              if (result.upsale_product_list.length > 0){
                loadUpsaleProductPopup(id, result.rowid, result.upsale_product_list);
              }
        } else if (typeof result.title !== 'undefined' && typeof result.message !== 'undefined' && typeof result.type !== 'undefined') {
            sweetAlert({
                title : result.title,
                text : result.message,
                type : result.type,
                html:true
            });
        }

        $.unblockUI({fadeOut: 0});
        $('#listProductBillBox').unblock();
    });

      return false;
  });

  $('.btnconfirmBill').click(function(){
    $(this).attr('disabled','disabled');
    if($('.billTotalPrice .totalItem span').text() == 0){
      alert('Your shopping cart is empty.');
      $(this).removeAttr('disabled');
      return false;
    }
    $('#listProductBillBox').block({ message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 2000  });
    setTimeout(function(){
      if(LOGIN.IS_LOGIN){
        window.location.href = CHECKOUT_URL;
      }else{
        if ($(document).width() <= 768) {
          window.location.href = CHECKOUT_URL;
          return;
        }
        $('#formLoginDetail form').append('<input type="hidden" name="goto" value="checkout">');
        $(this).removeAttr('disabled');
        $("html, body").animate({ scrollTop: 0 }, 'slow', function(){
            $(".formUserlogin .btnlogin").parent().addClass('active');
            $("#formLoginDetail").slideDown("fast");
            $("#formLoginDetail #inputEmail").focus();
            $('#listProductBillBox').unblock();
            $.unblockUI();
        });
      }
    },2000);
    return false;
  });

  var promotionLength = 0;
  var create_render_product = function(selector, tab_selector, url, lastCall) {

    var isPromotion = selector == '#promotion_render' ? true:false;
  
    $(selector).html('<span class="loading">Loading...</span>');
    $('.paginationList:eq(0)', tab_selector).hide();
    $('.paginationList:eq(1)', tab_selector).hide();


    var urlProduct = url+'/?keyword='+encodeURIComponent(GetURLParameter('keyword'));

    $.getJSON(urlProduct, function(data) {

      if (GetURLParameter('keyword')) {
        data.isPromotion = false;
      } else {
        data.isPromotion = isPromotion;
      }

      $(selector).html(_.template(menu_item_template,data));
      $(selector+'_responsive').html(_.template(healthymenu_delivery_item_responsive,data));

      $('.paginationList:eq(0)', tab_selector).show();
      $('.paginationList:eq(1)', tab_selector).show();

      if (isPromotion && GetURLParameter('product_category') === '' && data.products.length > 0) {

          promotionLength = 1;

          $('#promotionHM').click();
          $('#promotionBox').click();

          $('#promotion_render_responsive').addClass('active in');
          $('#vegetable_render_responsive').removeClass('active').removeClass('in');
          $('.home-product-menu-mobile .vegetable a').removeClass('active');
          $('.nav-product-menu-responsive img').attr('src','/img/responsive/menu/new/'+$('.home-product-menu-mobile li.promotion a').data('imgname'));
          $('.nav-product-menu-responsive span').html($('.home-product-menu-mobile li.promotion a').text());
      }
      if (lastCall && ! promotionLength) {
          var catProduct = GetURLParameter('product_category');
          if (catProduct === '') {
            catProduct = 9;
          }
          var mapActiveNavByCategory = {
            1:{nav:'vegetableHM', tabPane:'vegetableHMBox'},
            2:{nav:'meatHM', tabPane:'meatHMBox'},
            3:{nav:'roastduckHM', tabPane:'roastduckHMBox'},
            4:{nav:'singlefoodHM', tabPane:'singlefoodHMBox'},
            5:{nav:'noodleHM', tabPane:'noodleHMBox'},
            6:{nav:'dimsumHM', tabPane:'dimsumHMBox'},
            7:{nav:'beveragesHM', tabPane:'beveragesHMBox'},
            8:{nav:'sweetmeatHM', tabPane:'sweetmeatHMBox'},
            9:{nav:'promotion', tabPane:'promotionBox'},
            10:{nav:'setmenuHM', tabPane:'setmenuHMBox'},
            11:{nav:'alacartemenuHM', tabPane:'alacartemenuHMBox'},
            12:{nav:'roastduckHM', tabPane:'roastduckHMBox'},
            13:{nav:'freshfoodHM', tabPane:'freshfoodHMBox'},

            14:{nav:'appetizerHM', tabPane:'appetizerHMBox'},
            15:{nav:'newmenuHM', tabPane:'newmenuHMBox'},
            // 16:{nav:'setmenuHM', tabPane:'setmenuHMBox'},
            17:{nav:'freshfoodHM', tabPane:'freshfoodHMBox'},
            18:{nav:'dessertHM', tabPane:'dessertHMBox'},
            19:{nav:'snackboxHM', tabPane:'snackboxHMBox'},
          };


        //   if ( ! GetURLParameter('mamid')) {
              $('#'+mapActiveNavByCategory[catProduct]['nav']).click();
              $('#'+mapActiveNavByCategory[catProduct]['tabPane']).click();
              ga('send', 'event', 'Category', mapActiveNavByCategory[catProduct]['tabPane']);
        //   }
      }

      var hash = window.location.hash.substr(1);
          
          if( lastCall && hash ){
            // console.log(hash);alert(hash);
            var mapActiveNavByCategory = {
            1:{nav:'vegetableHM', tabPane:'vegetableHMBox'},
            2:{nav:'meatHM', tabPane:'meatHMBox'},
            3:{nav:'roastduckHM', tabPane:'roastduckHMBox'},
            4:{nav:'singlefoodHM', tabPane:'singlefoodHMBox'},
            5:{nav:'noodleHM', tabPane:'noodleHMBox'},
            6:{nav:'dimsumHM', tabPane:'dimsumHMBox'},
            7:{nav:'beveragesHM', tabPane:'beveragesHMBox'},
            8:{nav:'sweetmeatHM', tabPane:'sweetmeatHMBox'},
            9:{nav:'promotion', tabPane:'promotionBox'},
            10:{nav:'setmenuHM', tabPane:'setmenuHMBox'},
            11:{nav:'alacartemenuHM', tabPane:'alacartemenuHMBox'},
            12:{nav:'roastduckHM', tabPane:'roastduckHMBox'},
            13:{nav:'freshfoodHM', tabPane:'freshfoodHMBox'},

            14:{nav:'appetizerHM', tabPane:'appetizerHMBox'},
            15:{nav:'newmenuHM', tabPane:'newmenuHMBox'},
            // 16:{nav:'setmenuHM', tabPane:'setmenuHMBox'},
            17:{nav:'freshfoodHM', tabPane:'freshfoodHMBox'},
            18:{nav:'dessertHM', tabPane:'dessertHMBox'},
            19:{nav:'snackboxHM', tabPane:'snackboxHMBox'},
          };

            // $('.nav-item a').removeClass('active');
            // $('.tab-pane').removeClass('active');
            // $('.nav-item a[href="#'+hash+'"]').addClass('active');
            // $('#'+hash).addClass('active');
            var mobile_category = '';
            if(hash == 'newmenuHMBox'){
              catProduct = 15;mobile_category = 'newmenu';
            }else  if(hash == 'alacartemenuHMBox'){
              catProduct = 11;mobile_category = 'alacartemenu';
            }else  if(hash == 'setmenuHMBox'){
              catProduct = 10;mobile_category = 'setmenu';
            }else  if(hash == 'roastduckHMBox'){
              catProduct = 12;mobile_category = 'roastedduck';
            }else  if(hash == 'appetizerHMBox'){
              catProduct = 14;mobile_category = 'appetizer';
            }else  if(hash == 'freshfoodHMBox'){
              catProduct = 17;mobile_category = 'freshfood';
            }else  if(hash == 'dessertHMBox'){
              catProduct = 18;mobile_category = 'desserts';
            }else  if(hash == 'snackboxHMBox'){
              catProduct = 19;mobile_category = 'snackbox';
            }
            $('#'+mapActiveNavByCategory[catProduct]['nav']).click();
            $('#'+mapActiveNavByCategory[catProduct]['tabPane']).click();
            $('.home-product-menu-mobile li.'+mobile_category+ ' a').click();
            ga('send', 'event', 'Category', mapActiveNavByCategory[catProduct]['tabPane']);
          }

      if(lastCall) {
          if (GetURLParameter('mamid')) {
              loadMixAndMatchProductDetail(GetURLParameter('mamid'), GetURLParameter('cartid'));
          }
      }

      // Load more product responsive btn
      $(document).on('click', selector+'_responsive .btn-load-more', function(event) {
          $(this).removeClass('btnRedResponsive').html('<i class="fa fa-circle-o-notch fa-spin fa-4x"></i>');
          loadMoreProductListResponsive(selector, url, $(selector+'_responsive').find('.masonry-item:last').data('page')+1);
      });

      // Load more product responsive auto
/*      $(window).scroll(function() {

        // var end = $('.footer-content').offset().top;
        // var viewEnd = $(window).scrollTop() + $(window).height();
        // var distance = end - viewEnd;

        if ($(window).scrollTop() == $(document).height() - $(window).height() && $(selector+'_responsive').hasClass('active')) {
        // if(distance < 300 && $(selector).parents('.tab-pane').hasClass('active')) {
            loadMoreProductListResponsive(selector, url, $(selector+'_responsive').find('.masonry-item:last').data('page')+1);
            // $(window).scrollTop($(window).scrollTop()-200);
        }

      });*/


    });

    $(document).on("click", tab_selector+' .paginationList .page-item a', function(){
      $(selector).html('<span class="loading">Loading...</span>');
      $('.paginationList .page-item', tab_selector).removeClass('active');
      $(this).parent().addClass('active');
      $('body,html').scrollTop(260);
      $.getJSON($(this).attr('href'), function(data){
        $(selector).html(_.template(menu_item_template,data));
        return false;
      });
      return false;
    });

    $(document).on("click", tab_selector+' .paginationList .page-prev a', function(){
      if($('.paginationList:eq(0) .page-item.active', tab_selector).index()-1 > 0){
        var page = Math.max($('.paginationList:eq(0) .page-item.active', tab_selector).index()-1,1);
        $(selector).html('<span class="loading">Loading...</span>');
        $('.paginationList .page-item', tab_selector).removeClass('active');
        $('.paginationList:eq(0) .page-item', tab_selector).eq(page-1).addClass('active');
        $('.paginationList:eq(1) .page-item', tab_selector).eq(page-1).addClass('active');
        var url = $('.paginationList .page-prev a', tab_selector).attr('href').replace(/page=1/gi, "page="+page);
        $('body,html').scrollTop(260);
        $.getJSON(url, function(data){
          $(selector).html(_.template(menu_item_template,data));
          return false;
        });
      }
      return false;
    });

    $(document).on("click", tab_selector+' .paginationList .page-next a', function(){
      var nextPage = $(this).parents('ul').find('.page-item.active').index()+1;
      var countPage = $(this).parents('ul').find('.page-item').length;

      if(nextPage <= countPage){
        var page = Math.min(nextPage, countPage);
        $(selector).html('<span class="loading">Loading...</span>');
        $(tab_selector+' .paginationList .page-item').removeClass('active');
        $('.paginationList:eq(0) .page-item', tab_selector).eq(page-1).addClass('active');
        $('.paginationList:eq(1) .page-item', tab_selector).eq(page-1).addClass('active');
        var url = $('.paginationList .page-prev a', tab_selector).attr('href').replace(/page=1/gi, "page="+page);
        $('body,html').scrollTop(260);
        $.getJSON(url, function(data){
          $(selector).html(_.template(menu_item_template,data));
          return false;
        });
      }
      return false;
    });

  }
  /*=====  End of Render Product List  ======*/


  /*----------  Render list product from template  ----------*/
  // create_render_product('#vegetable_render', '#vegetableHMBox', API_DELIVERY_LISTS_URL_1, false);
  // create_render_product('#meat_render', '#meatHMBox', API_DELIVERY_LISTS_URL_2, false);
  
  // create_render_product('#singlefood_render', '#singlefoodHMBox', API_DELIVERY_LISTS_URL_4, false);
  // create_render_product('#noodle_render', '#noodleHMBox', API_DELIVERY_LISTS_URL_5, false);
  
  // Update delivery menu item 18 feb 2018
  // maintainer: rungsikorn@me.com
  // relate
  // - /app/views/configjs.blade
  // - /app/views/healthymenu/deliverynew.blade

  // create_render_product('#promotion_render', '#promotionBox', API_DELIVERY_LISTS_URL_9, true);
  const Categories = {
    // setmenu: API_DELIVERY_LISTS_URL_10,
    // alacartemenu: API_DELIVERY_LISTS_URL_11,
    // roastduck: API_DELIVERY_LISTS_URL_12,
    // freshfood: API_DELIVERY_LISTS_URL_13,
    // appetizer: API_DELIVERY_LISTS_URL_14,

    // newmenu: API_DELIVERY_LISTS_URL_15,
    // setmenu: API_DELIVERY_LISTS_URL_10,
    // freshfood: API_DELIVERY_LISTS_URL_17,
    // dessert: API_DELIVERY_LISTS_URL_18,
    // snackbox: API_DELIVERY_LISTS_URL_19
  }
  
  for(let key of Object.keys(Categories)) {
    create_render_product('#' + key + '_render', '#' + key + 'HMBox', Categories[key], false)
  }
  
  // end update delivery menu item 18 feb 2018


  
  
  // create_render_product('#sweetmeat_render', '#sweetmeatHMBox', API_DELIVERY_LISTS_URL_8, false);
 

  $('#mainHealthtmenuList li').click(function(){

     if ($(this).index() == 0) {
         $('#mixandmatch_render').fadeOut(0, function(){
             $('#promotion_render').fadeIn();
             $('.paginationBox').fadeIn();
         });
     } else {
         $('.paginationBox').fadeIn();
     }

     //  Restore default promotion category title from mix and match
     $('#promotionBox .col-title').removeClass('col-xs-12').addClass('col-xs-6');
     $('#promotionBox .col-title span').remove();

    $('#breadcrumb-last-title').text($('a', this).text());

    currentMainProductId  = null;
    currentProductId      = null;
    currentCategoryId     = null;
    mixandmatchData       = {};
    mixandmatchDataSubmit = {};
  });

  $('.btnBackToTop a').click(function(){
    $('body,html').animate({scrollTop: 0}, 600);
    return false;
  });


  /*===================================================================
  =            Load more product list responsive on scroll            =
  ===================================================================*/
  var lastPageIsShown = [];
  var loadMoreProductListResponsive = function(tab_selector, url, page){
    var urlProduct = url+'/?page='+page+'&keyword='+encodeURIComponent(GetURLParameter('keyword'));

    if (typeof lastPageIsShown[urlProduct] != 'undefined') {
      return;
    }

    // var n = noty({
    //     layout: 'bottom',
    //     type: 'warning',
    //     text: '<strong><i class="fa fa-check"></i> Loading..</strong>',
    //     template: '<div class="noty_message"><span class="noty_text"></span><div class="noty_close"></div></div>',
    //     animation: {
    //         open: 'animated fadeIn', // Animate.css class names
    //         close: 'animated fadeOut', // Animate.css class names
    //         easing: 'swing', // unavailable - no need
    //         speed: 500 // unavailable - no need
    //     },
    //     timeout:1000
    // });


    $.ajax({
      url: urlProduct,
      async:true,
      dataType: 'json',
    })
    .done(function(data) {


      $(tab_selector+'_responsive .btn-load-more').parent().prev().remove();
      $(tab_selector+'_responsive .btn-load-more').parent().remove();

      if (data.products.length > 0) {
        data.disableRow = true;
        data.isPromotion = false;
        $(tab_selector+'_responsive').find('.masonry-grid').append(_.template(healthymenu_delivery_item_responsive,data));
        // $(tab_selector).find('.masonry-grid').append(_.template(menu_item_template,data));
      } else {
        lastPageIsShown[urlProduct] = urlProduct;
      }
    });

  };
  /*=====  End of Load more product list responsive on scroll  ======*/



$('.slideshow-product-favorite').cycle();
$('.slideshow-product-bestseller').cycle();
$('.slideshow-product-recommend').cycle();




/*=============================================>>>>>
= Product Mix and Match =
===============================================>>>>>*/



    $(document).on('click', '.btn-change-item', function(event) {
        event.preventDefault();
        var foundItem1 = false;
        var foundItem2 = false;
        var productId = $(this).data('id');
        // alert(JSON.stringify(mam.items))
        $.each(mam.items, function(indexProductId, el) {

            if (indexProductId == productId) {
                // alert(indexProductId+' '+productId);
                el.qty = el.qty+1;
                var item = $('.col-item[data-productid='+indexProductId+']');

                var prepareHtml = '<div class="col-md-4 col-lg-3 col-xs-6 match-height col-product-selected" data-itemcategoryid="'+currentCategoryId+'" data-productid="'+indexProductId+'" data-index="'+productIdBeforeReplaceIndex+'">'
                +'<a href="#mm-product-detail-modal-'+indexProductId+'" data-toggle="modal">'
                +'<div class="product-image">'
                +item.find('.product-image').html()
                +'</div>'
                +'<p class="product-title">'+item.find('.product-title').html()+'</p>'
                +'</a><p class="product-readmore">à¸­à¹ˆà¸²à¸™à¹€à¸žà¸´à¹ˆà¸¡à¹€à¸•à¸´à¸¡...</p>'
                +'<p class="product-price text-xs-right">'
                +'<a class="btn-change" href="#mm-product-category-modal-'+currentCategoryId+'" data-toggle="modal"> <img src="/img/change-mixandmatch-icon.svg" width="19" height="16"> <label style="margin:0">Change</label> </a>'
                +'</p>'
                +'</div>';

                if (productIdBeforeReplace != indexProductId) {
                    $('.col-product-selected[data-productid='+productIdBeforeReplace+'][data-index='+productIdBeforeReplaceIndex+']').after(prepareHtml);
                    $('.col-product-selected[data-productid='+productIdBeforeReplace+'][data-index='+productIdBeforeReplaceIndex+']').remove();
                }
                foundItem1 = true;
            }

            if (indexProductId == productIdBeforeReplace) {
                el.qty = el.qty-1;
                foundItem2 = true;
            }
        });
// alert(foundItem1+' '+foundItem2+' '+productIdBeforeReplace)
        if (foundItem1 && foundItem2) {

            $('#listProductBillBox').block({message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 1000  });

            // Clone object for  submit data
            mixandmatchDataSubmit = jQuery.extend(true, {}, mixandmatchData);

            $.post(API_CART_UPDATE_ITEM, {
                rowId: cartRowid,
                qty: cartQty,
                mix_and_match_items: mixandmatchDataSubmit
            }, function(result){

                if (typeof result.title !== 'undefined' && typeof result.message !== 'undefined' && typeof result.type !== 'undefined') {
                    sweetAlert({
                        title : result.title,
                        text : result.message,
                        type : result.type,
                        html:true
                    });
                }

                $('#listProductBillBox').unblock();
                reloadCart(false);
            });
        }

    });


    function upsaleListHtml(item, index){

      var divTemplate =
          '<div id="upsale-'+item.id+'" class="col-md-4 col-lg-3 col-xs-6 match-height col-item upsale-item" data-productid="'+item.id+'" style="height: 231px;">' +
          '  <div class="product-image">' +
          '    <img src="'+item.thumbnail+'" style="max-width:100%">' +
          '  </div>' +
          '  <p class="product-title">'+item.title+'</p>' +
          '  <div class="product-price-quantity">' +
          '    <div class="price" style="width:60%;float:left;">' +
          '      <div><strike style="color:red">'+item.price+' THB</strike></div>'+item.discount_price+' THB' +
          '    </div>' +
          '    <div class="custom-qty-group">' +
          '      <a class="btn-add-upsale-item" data-upsale_product_id="'+item.upsale_product_id+'" data-id="'+item.id+'">' +
          '        Add' +
          '        <img src="/img/healthymenu/icon-tray.png" alt="">' +
          '      </a>' +
          '    </div>' +
          '  </div>' +
          '</div>';
          // return divTemplate;
          $('#upsale-produt-modal-list').append(divTemplate);


    }

    var loadUpsaleProductPopup = function(currentMainProductId, cartId = 0, upsaleDataList) {

      // alert(upsaleDataList);

      

      $('#upsale-produt-modal-list').html('');
      upsaleDataList.forEach( upsaleListHtml );

      var popupTemplate =
      '<div class="modal fade">' +
      '  <div class="modal-dialog">' +
      '    <div class="modal-content">' +
      '      <div class="modal-header">' +
      '        <button type="button" class="close" data-dismiss="modal">&times;</button>' +
      '        <h4 class="modal-title">I am a dialog</h4>' +
      '      </div>' +
      '      <div class="modal-body" />' +
      '      <div class="modal-footer">' +
      '        <button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>' +
      '        <button type="button" class="btn btn-link" data-dismiss="modal">Cancel</button>' +
      '      </div>' +
      '    </div>' +
      '  </div>' +
      '</div>';

      $(".btn-add-upsale-item").unbind('click').click( function(){

        $('#listProductBillBox').block({message: '<strong style="color:#fff;"><i style="font-size:70px" class="fa fa-circle-o-notch fa-spin" style="color:#fff"></i> <br> Loading...</strong>', css: { border: 'none', background: 'none' }, baseZ: 1000  });

        var id = $(this).data('id');
        var upsale_product_id = $(this).data('upsale_product_id');

    //     $.post(API_CART_ADD_ITEM,{
    //         id: id,
    //         qty: 1,
    //         upsale_product_id: upsale_product_id
    //     }, function(result){
    //         if(result.status == 'success') {
    //             $('#upsale-'+id).remove();
    //             if($('.upsale-item').length == 0){
    //               $('#upsale-produt-modal').modal('toggle');
    //             }
    //             reloadCart();
    //             reloadRecommended();
    //             $.blockUI({ message: '<div class="text-center text-nowrap"><img src="/img/responsive/added-to-cart.svg" width="80"/><br> <strong style="color:#fff;line-height: 30px;">ADDED TO CART</strong></div>',overlayCSS: { backgroundColor: '#000' }, css: { border: 'none', background: 'none' }, baseZ: 2000  });

    //       } else if (typeof result.title !== 'undefined' && typeof result.message !== 'undefined' && typeof result.type !== 'undefined') {
    //           sweetAlert({
    //               title : result.title,
    //               text : result.message,
    //               type : result.type,
    //               html:true
    //           });
    //       }

    //     $.unblockUI({fadeOut: 0});
    //     $('#listProductBillBox').unblock();



    // });

      });

       $('#upsale-produt-modal').modal();

    };

    var loadMixAndMatchProductDetail = function(currentMainProductId, cartId = 0) {

        if ($(window).width() >= 768) {

            $('#promotionHM').trigger('click');
            $('#promotion_render').css('display', 'none');

            $('#promotion_render').fadeOut(0, function(){
                $('.paginationBox').fadeOut(0);
                var oldTitle = $('#promotionBox .col-title h3').text();
                $('#promotionBox .col-title').addClass('col-xs-12').removeClass('col-xs-6');

                $('#mixandmatch_render').html('<div class="text-center p-a-lg"> <strong><i class="fa fa-circle-o-notch fa-spin fa-4x" style="color:#FF3333"></i> <p>Loading...</p></strong> </div>').fadeIn();
                $.ajax({
                    url: '/delivery/ajax-mix-and-match-item/'+currentMainProductId+'/'+cartId,
                })
                .done(function(data) {
                    $('#mixandmatch_render').html(data);
                    $('#promotionBox .col-title h3').html(oldTitle+' <span>'+productTitle+'</span>')
                    setTimeout(function(){
                        $('.match-height').matchHeight();
                    },1500)
                });

            });
        } else {

            $('#cart_items a').removeClass('active');
            $('.cart_items_list').removeClass('fadeIn').addClass('fadeOut');
            hideCartElement = setTimeout(function(){
              $('.cart_items_list').css('display', 'none');
            },500);

            $('#promotion_render_responsive').parents('.tab-content').fadeOut(0, function(){

                $('#mixandmatch_responsive_render').html('<div class="text-center p-a-lg"> <strong><i class="fa fa-circle-o-notch fa-spin fa-4x" style="color:#FF3333"></i> <p>Loading...</p></strong> </div>').fadeIn();
                $.ajax({
                    url: '/delivery/ajax-mix-and-match-item/'+currentMainProductId+'/'+cartId,
                })
                .done(function(data) {
                    $('#mixandmatch_responsive_render').html(data);
                    setTimeout(function(){
                        $('.match-height').matchHeight();
                    },1500)
                });

            });
        }

    }





    window.currentMainProductId = null;
    window.currentProductId = null;
    window.productIdBeforeReplace = null;
    window.productIdBeforeReplaceIndex = null;
    window.currentCategoryId = null;
    window.mam = null;

    $(document).on('click', '.mixandmatch-item', function() {

        currentMainProductId = $(this).data('id');
        var productTitle = $(this).parents('.healthymenuProductBox').find('.caption h4').text();

        loadMixAndMatchProductDetail(currentMainProductId, productTitle);
    });

    $(document).on('click', '.btn-change', function() {
        currentCategoryId = $(this).parents('.match-height').data('itemcategoryid');
        productIdBeforeReplace = $(this).parents('.col-product-selected').data('productid');
        productIdBeforeReplaceIndex = $(this).parents('.col-product-selected').data('index');
        mam = mixandmatchData[currentCategoryId];
        runningNumber = [];
        // alert(JSON.stringify(mixandmatchDataSubmit[currentCategoryId].items))
        $.each(mixandmatchDataSubmit[currentCategoryId].items, function(index, el) {
            if (el.qty > 0) {
                for (var i = 0; i < el.qty; i++) {
                    runningNumber.push(index);
                }
            }
        });
    });

    $(document).on('click', '.plus-qty', function() {

        var $this         = $(this);
        currentProductId  = $(this).parents('.col-item').data('productid');
        // alert(JSON.stringify(mixandmatchData[currentCategoryId]))
        runningNumber.push(currentProductId);

        // alert(runningNumber);
        if (mam.countAllItems >= mam.maximumItemCanSelect) {

            // var latestProductIdSelected = runningNumber[runningNumber.length-1];

            // $('#mm-product-category-modal-'+currentCategoryId+' .col-item').each(function(index, el) {

                // var itemProductId = $(this).data('productid');
                if (currentProductId == runningNumber[0]) {
                    var foundNewItem = false;
                    for (var i = 0; i < runningNumber.length; i++) {
                        // alert(i+' '+runningNumber[i]+'-'+currentProductId+' '+foundNewItem);
                        if (runningNumber[i] != currentProductId && ! foundNewItem) {
                            var itemProductId = runningNumber[i];
                            foundNewItem = true;
                        }
                    }
                    // alert(itemProductId);
                } else {
                    var itemProductId = runningNumber[0];
                }

                if ( ! isEmpty(mam.items[itemProductId]) && mam.items[itemProductId].qty > 0 && itemProductId != currentProductId) {

                    mam.items[itemProductId].qty = mam.items[itemProductId].qty-1;
                    minusCountAllOne();

                    if (isEmpty(mam.items[currentProductId])) {
                        mam.items[currentProductId] = {
                            qty : 1,
                        };
                        plusCountAllOne();
                    } else {
                        mam.items[currentProductId].qty = mam.items[currentProductId].qty+1;
                        plusCountAllOne();
                    }

                    if (currentProductId == runningNumber[0]) {

                        var foundNewItem = false;
                        for (var i = 0; i < runningNumber.length; i++) {
                            if (runningNumber[i] != currentProductId && ! foundNewItem) {
                                runningNumber.splice(i,1);
                                foundNewItem = true;
                            }
                        }
                    } else {
                        runningNumber.shift();
                    }
                    renderMixAndMatchData(itemProductId);
                    renderMixAndMatchData(currentProductId);

                    return false;
                } else {
                    runningNumber.pop();
                }


            return false;
        }

        if (isEmpty(mam.items[currentProductId])) {
            mam.items[currentProductId] = {
                qty : 1,
            };
            plusCountAllOne();
        } else {
            mam.items[currentProductId].qty = mam.items[currentProductId].qty+1;
            plusCountAllOne();
        }

        renderMixAndMatchData(currentProductId);
    });

    $(document).on('click', '.minus-qty', function() {
        currentProductId  = $(this).parents('.col-item').data('productid');
        if ( ! isEmpty(mam.items[currentProductId]) && mam.items[currentProductId].qty > 0) {
            mam.items[currentProductId].qty = mam.items[currentProductId].qty-1;

            var index = runningNumber.indexOf(currentProductId);
            if (index > -1) {
                runningNumber.splice(index, 1);
            }
            minusCountAllOne();
            renderMixAndMatchData(currentProductId);
        }

    });

    var renderMixAndMatchData = function(productId) {

        if (mam.countAllItems < mam.maximumItemCanSelect) {
            $('.confirmSelectItem').addClass('disabled').prop('disabled', true);
        } else {
            $('.confirmSelectItem').removeClass('disabled').prop('disabled', false);
        }

        $('#mm-product-category-modal-'+currentCategoryId+' .current-quantity').text(mam.countAllItems);
        $('*[data-productid='+productId+']').find('.current-number span').text(mam.items[productId].qty);
    }
   
    var plusCountAllOne = function() {
        return mam.countAllItems = parseInt(mam.countAllItems)+1;
    };
    var minusCountAllOne = function() {
        return mam.countAllItems = parseInt(mam.countAllItems)-1;
    };
    $(document).on('click', '.home-product-menu-mobile .nav-link', function(event) {
        event.preventDefault();

        $('#mixandmatch_responsive_render').html('').fadeOut(0);
        $('#promotion_render_responsive').parents('.tab-content').removeAttr('style');
    });



function isEmpty(obj) {
    for(var key in obj) {
        if(obj.hasOwnProperty(key))
            return false;
    }
    return true;
}