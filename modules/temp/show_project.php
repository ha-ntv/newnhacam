<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

$sum_view = 0;
$db->table = "article";
$db->condition = "`is_active` = 1 AND `article_id` = $id";
$db->order = "";
$db->limit = "";
$rows = $db->select();
if($db->RowCount>0){
    echo '<div class="box-wp">';
	foreach($rows as $row) {
        $sum_view = intval($row['views']+1);
        $tags_pj = '<ul class="tags-pj">';
        if($row['address']!='')
            $tags_pj .= '<li class="address">' . stripslashes($row['address']) . '</li>';
        if(intval($row['price'])>0)
            $tags_pj .= '<li class="price">' . $lgTxt_project_cost . '<label>' . convertCurrency($row['price']) . '</label></li>';
        else
            $tags_pj .= '<li class="price">' . $lgTxt_project_price_contact . '</li>';
        if(intval($row['type'])>0)
            $tags_pj .= '<li class="type type-' . intval($row['type']) . '"><label>' . $lgTxt_project_type[intval($row['type'])] . '</label></li>';
        $tags_pj .= '</ul>';
		?>
        <div class="content">
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
                echo $tags_pj;
                if(!empty($row['comment'])) echo '<h3 class="description">' . stripslashes($row['comment']) . '</h3>';
                echo stripslashes($row['content']);
                ?>
            </div>
            <?php
            $alt = ($row['img_note']!="") ? stripslashes($row['img_note']) : stripslashes($row['name']);
            $list_img = '';
            $db->table = "uploads_tmp";
            $db->condition = "`upload_id` = ". $row['upload_id'];
            $db->order = "";
            $db->limit = 1;
            $rows_pr = $db->select();
            foreach ($rows_pr as $row_pr){
                $list_img = $row_pr['list_img'];
            }
            $img = array();
            $img = explode(";", $list_img);
            $img = array_filter($img);
            //-----------------------------------
            $see_all = '';

            $ck = 4; $total = count($img);
            $total_all = $total;
            if($row['youtube']!='') {
                $total_all++;
            }
            if($total_all>1) {
                echo '<div class="photos-sw">';
                echo '<div class="list-photos"><ul class="photos tt-' . $total_all . ' clearfix">';
                if($row['youtube']!='') {
                    echo '<li><a data-fancybox="gallery" href="' . stripslashes($row['youtube']) . '" data-caption="' . $alt . '"><img src="' . HOME_URL . '/uploads/article/' . stripslashes($row['youtube_img']) . '"></a></li>';
                    $ck--;
                }
                if($total>0) {
                    if ($total_all > 5) $see_all = '<div class="see-all"><div class="sa-p01"><span class="sa-p11">+' . ($total_all-4) . '</span></div></div>';
                    for ($i = 0; $i < $total; $i++) {
                        if ($i > $ck) echo '<li class="hidden"><a data-fancybox="gallery" href="' . HOME_URL . '/uploads/photos/full_' . $img[$i] . '" data-caption="' . $alt . '">&nbsp;</a></li>';
                        elseif ($i == $ck) echo '<li><a data-fancybox="gallery" href="' . HOME_URL . '/uploads/photos/full_' . $img[$i] . '" data-caption="' . $alt . '">' . $see_all . '<img src="' . HOME_URL . '/uploads/photos/' . $img[$i] . '"></a></li>';
                        else echo '<li><a data-fancybox="gallery" href="' . HOME_URL . '/uploads/photos/full_' . $img[$i] . '" data-caption="' . $alt . '"><img src="' . HOME_URL . '/uploads/photos/' . $img[$i] . '"></a></li>';
                    }
                }
                echo '</ul></div>';
                echo '</div>';

            } elseif($total_all>0) {
                echo '<div class="photos-sw">';
                if($row['youtube']!='') echo '<div class="video-container"><iframe width="640" height="480" src="' . str_replace("/watch?v=", "/embed/", stripslashes($row['youtube'])) . '?rel=0&amp;hl=vi&amp;version=3" frameborder="0" allowfullscreen></iframe></div>';
                else echo '<div class="img"><a data-fancybox="gallery" href="' . HOME_URL . '/uploads/photos/full_' . $img[0] . '" data-caption="' . $alt . '">' . $see_all . '<img src="' . HOME_URL . '/uploads/photos/full_' . $img[0] . '"></a></div>';
                echo '</div>';
            }
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
            <div class="box-comments">
                <div class="fb-comments" data-href="<?php echo site_url()?>" data-width="100%" data-numposts="5"></div>
            </div>
        </div>
		<?php

        echo '</div>';
	}
    // -Right
    include(_F_INCLUDES . DS . "tth_right1.php");
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