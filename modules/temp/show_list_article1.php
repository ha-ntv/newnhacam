<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
$photo_avt = $title = $time = $views = '';
$alt = ($row['img_note']!="") ? stripslashes($row['img_note']) : stripslashes($row['name']);
if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'article' . DS . 'lg-' . $row['img']) && $row['img']!='') {
	$photo_avt = '<img src="'. HOME_URL .'/uploads/article/lg-'. stripslashes($row['img']) . '" alt="' . $alt . '">';
} else {
	$photo_avt = '<img src="'. HOME_URL .'/images/404-lg.jpg" alt="' . stripslashes($alt) . '">';
}

$photo_avt = '<a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
$title = '<h2><a href="'. HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></h2>';

if($id_category!=94) {
	$time = '<label class="time"><i class="fa fa-clock-o fa-fw"></i> ' . convertTime5DayAgo($row['created_time'], $lgTxt_date_post, $lgTxt_date_post2) . '</label>';
    $views = '<label class="views"><i class="fa fa-eye fa-fw"></i> ' . formatNumberVN($row['views']) . '</label>';
}
?>
<div class="col-xs-12 col-sm-6 col-md-3">
    <div class="activityListBox">
        <span class="none"></span>
       <?php echo $photo_avt ?>
    </div>
    <div class="caption">
        <a href="<?php echo HOME_URL_LANG ?>/<?php echo $row['slug'] ?>"><h4><?php echo $row['name'] ?></h4></a>
        <p class="postdateNews"><time class="activity_start_date postdateNews" datetime="2018-12-21"><?php echo date('d/m/Y', $row['created_time'])?></time></p>
        <p><a class="readmore" href="<?php echo HOME_URL_LANG ?>/<?php echo $row['slug'] ?>">more...</a></p>
    </div>
</div>