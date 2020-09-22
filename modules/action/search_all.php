<?php
$keyword = isset($_REQUEST['keyword']) ? $_REQUEST['keyword'] : '';
if ($keyword != '') {
    $db->table = "product";
    $db->condition = "( name like '%" . $keyword . "%' or comment like '%" . $keyword . "%' or content like '%" . $keyword . "%' ) and product_menu_id <> 277";
    $db->limit = "";
    $db->order = "product_menu_id ASC";
    $rowss = $db->select();
    $list_parent = array();
    if (count($rowss) > 0) {
?>
        <div class="hidden-md-up">
            <div class="tab-pane ">
                <?php
                foreach ($rowss as $child) {

                    $list_parent[$child['product_menu_id']][] = $child;
                }

                foreach ($list_parent as $k => $rows) {
                    $db->table = "product_menu";
                    $db->condition = "product_menu_id = " . $k;
                    $db->limit = "";
                    $db->order = "";
                    $parent_rows = $db->select();
                ?>
                    <div class="textSubHeader m-b-0" id="pro-head-<?php echo $k ?>-sm">
                        <div class="col-title">
                            <?php echo  '<h3>' . $parent_rows[0]['name'] . '</h3>'; ?>
                            <div class="graybox">
                            </div>
                        </div>
                        <div class="pull-right">
                            <div class="paginationBox  paginationBoxTop">
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <section id="product-sec-<?php echo $k; ?>-sm" class="main main-realty ">
                        <div class="box-wp">
                            <div class="list-realty clearfix row masonry-grid show_loadproduct">
                                <?php
                                foreach ($rows as $row) {
                                    include(_F_TEMPLATES . DS . "show_list_product.php");
                                }
                                ?>
                            </div>
                        </div>
                    </section>
                <?php
                } ?>
            </div>
            <div class="btnBackToTop pull-left m-t-lg">
                <a class="btnBackToTop" href="#healthymenu"></a>
            </div>
        </div>
    <?php
    } else {
    ?>
        <div class="text-center" style="margin-top: 20px;"><?php echo $lgTxt_update ?></div>
    <?php
    }
} else {
    ?>
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
<?php
}
?>