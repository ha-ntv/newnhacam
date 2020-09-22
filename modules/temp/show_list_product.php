<?php
if (!defined('TTH_SYSTEM')) {
    die('Please stop!');
}
//
$photo_avt = '';
$alt = ($row['img_note'] != '') ? stripslashes($row['img_note']) : stripslashes($row['name']);
if (file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'product' . DS . $row['img']) && $row['img'] != '') {
    $photo_avt = '<img src="' . HOME_URL . '/uploads/product/lg-' . $row['img'] . '" alt="' . $alt . '">';
} else {
    $photo_avt = '<img src="' . HOME_URL . '/images/404.jpg" alt="' . $alt . '">';
}

$photo_avt = '<a href="javascript:{}" class="show_data" data-id="' . $row["product_id"] . '"  title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
$title = '<h3><a href="javscript:{}" class="show_data" data-id="' . $row["product_id"] . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></h3>';
$strip = strip_tags($row['content']) ? strlen(strip_tags($row['content'])): 0;
?>
<div class="healthymenuProductBox col-md-4 col-lg-3 col-xs-6 masonry-item <?php echo $layout ?>">
    <div class="next-lag">
        <div class="over_hot">
            <img src="/css/img/hot_tab.png">
        </div>
        <div class="productListHMBox">
            <?php echo $photo_avt ?>
        </div>
        <div class="caption"><a href="javscript:{0}" class="show_data" data-id="<?php echo $row['product_id'] ?>">
                <h4>
                    <?php echo $row['name'] ?>
                </h4>
            </a>
            <p class="elips-content"><a href="javscript:{}" class="readmore  <?php echo  $strip ? 'catching': ''?>"> <?php echo  strip_tags($row['content']) ?></a> <?php echo $strip ? '<span class="display_all">Hiển thị thêm</span>' : ''; ?></p>
        </div>
        <div class="price-addtocart">
            <div class="price-unit pull-left"> <span class="productprice"><?php echo number_format($row['price'], '0', '.', '.') ?></span><span class="productunit"> VNĐ</span></div>
            <!-- <div class="addtocart pull-right"> -->

            <input value="<?php echo $row['product_id'] ?>" type="hidden" name="id">
            <input type="hidden" name="addCart">
            <button data-children="<?php echo $row['children'] ?>" type="button" class="btnAddtocart btnAddtocartText addtocart pull-right 12 " style="background: none;border:none;cursor: pointer;">
                <img src="/img/responsive/cart.png" alt=" " style="width: 27px;">
            </button>
            <!-- </div> -->
            <div class="clear"></div>
        </div>
    </div>
</div>