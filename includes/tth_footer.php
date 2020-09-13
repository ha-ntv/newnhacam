<?php
if (!defined('TTH_SYSTEM')) {
  die('Please stop!');
}
?>
<div class="footer-content">
  <footer class="hidden-md-up">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
        </div>
      </div>
    </div>
  </footer>
  <footer class="footer">
    <div class="container">
      <div class="row" id="navFooter">
        <div class="col-xs-12">
          <ul class="nav nav-tabs nav-justified hidden-sm-down">
            <!-- <li class="nav-item" style="">
              <div class="btnHome nav-link">
                <a href="en.html" title="MK Restaurant"><h3>Home</h3></a>
              </div>
            </li> -->
            <li class="nav-item">
              <a href="<?php echo HOME_URL_LANG ?>/about-us" class="aboutFooter nav-link">
                <h4><?php echo getNameCategory(94) ?></h4>
              </a>
              <ul class="nav">
                <li><a href="<?php echo HOME_URL_LANG ?>/about-us/about-us"><i class="fa fa-angle-double-right" aria-hidden="true" style="font-size: 11px;"></i> <?php echo getNameMenuArt(428) ?></a></li>
                <li><a href="<?php echo HOME_URL_LANG ?>/about-us/blog"><i class="fa fa-angle-double-right" aria-hidden="true" style="font-size: 11px;"></i> <?php echo getNameMenuArt(467) ?></a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="<?php echo HOME_URL_LANG ?>/promotion" class="investorFooter nav-link">
                <h4><?php echo getNameCategory(89) ?></h4>
              </a>
            </li>
            <li class="nav-item">
              <a href="<?php echo HOME_URL_LANG ?>/Delivery" class="activityFooter nav-link">
                <h4><?php echo getNameCategory(101) ?></h4>
              </a>
            </li>
            <li class="nav-item" style="width:0.5%">
              <a href="<?php echo HOME_URL_LANG ?>/gallery" class="promnavFooterotionFooter nav-link">
                <h4><?php echo getNameCategory(102) ?></h4>
              </a>
            </li>
            <li class="nav-item">
              <a href="<?php echo HOME_URL_LANG ?>/booking" class="healthymenuFooter nav-link">
                <h4><?php echo $booking ?></h4>
              </a>
            </li>
            <li class="nav-item">
              <a class="cardFooter nav-link">
                <h4><?php echo $footerEmail ?></h4>
              </a>
              <ul class="nav">
                <li>
                  <div class="followfooterBox">
                    <div class="formEmailfooter">
                      <div class="input-append">
                        <form id="formNewsletter" onsubmit="return sendMail('register_email','formNewsletter')">
                          <div class="input-group" style="width: 100%;">
                            <input id="inputEmailNewsletter" required name="email" type="email" placeholder="<?php echo $address_email ?>">
                            <span class="input-group-btn" required>
                              <!-- <button id="btnNewsletter" class="btn " type="submit"><span>Go</span></button> -->
                              <button class="btn" id="btnNewsletter" type="submit"><span><img src="img/responsive/arrow-right.png" class="btn-arrow-right" alt=""> <?php echo $go ?></span></button>
                            </span>
                          </div>
                        </form>
                      </div>
                    </div>
                    <div class="listFollowUs">
                      <ul id="ullistFollowUs" class="nav nav-pills m-l-0">
                        <li><span><?php echo $folow_us ?></span></li>
                        <li><a class="follow-facebook" href="<?php echo getConstant('link_facebook') ?>" target="_blank"></a></li>
                        <li><a class="follow-youtube" href="<?php echo getConstant('link_youtube') ?>" target="_blank"></a></li>
                        <li><a class="follow-ig" href="<?php echo getConstant('link_instagram') ?>" target="_blank"></a></li>
                      </ul>
                    </div>
                    <div class="row hidden-md-up m-b">
                      <div class="col-md-12 delivery-service-footer">
                        <img src="img/responsive/phone.svg" height="23" alt="phone" style="margin-top: -10px"> Delivery service <span>1642</span>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="borderRed"></div>
    <div class="listFooter listFooter-xs m-t hidden-sm-up">
      <div class="col-xs-11 col-xs-offset-1 p-a-0">
        <ul class="nav nav-pills m-b-0">
          <li><a href="<?php echo HOME_URL_LANG ?>/about-us"><?php echo getNameCategory(94) ?> <span class="border-right-footer">|</span></a></li>
          <li><a href="<?php echo HOME_URL_LANG ?>/promotion"><?php echo getNameCategory(89) ?> <span class="border-right-footer">|</span></a></li>
          <li><a href="<?php echo HOME_URL_LANG ?>/promotion"><?php echo getNameCategory(101) ?> <span class="border-right-footer">|</span></a></li>
          <li><a href="<?php echo HOME_URL_LANG ?>/gallery"><?php echo getNameCategory(102) ?> <span class="border-right-footer">|</span> </a></li>
          <li><a href="<?php echo HOME_URL_LANG ?>/booking"><?php echo $booking ?> </a></li>
        </ul>
      </div>
      <div class="col-xs-11 col-xs-offset-1 p-a-0">
        <p class="copyright text-left" style="margin-bottom: 18px;"><span><?php echo getPage('copyrightbot', 'comment') ?> </span></p>
      </div>
    </div>
    <div class="container copyright-bar hidden-md-down">
      <div class="row listFooter">
        <div class="col-md-6 col-sm-12">
          <ul class="nav nav-pills">
            <li><a href="<?php echo HOME_URL_LANG ?>/about-us"><?php echo getNameCategory(94) ?> <span class="border-right-footer">|</span></a></li>
            <li><a href="<?php echo HOME_URL_LANG ?>/promotion"><?php echo getNameCategory(89) ?> <span class="border-right-footer">|</span></a></li>
            <li><a href="<?php echo HOME_URL_LANG ?>/promotion"><?php echo getNameCategory(101) ?> <span class="border-right-footer">|</span></a></li>
            <li><a href="<?php echo HOME_URL_LANG ?>/gallery"><?php echo getNameCategory(102) ?> <span class="border-right-footer">|</span> </a></li>
            <li><a href="<?php echo HOME_URL_LANG ?>/booking"><?php echo $booking ?> </a></li>
          </ul>
        </div>
        <div class="col-md-6 col-sm-12">
          <p class="copyright text-right"><a href=""><span><?php echo getPage('copyrightbot', 'comment') ?></span></a></p>
        </div>
      </div>
    </div>
  </footer>
</div>
<script type="text/javascript" src="/js/owlCarousel/owl.carousel.min.js">
</script>


<script type="text/javascript">
  $('.menu-slide-do').click(function() {
    $(this).siblings('.menu-slide-content').slideToggle();
  })
  $('.submenu').on('mouseover', function() {
    $(this).find('.mainsubmenu').show();
  })
  $('.submenu').on('mouseout', function() {
    $(this).find('.mainsubmenu').hide();
  })
  $('body').on('click', ' .btnlogin,.btn-login-mobile', function(e) {
    e.preventDefault();

    $(".formLoginDetail").slideToggle("fast");
  })
  $('body').on('click', '.btnAddtocartText', function(e) {
    var that = this;
    var a = $(this).siblings('input[name="id"]').val();

    if ($(window).width() >= 768) {
      $.ajax({
        url: '/action.php',
        type: 'POST',
        data: 'url=add_cart&id=' + a + '&qty=1',
        dataType: "html",
        success: function(data) {
          closeLoader();
          $('#listProductBill').html(data);
        }
      });
    } else {
      var now = $('#cart_items .totalProduct').text();
      if (now != "") now = Number(now) + 1;
      else now = 1;
      $.ajax({
        url: '/action.php',
        type: 'POST',
        data: 'url=add_cart1&id=' + a + '&qty=1',
        dataType: "json",
        success: function(data) {
          closeLoader();
          $('.cart-list-responsive1').html(data.html);
          if ($('#cart_items .totalProduct').length)
            $('#cart_items .totalProduct').text(now);
          else $('#cart_items a').append('<span class="totalProduct">1</span>')
          $('#total-item-cart').text(data.total_item)
          $('#total-value-cart').text(+data.total.toLocaleString('de-DE') + 'đ');
          $('#d-cart').show();
        }
      });
    }
  });
  $(".owl-carousel").owlCarousel({
    items: 1,
    margin: 0,
    autoplay: true,
    autoplayTimeout: 3000,
    autoplayHoverPause: true,
    nav: false,
    navText: ["", ""],
    dots: true,
    animateOut: 'fadeOut',
    onInitialized: initialized
  });

  function initialized(event) {
    $('div.progress-owl-carousel').remove();
  }

  var clk = function() {
    var date = new Date(new Date().getTime());
    var hh = date.getHours();
    var mm = date.getMinutes();
    var ss = date.getSeconds();
    // This line gives you 12-hour (not 24) time
    //    if (hh > 12) {hh = hh - 12;}
    // These lines ensure you have two-digits
    if (hh < 10) {
      hh = "0" + hh;
    }
    if (mm < 10) {
      mm = "0" + mm;
    }
    if (ss < 10) {
      ss = "0" + ss;
    }
    // This formats your string to HH:MM:SS
    var t = hh + ":" + mm + ":" + ss;
    $('.menu-slide-content .time span').html(t);

  }
  setInterval(clk, 1000);

  (function() {
    if ($(window).width() <= 768) {
      $(window).scroll(function() {
        var top = $(window).scrollTop();
        if (top > 66) {

          $('.nav-product-menu-responsive, .home-product-menu-mobile, .line-between-nav-product, .overlay-menu-product').addClass('affix');
        } else $('.nav-product-menu-responsive, .home-product-menu-mobile, .line-between-nav-product, .overlay-menu-product').removeClass('affix');
      });
      $(document).on('click', '.nav-product-menu-responsive', function() {

        $(this).parent().next('.hidden-md-up').toggle();
        $(this).parent().next('.hidden-md-up').find('.overlay-menu-product').toggle();

      });
      $(document).on('click', '.overlay-menu-product', function() {

        $(this).parent().toggle();
        $(this).toggle();

      });

      $(document).on('click', '.home-product-menu-mobile .nav-link', function(event) {
        event.preventDefault();

        $('#mixandmatch_responsive_render').html('').fadeOut(0);
        $('#promotion_render_responsive').parents('.tab-content').removeAttr('style');
      });
    }
    $(document).on('click', '#cart_items a', function() {
      $(this).toggleClass('active');
      if ($('.cart_items_list').hasClass('fadeOut')) {
        $('.cart_items_list').removeClass('fadeOut').addClass('fadeIn');
      } else {
        $('.cart_items_list').removeClass('fadeIn').addClass('fadeOut');

      }
    })
    $(document).on('click', '.menu-2-solid a', function() {
      $(this).toggleClass('gn-selected');
      $('.gn-menu-wrapper').toggle();
    })
  })()
  $('body').on('click', '#payment-btn-mobile', function(e) {
    e.preventDefault();
    <?php
    /*   if(isset($_SESSION['user_id'])) {
        if($_SESSION['user_id']!= 1 && $_SESSION['user_id']!= 25) {  */ ?>
    location.href = "<?= HOME_URL_LANG . '/payment' ?>";
    <?php /*  }else {
         */ ?>
    // alert('<?= $_SESSION['language'] == 'en' ? 'You must login before checking out' : 'Bạn phải đăng nhập để tiến hành đặt hàng' ?>');
    <?php
    /*  }
    }else {  */ ?>

    //  alert('<?= $_SESSION['language'] == 'en' ? 'You must login before checking out' : 'Bạn phải đăng nhập để tiến hành đặt hàng' ?>');
    <?php  // } 
    ?>

  })
</script>
<?php
$isMobile = preg_match("/(android|webos|avantgo|iphone|ipad|ipod|blackberry|iemobile|bolt|boost|cricket|docomo|fone|hiptop|mini|opera mini|kitkat|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
if ($isMobile) :
  $cartInfo = calculateCart();
  if ($cartInfo['total_item'] > 0) $display = 'block';
  else $display = 'none';
?>

  <div class="d-cart" id="d-cart" style="display:<?php echo $display; ?>">
    <div class="d-cart-item">
      <div class="modal-button row-mod no-gutters align-items-center see-mb-cart">
        <div class="col-auto">
          <div class="d-cart-num mr-3"><span class="num" id="total-item-cart"><?php echo $cartInfo['total_item'] ?></span>
            <img class="svg-inline" src="/images/bag-deli.svg" />
          </div>
        </div>
        <div class="col"><span><strong class="mr-2" id="total-value-cart"><?php echo formatNumberVN($cartInfo['total']) . ' đ' ?></strong></span>&nbsp;<span class="tooltip-info"></span></div>
      </div>
    </div>
    <div class="d-cart-btn"><span class="submit">Delivery<i class="icon icon-angle-right"></i></span></div>
  </div>

  <div class="d-filter-material have-cart" id="open_category">
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.75 19.44" class="svg-inline">
      <path d="M20.25,0H1.5a1.5,1.5,0,0,0,0,3H20.25a1.5,1.5,0,0,0,0-3Z"></path>
      <path d="M20.25,16.44H1.5a1.5,1.5,0,0,0,0,3H20.25a1.5,1.5,0,0,0,0-3Z"></path>
      <path d="M20.25,8.31H1.5a1.5,1.5,0,0,0,0,3H20.25a1.5,1.5,0,0,0,0-3Z"></path>
    </svg>
  </div>
  <div id="note_menu" class="menu-popup modal hide fade fade-only" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true" style="top:0px;">
    <div class="modal-dialog mobile-modal" role="document">
      <div class="modal-content">
        <div class="modal-nav ">
          <div class="container">
            <nav class="navbar navbar-blue row justify-content-between align-items-center">
              <div class="navbar-left col-auto"><span class="navbar-link modal-close svg-md" data-dismiss="modal" aria-hidden="true"><img class="svg-inline" src="/images/angle-left.svg"></span></div>
              <div class="navbar-title col text-truncate text-center">Add Note</div>
              <div class="navbar-right col-auto"><span class="navbar-link modal-close-note svg-md" data-dismiss="modal" aria-hidden="true"><img class="svg-inline" src="/images/check.svg"></span></div>
            </nav>
          </div>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="o-m-note"><textarea name="note" id="last-note" class="form-control border-0 bg-transparent" cols="30" rows="3" placeholder="Note"></textarea>
              <div class="add-img">
                <ul class="list-unstyled add-img-list list-inline text-right"></ul>
                <div class="add-img-btn">
                  <div class="btn note-update-btn btn-dark"><img class="svg-inline" src="/images/image-add.svg"><input type="file" id="image-selector" multiple="" style="visibility: hidden; float: left; display: none;"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="note_menu2" class="menu-popup modal hide fade fade-only" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true" style="top:30%;" <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body ">
        <div class="dialog ">
          <div class="dialog-inner">
            <div class="dialog-title">Note</div>
            <div class="dialog-input-field dialog-input-double item-input">
              <input type="hidden" name="id" value="0" >
              <input type="hidden" name="key" value="0">
              <div class="item-input-wrap"><input type="text" class="dialog-input" value=""></div>
            </div>
          </div>
          <div class="dialog-buttons"><span class="dialog-button" data-dismiss="modal" aria-hidden="true">Cancel</span><span class="dialog-button dialog-button-bold update-note">Done</span></div>
        </div>
      </div>
    </div>
  </div>
  <div id="mobile-address-promote-modal" class="menu-popup modal hide fade fade-only" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true" style="top:0px;"></div>
  <div id="mobile-cart-info-modal" class="menu-popup modal hide fade fade-only" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true" style="top:0px;"></div>
<?php endif; ?>