<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
  $date = new DateClass();
//-------------
?>
<style type="text/css">
  .thumbnails.row.p-l{
    padding: 0px 10px !important;
  }
 .caption strong{
  transition: all 0.4s ease-in-out;
  -webkit-transition: all 0.4s ease-in-out;;
 }
 .caption strong:hover{
  color: #f1b44d;
 }
 #listProductBill input.cart-item-text:focus{
  border-color: inherit;
 }
 .boxx{
  background: #753b16;
  padding: 5px;
  color: #fff;
  font-weight: 600;
  position: relative;
  margin-bottom: 7px;
 }
 .boxx:before {
    content: "";
    width: .625rem;
    height: 100%;
    position: absolute;
    top: 0px;
    background-image: radial-gradient(#f4f4f4 3px,transparent 0);
    background-size: .625rem .625rem;
    left: -.3125rem;
 z-index: 3;}

 .p-r-0 .spinedit +.spinedit.spinedit1 {display:inline-block!important;}
</style>
    <div class="billShopDelivery m-t" style="margin-top: 0px !important">
        <div class="textHeaderBill">
            <h3 class="text-center m-a-0">
           <?=$_SESSION['language'] == 'en'? ' Your Ordering Food':'Giỏ hàng của bạn'?>                      </h3>
        </div>
        <div id="listProductBill" style="padding:10px">
              <?php echo showCartForDesktop() ?> 
        </div>
    </div>

<?php
  $time_now = time();
  $db->table = "others";
  $db->condition = "is_active = 1 and hot = 1 AND thestart <  $time_now  AND theend > $time_now";
  $db->order = "";
  $db->limit = "";
  $rws = $db->select();
  if(count($rws) > 0) {
?>
<div class="timeDeliverySetting" style="padding-top: 10px;margin-top: 5px !important;margin-bottom: 20px;">
  <?php 
    foreach($rws as $rw){
  ?>
    <p>
      <div class="row">
          <div class="col-md-12">
            <div class="boxx" style="padding-top: 10px;">
                <p ><?php echo $rw['name'] ?></p>
            </div>
          </div>
          
        </div>
      </p>
 <?php } ?>
</div>
<?php } ?>
<div class="timeDeliverySetting" style="padding-top: 10px;margin-top: 20px !important;margin-bottom: 20px;">
    <img src="/img/responsive/clock.png" width="44" height="44">
    <span class="textOrderFood"><?=$_SESSION['language'] == 'en'? 'Available Hours':'Giờ mở cửa'?></span>
    <span class="textTimeSetting text-nowrap">
        <strong><?php echo getPage('available_hours', 'comment') ?></strong>
    </span>
</div>
<div class="foodRecommendMenu hide">
    <div class="textHeaderRecommendMenu">
        <h3>Nhan</h3>
    </div>
    <div class="tab-sidebar-right">
        <img src="img/healthymenu/under_menu_food_tray.png" alt=" "/>
    </div>
    <div id="listProductRecommendMenu">
    </div>
</div>
<div class="locationDeliveryBox" style="margin-top: 15px;">
        <?php echo getPage('map_right', 'content') ?>
</div>
<script type="text/javascript">


   $('body').on('click','.spinedit1 .fa-chevron-up',function(){
      var  n = $(this).parent().parent().find('input').val()
      n = Number(n) + 1;
      $(this).parent().parent().find('input').val(n)
      var  m = $(this).parent().parent().find('input').val()
      var  a = $(this).parent().attr('data-id')
      var dataList = $query('#getUpdateCard');
      var key =   $(this).parent().attr('data-key')
      showLoader();
      $.ajax({
          url:'/action.php',
          type: 'POST',
          data: 'url=update_cart2&id='+a+'&key=' + key+'&qty='+n,
          dataType: "html",
          success: function(data){
              closeLoader();
              $('.billTotalPrice').html(data);
          }
      });
      return false;

  })


  $('body').on('click','.spinedit1 .fa-chevron-down',function(){
      var n = $(this).parent().parent().find('input').val()
      if(n > 1) {
        n = Number(n) - 1;
        $(this).parent().parent().find('input').val(n)
        var  m = $(this).parent().parent().find('input').val()
        var  a = $(this).parent().attr('data-id');
        var key = $(this).parent().attr('data-key');
          showLoader();
          $.ajax({
            url:'/action.php',
            type: 'POST',
            data: 'url=update_cart2&id='+a+'&key=' + key+'&qty='+n,
            dataType: "html",
            success: function(data){
                closeLoader();
                $('.billTotalPrice').html(data);
            }
          });
        return false;
      }
  })


  $('body').on('change','.cart-item-text', function(){
    showLoader();
    var a = $(this).attr('data-rowid');
    var key = $(this).attr('data-key');
    var qty = $(this).val();
      $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=update_cart&id='+a+'&key=' + key+'&qty='+qty,
        dataType: "json",
        success: function(data){
            closeLoader();
            $('.subtotalPrice').text(data.a);
			      $('.monan2').text(data.b);
        }
      });
    closeLoader();
    return false;
  })


  $('body').on('click','.delete-cart-item',function(event) {
    /* Act on the event */
    showLoader();
    var id = $(this).attr('data-rowid');
    var key = $(this).attr('data-key');
     $.ajax({
          url:'/action.php',
          type: 'POST',
          data: 'url=delete_cart&id='+id+'&key='+key,
          dataType: "json",
          success: function(data){
              closeLoader();
              $('#listProductBill').html(data.desktop);
				      $('.cart-list-responsive1').html(data.mobile);
          }
        });
    return false; 
  });


   $('body').on('click','#empty-ca',function(event) {
    /* Act on the event */
    $.ajax({
          url:'/action.php',
          type: 'POST',
          data: 'url=detroy_cart',
          dataType: "html",
          success: function(data){
              closeLoader();
                html = '<p>No added item in your cart.</p><p>Click <a href="<?php echo HOME_URL_LANG ?>/delivery"><strong>Add to Cart</strong></a> button on the dish<br> to begin your order</p>';
                $('.listProductBill').html(html);
          }
        });
    return false; 
  });

  $(document).on('keyup', '.cart-item-text', function () {
    var _this = $(this);
    var min = parseInt(_this.attr('min')) || 1; 
    var max = parseInt(_this.attr('max')) || 100; 
    var val = parseInt(_this.val()) || (min - 1); 
    if(val < min)
        _this.val( min );
    if(val > max)
        _this.val( max );
});
(function(){
/*  $('.listProductBill.empty').on('click','.btnconfirm',function(e){
      e.preventDefault();

   <?php 
    if(isset($_SESSION['user_id'])) {
        if($_SESSION['user_id']!= 1 && $_SESSION['user_id']!= 25) { ?>
             location.href= "<?=HOME_URL_LANG.'/payment'?>";
      <?php  }else {
         ?>
          $('html,body').animate({ scrollTop: $('#loginBox').offset().top }, 'slow'); $('#loginBox a').trigger('click') ;
       <?php
     }
    }else {?>
    if($(window).width() >= 768) {
    $('html,body').animate({ scrollTop: $('#loginBox').offset().top }, 'slow'); $('#loginBox a').trigger('click') ;
      } else {
       alert('<?=$_SESSION['language'] == 'en'? 'You must login before checking out':'Bạn phải đăng nhập để tiến hành đặt hàng'?>');
   }

<?php }
 
  ?>
});
*/
})()
</script>