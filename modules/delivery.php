<?php
if (!defined('TTH_SYSTEM')) {
    die('Please stop!');
}
//-----------------
?>
<style type="text/css">
    #mainHealthtmenuList li.active a {
        color: #753b16;
    }

    .page-navigation {
        text-align: center;
    }

    .pagination li a {
        background: none !important;
        border: none !important;
        color: #333 !important;
    }

    .pagination>.active>a {
        color: #f7a926 !important;
    }

    .active.nav-item #promotionHM {
        color: #753b16 !important;
    }

    .active.nav-item a i {
        display: inline !important;
    }

    .active.nav-item {
        transform: translateY(-5px);
        -webkit-transform: translateY(-5px);
    }

    .btn_dd {
        outline: none !important;
        transition: all 0.4s ease-in-out;
        -webkit-transition: all 0.4s ease-in-out;
        border-radius: 1px;
    }

    .btn_dd:hover {
        color: #fff !important;
        background: #753b16;
    }
</style>
<div class="nav-product-wrapper hidden-md-up m-t">
    <div class="nav-product-menu-responsive hidden-md-up">
        <i class="fa fa-play"></i>
        <span class="txt-inside" style=""><?= $allproduct ?></span>
        <span class="right-img" id="set-grid"><img src="/images/grid.svg"></span>
        <span class="right-img" id="set-list"><img src="/images/list.svg"></span>
    </div>
</div>
<div class="hidden-md-up" style="background:#eeeeee;position: relative;display:none">
    <div class="col-xs-12 line-between-nav-product">
        <hr class="m-a-0">
    </div>
    <ul class="container home-product-menu-mobile m-b-0 animated list-unstyled" role="tablist">
        <?php
        $db->table = "product_menu";
        $db->condition = "is_active = 1 and category_id = 101 and product_menu_id <> 277";
        $db->limit = "";
        $db->order = "sort ASC";
        $rws = $db->select();
        foreach ($rws  as $rw) {
        ?>
            <li class="col-xs-4 p-a-0 promotion nav-item">
                <a data-imgname="promotion.svg" href="<?php echo HOME_URL_LANG ?>/<?php echo $rw['slug'] ?>" class="nav-link " data-id="<?php echo $rw['product_menu_id'] ?>" role="tab" data-toggle="tab">
                    <img src="<?php echo HOME_URL ?>/uploads/product_menu/icon-<?php echo $rw['img'] ?>" alt="Vegetable" class="img-responsive img-center">
                    <span><?php echo $rw['name'] ?></span>
                </a>
            </li>
        <?php } ?>
        <div class="clearfix"></div>
        <br>
    </ul>
    <div class="overlay-menu-product animated"></div>
</div>
<div class="container search_container">
    <div id="mixandmatch_responsive_render" style="display:none"></div>
    <div class="hidden-md-up">
        <div class="tab-pane ">
            <?php
            $db->table = "product_menu";
            $db->condition = "is_active = 1 and category_id = 101 and product_menu_id <> 277";
            $db->limit = "";
            $db->order = "sort ASC";
            $rowdds = $db->select();
            foreach ($rowdds as $rowg) {
                $id_sub = $rowg['product_menu_id'];
            ?>
                <div class="textSubHeader m-b-0" id="pro-head-<?= $rowg['product_menu_id'] ?>-sm">
                    <div class="col-title">
                        <?php echo  '<h3>' . $rowg['name'] . '</h3>'; ?>
                        <div class="graybox">
                        </div>
                    </div>
                    <div class="pull-right">
                        <div class="paginationBox  paginationBoxTop">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            <?php
                echo '<section id="product-sec-' . ($id_sub) . '-sm" class="main main-realty ">';
                if (!defined('TTH_SYSTEM')) {
                    die('Please stop!');
                }
                include(_F_MODULES . DS . "x_product1.php");
                echo '</section>';
            }
            ?>
        </div>
        <div class="btnBackToTop pull-left m-t-lg">
            <a class="btnBackToTop" href="#healthymenu"></a>
        </div>
    </div>
</div>
<div class="container">
    <div class="row hidden-md-down">
        <div class="col-xs-12">
            <div class="breadcrumbList">
                <ul class="breadcrumb">
                    <li><a href="/"><?= $_SESSION['language'] == 'en' ? 'Home' : 'Trang chủ' ?></a></li>
                    <li class="active"><?php echo getNameCategory(101) ?></li>
                </ul>
            </div>

        </div>
    </div>
    <div class="healthymenuBox healthymenuBox-DeliveryNew">
        <div id="mainHealthymemu" class="tabbable hidden-sm-down">
            <!-- <ul id="mainHealthtmenuList" class="nav nav-tabs nav-justified"> -->
            <div id="mainHealthtmenuList" class="swiper-container1 nav nav-tabs nav-justified" style="overflow: hidden;">
                <div class="swiper-wrapper">
                    <?php
                    $db->table = "product_menu";
                    $db->condition = "is_active = 1 and category_id = 101 and product_menu_id <> 277";
                    $db->limit = "";
                    $db->order = "sort ASC";
                    $rws = $db->select();
                    foreach ($rws  as $rw) {
                    ?>
                        <!-- <li class="nav-item <?php if ($rw['product_menu_id'] == $id_menu) echo 'active' ?>"> -->
                        <div class="swiper-slide nav-item link__href <?php if ($rw['product_menu_id'] == $id_menu) echo 'active' ?>" data-id="<?php echo $rw['product_menu_id'] ?>">
                            <div class="item itemproject_home">
                                <a id="promotionHM">
                                    <img src="<?php echo HOME_URL ?>/uploads/product_menu/icon-<?php echo $rw['img'] ?>" alt="<?php echo $row['name'] ?>" class="img-responsive img-center">
                                    <p class="m-t"><?php echo $rw['name'] ?></p>
                                    <i class="fa fa-play"></i>
                                </a>
                                <!-- </li> -->
                            </div>
                        </div>
                    <?php  } ?>
                    <!-- </ul> -->
                </div>
            </div>

        </div>
        <div class="row m-t">
            <div class="productHealthyDelivery col-lg-9 col-sm-8">
                <div class="subHealthymemu hidden-sm-down">
                    <ul id="subHealthymemuList" class="nav nav-tabs">
                        <li class="active text-center">VOUCHER</li>
                        <?php
                        $db->table = 'others';
                        $db->condition = 'is_active = 1 AND others_menu_id = 9';
                        $db->order = '';
                        $db->limit = 1;
                        $vs = $db->select();
                        if (count($vs)) : ?>
                            <li class=" text-center">
                                <div class="promotions-order">
                                    <div  class="promotion-item">
                                        <div><img src="/images/freeship.png" alt="Nhập &quot;FREESHIP&quot;: Freeship tới 3km" class="icon-promotion">
                                            <div class="content">Nhập &quot; <span class="promo-code"><?php echo $vs[0]['name'] ?></span> &quot;  : Freeship tới <?php echo $vs[0]['km'] ?>km</div>
                                        </div><button class="code-copy" ><span class="promo_FREESHIP">Copy code</span><span class="fa fa-copy"></span></button>
                                    </div>
                                </div>
                            </li>
                        <?php endif; ?>
                        <?php
                        $db->table = 'others';
                        $db->condition = 'theend >=' . time() . ' AND is_active = 1 AND others_menu_id = 8';
                        $db->order = '';
                        $db->limit = '';
                        $vs = $db->select();
                        if (count($vs)) : ?>
                            <li class=" text-center">
                                <div class="promotions-order">
                                    <div class="promotion-item">
                                        <div><img src="/images/pro-code.png" alt="Nhập" class="icon-promotion">
                                            <div class="content">Nhập &quot; <?php echo $vs[0]['name'] ?> &quot; </div>
                                        </div><button class="code-copy" ><span class="promo_FREESHIP">Copy code</span><span class="fa fa-copy"></span></button>
                                    </div>
                                </div>
                            </li>
                        <?php endif; ?>
                    </ul>
                </div>
                <div class="tab-sub-heathy-menu-full hidden-sm-down">
                    <div class="shadow"></div>
                </div>
                <div class="tab-content hidden-sm-down">
                    <div class="tab-pane active" id="promotionBox">

                        <?php
                        $db->table = "product_menu";
                        $db->condition = "category_id = 101 and product_menu_id <> 277";
                        $db->limit = "";
                        $db->order = "sort ASC";
                        $rowdds = $db->select();
                        foreach ($rowdds as $rowd) {
                            $id_sub = $rowd['product_menu_id'];
                        ?>
                            <div class="row textSubHeader m-b-0" id="pro-head-<?= $rowd['product_menu_id'] ?>">
                                <div class="col-xs-6 col-title">


                                    <?php echo  '<h3>' . $rowd['name'] . '</h3>'; ?>

                                    <div class="graybox">
                                    </div>
                                </div>
                                <div class="col-xs-6 pull-right">
                                    <div class="paginationBox  paginationBoxTop">
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        <?php

                            echo '<section id="product-sec-' . $id_sub . '" class="main main-realty ">';
                            if (!defined('TTH_SYSTEM')) {
                                die('Please stop!');
                            }
                            include(_F_MODULES . DS . "x_product1.php");
                            echo '</section>';
                        }
                        ?>
                    </div>
                </div>
            </div>
            <div class="sidebarRightDelivery col-lg-3 col-sm-4 hidden-sm-down">
                <?php
                include(_F_INCLUDES . DS . "tth_right1.php"); ?>
            </div>
        </div>
    </div>
    <div id="healthymenu-modal" class="menu-popup modal hide fade fade-only" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="true" style="top:0px;"></div>
</div>
<script type="text/javascript">
    if ($(window).width() >= 768) {

        $('.link__href').click(function() {
            $('.swiper-slide').removeClass('active');
            $(this).addClass('active')
            let data_id = $(this).attr('data-id')
            $('html,body').animate({
                scrollTop: $('#pro-head-' + data_id).offset().top
            }, 2000);
        })
    } else {
        $('.nav-item .nav-link ').click(function() {
            $('.nav-product-menu-responsive').trigger('click')

            let data_id = $(this).attr('data-id')
            $('html,body').animate({
                scrollTop: $('#pro-head-' + (data_id) + '-sm').offset().top
            }, 2000);
        })
    }
    $('body').on('click', '.btn_dd', function() {

        var $page = $(this).attr('data-page');
        var $id = $(this).attr('data-id');
        var that = this;
        var alignment = $('body').hasClass('body-full') ? 'full-width': '';
        showLoader();
        $.ajax({
            url: '/action.php',
            type: 'POST',
            data: 'url=getproduct1&id=' + $id + '&page=' + $page+'&alignment='+alignment,
            dataType: 'json',
            success: function(data) {
                closeLoader();

                $('#product-sec-' + $id + ' .show_loadproduct').append(data.dt);
                $('#product-sec-' + $id + '-sm  .show_loadproduct').append(data.dt);
                if (data.page == 'end') $(that).parent().remove();
                else $(that).attr('data-page', Number($page) + 1);
            }
        });
    })
    $('body').on('click', '.show_data', function() {
        $id = $(this).attr('data-id');
        showLoader();
        $.ajax({
            url: '/action.php',
            type: 'POST',
            data: 'url=getmodal&id=' + $id,
            dataType: 'html',
            success: function(data) {
                closeLoader();
                $('#healthymenu-modal').html(data);
                $('#healthymenu-modal').modal('show');
            }
        });
    })
</script>