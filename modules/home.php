<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
$date = new DateClass();
$stringObj = new String();
?>
<style type="text/css">
    .swiper-container{
        padding-bottom: 30px;
    }
    .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction{
        text-align: right;
    }
    .swiper-pagination-bullet-active{
        background: -moz-linear-gradient(to bottom, #753b16 0%,#efbf6c 100%); 
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#753b16), color-stop(100%,#efbf6c)); 
        background: -webkit-linear-gradient(to bottom, #753b16 0%,#efbf6c 100%); 
        background: -o-linear-gradient(to bottom, #753b16 0%,#efbf6c 100%); 
        background: -ms-linear-gradient(to bottom, #753b16 0%,#efbf6c 100%); 
        background: linear-gradient(to bottom, #753b16 0%,#efbf6c 100%);
    }
</style>
<div class="container">
    <div class="row" style="margin-top: 20px;margin-bottom: 20px;">
      <div class="col-md-12">
          <div class="slideshow" data-cycle-fx="scrollHorz" data-cycle-loader="true" data-cycle-timeout="0" data-cycle-slides="> div.slideItem" data-cycle-prev=".slideshow-prev" data-cycle-next=".slideshow-next">
            <div class="slideItem">
            <div class="swiper-container">
              <div class="swiper-wrapper">
                <?php
                  $db->table = "gallery";
                  $db->condition = "`is_active` = 1 AND `gallery_menu_id` IN (SELECT `gallery_menu_id` FROM `".TTH_DATA_PREFIX."gallery_menu` WHERE `category_id` = 103)";
                  $db->order = "created_time desc";
                  $db->limit = "";
                  $rows = $db->select();
                  foreach($rows as $row){
                ?>
                  <div class="swiper-slide">
                      <div class="item itemproject_home">
                          <div class="item_datnenhomes">
                              <div class="tg_dnhome">
                                  <a href="<?php echo $row['link'] ?>" class="bgrinimg">
                                     <img src="<?php echo HOME_URL ?>/uploads/gallery/home-<?php echo $row['img'] ?>">
                                      <p><?php echo $row['name'] ?></p>
                                  </a>
                                 
                              </div>
                          </div>
                      </div>
                  </div>
                  <?php } ?>
              </div>
              <div class="swiper-pagination"></div>
              <div class="swiper-button-prev"></div>
              <div class="swiper-button-next"></div>
          </div>
        </div>
    </div>
</div>
</div>
</div>
<script type="text/javascript">
    function  slide_top_article(){
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        spaceBetween: 10,
        autoplay: true,
        loop:true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        breakpoints: {
            1024: {
                slidesPerView: 3,
            },
            960: {
                slidesPerView: 3,
            },
            480: {
                slidesPerView: 2,
            },
            400: {
                slidesPerView: 1,
            }
        }
      })
    }


    slide_top_article();
    $(window).resize(function(event) {
      slide_top_article();
    });
</script>
