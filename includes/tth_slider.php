<?php 
if($slug_cat != 'contact'){ ?>
<link rel="stylesheet" href="/css/owl.carousel.css">

<div id="upsale-produt-modal" class="hide menu-popup modal-product-cate-list modal fade fade-only in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true" >
    <div class="modal-dialog menuPopupRedBox" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">√ó</button>
            <div class="listDeliveryProduct modal-body container">
                <div class="header-product-category">
                    <div class="row">
                        <div class="col-xs-12 col-md-10 match-height" style="height: 91px;">
                            <h1 class="fontgreen" style="font-size: 5rem;">
                            Buy special price              </h1>
                        </div>
                    </div>
                </div>
                <div class="row" id="upsale-produt-modal-list" style="margin-bottom: 15px;overflow: hidden;">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="owl-carousel owl-carousel-desktop hidden-xs-down">
    <?php 
      $db->table = "gallery";
      $db->condition = "`is_active` = 1 AND `gallery_menu_id` IN (SELECT `gallery_menu_id` FROM `".TTH_DATA_PREFIX."gallery_menu` WHERE `category_id` = 91)";
      $db->order = "created_time desc";
      $db->limit = "";
      $rows = $db->select();
      $num_slider = $db->RowCount;
      $i = 0;
      foreach ($rows as $row) {
        $i ++;
    ?>
    <div class="item">
        <a href="<?php echo $row['link'] ?>" onclick="$('#promotionHM<?php echo $i ?>').trigger('click')">
            <img class="hide" src="<?php echo HOME_URL ?>/uploads/gallery/slider-<?php echo $row['img'] ?>" alt="<?php echo $row['name'] ?>" />
        </a>
    </div>
   <?php } ?>
</div>

<div class="owl-carousel owl-carousel-mobile hidden-sm-up">
    <?php 
      $db->table = "gallery";
      $db->condition = "`is_active` = 1 AND `gallery_menu_id` IN (SELECT `gallery_menu_id` FROM `".TTH_DATA_PREFIX."gallery_menu` WHERE `category_id` = 91)";
      $db->order = "created_time desc";
      $db->limit = "";
      $rows = $db->select();
      $num_slider = $db->RowCount;
      $i = 0;
      foreach ($rows as $row) {
        $i ++;
    ?>
    <div class="item">
        <a href="#" onclick="$('.home-product-menu-mobile li.promotion a').trigger('click');"><img class="hide" src="<?php echo HOME_URL ?>/uploads/gallery/slider-<?php echo $row['img'] ?>" alt="<?php echo $row['name'] ?>" /></a>
    </div>
    <?php } ?>
</div>
<?php }else{ ?>
<div style="display: inline-block; width: 100%;">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7668.272555285048!2d108.2004378239541!3d16.058416501836927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219a273df52d1%3A0xb203f9fca295071a!2zQ-G6o25nIGjDoG5nIGtow7RuZyBRdeG7kWMgdOG6vyDEkMOgIE7hurVuZw!5e0!3m2!1svi!2s!4v1546964512571" width="100%" height="430" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
<?php } ?>
<div class="clearfix"></div>
<div class="container hidden-md-up p-t search_area">
    <div class="row">
        <form action="<?php echo HOME_URL_LANG ?>/search" method="get">
            <div class="col-xs-8 hidden-md-up p-r-0">
                <div class="icon-addon addon-md">
                    <input type="search" placeholder="Tìm món" class="form-control search_kw" name="keyword" value="" style="border-radius: 0">
                    <label class="fa fa-search" rel="tooltip" title="món"></label>
                    <span class="clear_search"><img src="/images/close2.svg" title="close"></span>
                </div>
            </div>
            <div class="col-xs-4 hidden-md-up p-l-0">
                <input type="submit" value="SEARCH" class="btn btn-danger btn-sm form-control search_btn_all" style="border-radius: 0;height: 33px;background:#fbb743;border-color: #d7a857">
            </div>
        </form>
    </div>
</div>
