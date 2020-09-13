<div class="container">
    <div class="row" >
        <div class="col-xs-12">
            <div class="breadcrumbList">
                <ul class="breadcrumb"  style="border: 0px;">
                    <li><a href="<?php echo HOME_URL_LANG ?>">Home</a></li>
                    <li class="active">Search</li>
                </ul>
            </div>
            
        </div>
    </div>
    
<div class="row">
    <div class="col-md-12">
        <div class="tab-content " style="margin-bottom: 15px;">
                    <div class="tab-pane active" id="promotionBox">
                        <div id="productShopStore">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div id="promotion_render" >
                                        <div class="row masonry-grid">
                                              <?php 
                                              $keyword = isset($_REQUEST['keyword']) ? $_REQUEST['keyword'] : '';
                                              if($keyword != ''){
                                                $db->table ="product";
                                                $db->condition = "name like '%".$keyword."%' or comment like '%".$keyword."%' or content like '%" .$keyword ."%'";
                                                $db->limit= "";
                                                $db->order = "";
                                                $rows = $db->select();
                                                if(count($rows) > 0) {
                                                foreach ($rows as $row) {
                                                include(_F_TEMPLATES . DS . "show_list_product.php");
                                                    } 
                                                }else{
                                                    ?>
                                                    <div class="text-center" style="margin-top: 20px;"><?php echo $lgTxt_update ?></div>
                                                    <?php
                                                }
                                                }
                                                ?>

                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </div>
</div>
