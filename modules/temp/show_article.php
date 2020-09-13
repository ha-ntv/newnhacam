<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($id_menu == 428){
$sum_view = 0;
$db->table = "article";
$db->condition = "`is_active` = 1 AND `article_id` = $id";
$db->order = "";
$db->limit = "";
$rows = $db->select();
if($db->RowCount>0){
    echo '<div class="box-wp row">';
    foreach($rows as $row) {
        $sum_view = intval($row['views']+1);
        ?>
        <div class="col-xs-2 hidden-md-down">
            <div class="sidebarSubMenu">
                <ul class="nav">
                    <?php 

                        $db->table = "article" ;
                        $db->condition = "article_menu_id = 428";
                        $db->limit  = "";
                        $db->order = "";
                        $rws = $db->select();
                        foreach ($rws  as $rw) {
                            ?>
                            <li class="<?php if($rw['article_id'] == $id) echo 'active' ?>"><a class="historySidebarM" href="<?php echo HOME_URL_LANG.'/'.$rw['slug'] ?>"><?php echo $rw['name'] ?></a></li>
                            <?php
                        }
                    ?>
                    
                 
                </ul>
            </div>        
        </div>
        <div class="content col-md-10">
        <div class="wrap-detail">
            <h1 class="title-detail"><?php echo stripslashes($row['name']);?></h1>
            <div class="time-share clearfix">
                <label class="time"><i class="fa fa-clock-o fa-fw"></i> <?php echo convertTime5DayAgo($row['created_time'], $lgTxt_date_post, $lgTxt_date_post2);?></label>
                <label class="views"><i class="fa fa-eye fa-fw"></i> <?php echo formatNumberVN($row['views']);?></label>
                <div class="social-like">
                    <div class="item-social">
                        <div class="fb-like" data-href="<?php echo site_url();?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    </div>
                </div>
            </div>
            <div class="detail-wp detail-post"  style="margin-top: 20px;">
                <?php
                if(!empty($row['comment'])) echo '<h3 class="description">' . stripslashes($row['comment']) . '</h3>';
                echo stripslashes($row['content']);
                ?>
            </div>
            <?php
            //----------------------------------------------------------
            $db->table = "article";
            $db->condition = "`is_active` = 1 AND `article_menu_id` = ". intval($row['article_menu_id']) . " AND `article_id` <> $id";
            $db->order = "`created_time` DESC";
            $db->limit = 10;
            $rows2 = $db->select();
            $total = $db->RowCount;
            if($total>0) {
                echo '<div class="others"><ul class="list-other">';
                foreach($rows2 as $row2) {
                    include(_F_TEMPLATES . DS . "show_other_article.php");
                }
                echo '</ul></div>';
            }
            ?>
        </div>
        <?php

        echo '</div>';
    }
    echo '</div>';
    $db->table = "article";
    $data = array(
        'views' => $sum_view
    );
    $db->condition = "`article_id` = $id";
    $db->update($data);

}
else include(_F_MODULES . DS . "error_404.php");


}else{

$sum_view = 0;
$db->table = "article";
$db->condition = "`is_active` = 1 AND `article_id` = $id";
$db->order = "";
$db->limit = "";
$rows = $db->select();
if($db->RowCount>0){
    echo '<div class="box-wp row">';
	foreach($rows as $row) {
        $sum_view = intval($row['views']+1);
		?>
        <div class="content col-md-9">
        <div class="wrap-detail">
            <h1 class="title-detail"><?php echo stripslashes($row['name']);?></h1>
            <div class="time-share clearfix">
                <label class="time"><i class="fa fa-clock-o fa-fw"></i> <?php echo convertTime5DayAgo($row['created_time'], $lgTxt_date_post, $lgTxt_date_post2);?></label>
                <label class="views"><i class="fa fa-eye fa-fw"></i> <?php echo formatNumberVN($row['views']);?></label>
                <div class="social-like">
                    <div class="item-social">
                        <div class="fb-like" data-href="<?php echo site_url();?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    </div>
                    <div class="item-social">
                        <a href="<?php echo site_url();?>" class="twitter-share-button"{count}>Tweet</a>
                    </div>
                    <div class="item-social">
                        <div class="g-plus" data-action="share" data-href="<?php echo site_url();?>"></div>
                    </div>
                </div>
            </div>
            <div class="detail-wp detail-post">
                <?php
                if(!empty($row['comment'])) echo '<h3 class="description">' . stripslashes($row['comment']) . '</h3>';
                echo stripslashes($row['content']);
                ?>
            </div>
            <?php
            //----------------------------------------------------------
            $db->table = "article";
            $db->condition = "`is_active` = 1 AND `article_menu_id` = ". intval($row['article_menu_id']) . " AND `article_id` <> $id";
            $db->order = "`created_time` DESC";
            $db->limit = 10;
            $rows2 = $db->select();
            $total = $db->RowCount;
            if($total>0) {
                echo '<div class="others"><ul class="list-other">';
                foreach($rows2 as $row2) {
                    include(_F_TEMPLATES . DS . "show_other_article.php");
                }
                echo '</ul></div>';
            }
            ?>
        </div>
		<?php

        echo '</div>';
	}
    // -Right
    echo '<div class="sidebarRightDelivery col-lg-3 col-sm-4 hidden-sm-down">';
    include(_F_INCLUDES . DS . "tth_right1.php");
    echo '</div>';
    //---
    echo '</div>';
    $db->table = "article";
    $data = array(
        'views' => $sum_view
    );
    $db->condition = "`article_id` = $id";
    $db->update($data);

}
else include(_F_MODULES . DS . "error_404.php");
}
