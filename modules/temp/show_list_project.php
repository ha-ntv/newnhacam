<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
$photo_avt = $title = $time = $views = '';
$alt = ($row['img_note']!="") ? stripslashes($row['img_note']) : stripslashes($row['name']);
if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'article' . DS . $row['img']) && $row['img']!='') {
    $photo_avt = '<img src="'. HOME_URL .'/uploads/article/'. stripslashes($row['img']) . '" alt="' . $alt . '">';
} else {
    $photo_avt = '<img src="'. HOME_URL .'/images/404.jpg" alt="' . stripslashes($alt) . '">';
}

$photo_avt = '<a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
$title = '<h2><a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></h2>';

$time = '<label class="time"><i class="fa fa-clock-o fa-fw"></i> ' . convertTime5DayAgo($row['created_time'], $lgTxt_date_post, $lgTxt_date_post2) . '</label>';
$views = '<label class="views"><i class="fa fa-eye fa-fw"></i> ' . formatNumberVN($row['views']) . '</label>';

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
<div class="item-project">
    <div class="box">
        <div class="img">
            <?php echo $photo_avt; ?>
        </div>
        <div class="description">
            <?php
            echo '<p class="time-views">' . $time . $views . '</p>';
            echo $title;
            echo $tags_pj;
            if($row['comment']!='') echo '<p class="cmt">' . $stringObj->crop(stripslashes($row['comment']), 35) . '</p>';
            ?>
        </div>
    </div>
</div>