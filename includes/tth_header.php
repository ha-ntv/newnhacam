 <div class="hidden-lg-up logo-responsive">
   <a href="<?php echo HOME_URL_LANG ?>"><img src="/images/logo.png" alt="" style="height: 36px;"></a>

 </div>

 <ul id="gn-menu" class="gn-menu-main hidden-lg-up">
   <li class="menu-2-solid">
     <a class="gn-icon gn-icon-menu">
       <span class="d1"></span>
       <span class="d2"></span>
     </a>
   </li>
   <style type="text/css">
     .formLogin #loginBox li a.btnlogin.nthdd {
       width: 105px !important;
     }
   </style>
   
   <li class="gn-trigger">
     <nav class="gn-menu-wrapper animated">
       <div class="gn-scroller">
         <ul class="gn-menu">
           <li>
             <a href="<?php echo HOME_URL_LANG ?>/about-us" class="gn-icon nav-with-submenu"><?php echo getNameCategory(94) ?> <label class="expand_close_icon"><img src="img/responsive/expand-menu.png" width="17" height="17" alt=""></label></a>
             <ul class="gn-submenu animated">
               <li><a class="gn-icon" href="<?php echo HOME_URL_LANG ?>/about"> <?php echo getNameMenuArt(428) ?></a></li>
               <li><a class="gn-icon" href="<?php echo HOME_URL_LANG ?>/blog"> <?php echo getNameMenuArt(467) ?></a></li>
             </ul>
           </li>
           <li class="others_menu">
             <a class="gn-icon" href="<?php echo HOME_URL_LANG ?>/promotion"><?php echo getNameCategory(89) ?> </a>
           </li>
           <li class="others_menu">
             <a class="gn-icon" href="<?php echo HOME_URL_LANG ?>/delivery"><?php echo getNameCategory(101) ?></a>
           </li>
           <li class="others_menu"><a class="gn-icon" href="<?php echo HOME_URL_LANG ?>/gallery"><?php echo getNameCategory(102) ?></a></li>
           <li class="others_menu"><a class="gn-icon" href="<?php echo HOME_URL_LANG ?>/booking"><?php echo $booking ?></a></li>
           <li class="others_menu">
             <p style="font-family: Roboto;font-size:12px;line-height:35px;"><?php echo getConstant('address_contact') ?></p>
           </li>
   </li>
 </ul>
 </div>
 </nav>
 </li>



 <?php 
  $total_item = 0;
  $total = 0;
  $productMap = cartInfo();
  if($productMap) {
    foreach($_SESSION['cart'] as $key => $arr) {
      $keyList = showToppingCart($productMap, $key, $arr);
      foreach($keyList as $ele) {
        $total+= $ele['total'];
        $total_item += $ele['amount'];
    }
  }
}
  ?>

 <li class="cart" id="cart_items"><a class="animated"><img src="/img/responsive/cart.png" alt="" width="31" height="30">
     <?php
      if ($total_item != 0) {
      ?>
       <span class="totalProduct"><?php echo $total_item ?></span>
     <?php } ?>
   </a></li>
 </ul>
 <div class="container hidden-lg-up cart_items_list animated fadeOut" style="display: none;">
   <form id="frm_editcard">
     <div class="row">
       <h1 class="textHeaderMobile"><?= $_SESSION['language'] == 'en' ? ' Shopping Cart' : 'Giỏ hàng của bạn' ?> </h1>
       <div class="cart-list-responsive1 col-xs-12" style="zoom: 1;">
         <?php echo showCartForMobile() ?>
       </div>
     </div>
   </form>
 </div>

 <header class="header hidden-md-down">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="logo pull-left">
           <div class="mainLogo">
             <a href="<?php echo HOME_URL_LANG ?>">
               <h1 title="MK Restaurant">
                 <img src="/images/logo.png">
                 <img src="/images/logo1.png">
               </h1>
             </a>
           </div>
           <div class="desLogo">
             <span>dESlOGO</span>
           </div>
         </div>
         <div class="formUserlogin  pull-right">
           <div class="pull-right">
             <div class="deliveryService">
               <div class="deliveryPhoneNumber">
                 <p><a class="desDelivery" href="tel:<?php echo getConstant('tell_contact') ?>"><?php echo getConstant('tell_contact') ?></a></p>
               </div>
             </div>
           </div>
           <div class="pull-right">
             <div class="deliveryService" style="margin-top:18px;">
               <div class="deliveryPhoneNumber" style="margin-top:0;">
                 <p style="padding: 0 10px 0; font-weight:bold;"><?php echo getConstant('address_contact') ?></p>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
   <div class="mainmenu templateLayout1">
     <div class="container">
       <div class="row">
         <div class="col-md-12 p-r-0" style="position: static !important">
           <ul id="mainmenuHeader" class="nav nav-pills">
             <li class="<?php if ($slug_cat == 'home') echo 'active'; ?>">
               <a href="<?php echo HOME_URL_LANG ?>/home" title="MK Restaurant" class="homemenu"></a>
             </li>
             <li class="submenu <?php if ($slug_cat == 'about-us') echo 'active'; ?> submenuAbout ">
               <a class="aboutMN" href="<?php echo HOME_URL_LANG ?>/about-us"> <?php echo getNameCategory(94) ?></a>
               <div class="mainsubmenu">
                 <div class="active-bar"><img src="/img/header/menu/sub_menu_bar_active.png" alt=" " /></div>
                 <div class="container">
                   <ul class="inline">
                     <li><a href="<?php echo HOME_URL_LANG ?>/about">&bull; <?php echo getNameMenuArt(428) ?> </a></li>
                     <li><a href="<?php echo HOME_URL_LANG ?>/blog" class="active">&bull; <?php echo getNameMenuArt(467) ?></a></li>
                   </ul>
                 </div>
               </div>
             </li>
             <li class="submenu <?php if ($slug_cat == 'promotion') echo 'active'; ?> submenuInvestor">
               <a class="investorMN" href="<?php echo HOME_URL_LANG ?>/promotion"><?php echo getNameCategory(89) ?></a>
             </li>
             <li class="<?php if ($slug_cat == 'delivery') echo 'active'; ?>"><a class="activityMN" href="<?php echo HOME_URL_LANG ?>/delivery"> <?php echo getNameCategory(101) ?></a></li>
             <li class="<?php if ($slug_cat == 'gallery') echo 'active'; ?>"><a class="promotionMN" href="<?php echo HOME_URL_LANG ?>/gallery"><?php echo getNameCategory(102) ?></a></li>
             <li class="submenu submenuAbout" style="background:#000 !important">
               <a class="healthymenuMN"><img src="/images/search.png" style="height: 17px;cursor: pointer;"></a>
               <div class="mainsubmenu">
                 <div class="active-bar"><img src="/img/header/menu/sub_menu_bar_active.png" alt=" " /></div>
                 <div class="container">
                   <ul class="inline">
                     <li style="width: 100%; position: relative;">
                       <form class="form-group" action="<?php echo HOME_URL_LANG ?>/search" style="position: relative;overflow: hidden;display: block;width: 100%;margin: 0px auto">
                         <input type="text" placeholder="<?php echo $endterkeywork ?>" class="form-control searchhead" autocomplete="off" name="keyword" style="height: 30px;border-radius: 0px;outline: none;box-shadow: none;">
                         <button class="btn btn-default" style="position: absolute;right: -5px;top: -3px;border:0px; background: 0px;"><i class="fa fa-search"></i></button>
                       </form>
                       <div class="form-conteact">
                       </div>
                     </li>
                   </ul>
                 </div>
               </div>
             </li>
             <li class=" pull-right">
               <a href="<?php echo HOME_URL_LANG ?>/booking" style="display:table">
                 <!-- <a class="healthymenuMN" href="<?php echo HOME_URL_LANG ?>/booking">Booking</a> -->
                 <i class="fa fa-heart" style="display:table-cell;vertical-align: middle;padding-right: 5px;"></i> <?php echo $booking ?></a>
             </li>
           </ul>
         </div>
       </div>
     </div>
     <div class="clear"></div>
   </div>
   <div class="menu-slide templateLayout1">
     <div class="container">
       <div class="row">
         <div class="col-md-12">
           <div class="menu-slide-content">
             <div class="row">
               <div class="col-md-9">
                 <div class="deliveryTop" style="color: #fff;">
                   <div class="textDeliveryOrder">
                     <a href="<?php echo HOME_URL_LANG ?>/delivery">
                       <span><?php echo getPage('click_online', 'name') ?></span>
                     </a>
                     <p class="dateOrder"><?php echo getPage('click_online', 'comment') ?></p>
                   </div>
                   <div class="btnOrderDelivery"><a href="<?php echo HOME_URL_LANG ?>/delivery"><?php echo getPage('order_now', 'name') ?></a></div>
                   <div class="telDeliveryService"><?php echo getPage('order_now', 'comment') ?></div>
                 </div>
               </div>
               <div class="col-md-3">
                 <p class="time">
                   <img src="https://www.mkrestaurant.com/img/header/online_menu/clock_icon.png" alt=" ">
                   <span>10:00:02</span>
                 </p>
                 <p class="menu-slide-close  pull-right">CLOSE</p>
               </div>
             </div>
           </div>
           <div class="menu-slide-do"></div>
         </div>
       </div>
     </div>
     <div class="clear"></div>
   </div>
 </header>
 <script type="text/javascript">
   $('body').on('click', '.delete-cart-item-mobile', function(event) {
      showLoader();
      var id = $(this).attr('data-rowid');
      var key = $(this).attr('data-key');
     $.ajax({
       url: '/action.php',
       type: 'POST',
       data: 'url=delete_cart&id=' + id + '&key='+key,
       dataType: "json",
       success: function(data) {
          closeLoader();
          $('#listProductBill').html(data.desktop);
				  $('.cart-list-responsive1').html(data.mobile);
       }
     });
     return false;
   });



   $('body').on('change', '.cart-item-text-mobile', function() {
      showLoader();
      var  a = $(this).attr('data-rowid');
      var key = $(this).attr('data-key');
      var qty = $(this).val();
        $.ajax({
          url: '/action.php',
          type: 'POST',
          data: 'url=update_cart1&id=' + a + '&key=' + key+'&qty='+qty,
          dataType: "html",
          success: function(data) {
            closeLoader();
            $('.nh_total111').text(data);
          }
        });
        closeLoader();
        return false;
    })
 </script>

 <style type="text/css">
   .form-conteact {
     position: absolute;
     display: inline-block;
     background: #fff;
     color: #333;
     left: 0;
     top: 29px;
     width: 100%;
   }

   .form-conteact ul li {
     list-style: none;
     width: 100% !important;
   }

   .form-conteact {
     max-height: 400px;
     overflow: auto;
   }

   .form-conteact::-webkit-scrollbar-track {
     -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.03);
     background: rgba(255, 255, 255, 0.8);
     width: 1px;

   }

   .form-conteact::-webkit-scrollbar {
     width: 2px;
     background: none;
     /*background-color: #ddd;*/
   }

   .form-conteact::-webkit-scrollbar-thumb {
     -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .04);
     background-color: #fff;
     border-radius: 2px;
   }
 </style>