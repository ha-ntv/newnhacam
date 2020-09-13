<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$sum_view = 0;
$db->table = "product";
$db->condition = "(`is_active` = 1 OR `hot` = 1) AND `product_id` = $id";
$db->order = "";
$db->limit = "";
$rows = $db->select();
if($db->RowCount>0){
echo '<div class="box-wp">';
	//---
		foreach($rows as $row) {
	?>
	
	<div class="content">
		<div class="wrap-detail" style="background: #fff;padding: 5px 10px 10px 10px;">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css" />
			<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>
			<div class="info-realty" style="margin:10px 0px;">
				<div class="row">
					<div class="col-md-6">
						<div class="photo">
							<?php 
								$list_img = '';
								$db->table = "uploads_tmp";
								$db->condition = "`upload_id` = ". $row['upload_id'];
								$db->order = "";
								$db->limit = 1;
								$rows_pr = $db->select();
								foreach ($rows_pr as $row_pr){
									$list_img = $row_pr['list_img'];
								}
								echo $list_img;
								$img = array();
								$img = explode(";", $list_img);
								if(count($img) > 1){
									?>
										<div class="swiper-container gallery-top top_div">
										<div class="swiper-wrapper">
											<?php for($i = 0 ; $i < count($img); $i++){ ?>
							      			<div class="swiper-slide">
							      				<img src="/uploads/photos/full_<?php echo $img[$i] ?>">
							      			</div>
							      			<?php } ?>
									</div>
									</div>
									<?php
								}else{
									?>
									<div class="col_img">
										<a data-fancybox="gallery" href="/uploads/product/full-<?php echo $row['img'] ?>">
										<img src="/uploads/product/full-<?php echo $row['img'] ?>">
											</a>
									</div>
									<?php
								}
							?>
						</div>
					</div>
					
					<div class="col-md-6">
						<h3 class="title-detail"><?php echo stripslashes($row['name']);?></h3>
						<!-- <div class="time-share clearfix">
							<label class="time"><i class="fa fa-clock-o fa-fw"></i> <?php echo convertTime5DayAgo($row['created_time'], $lgTxt_date_post, $lgTxt_date_post2);?></label>
							<label class="views"><i class="fa fa-eye fa-fw"></i> <?php echo formatNumberVN($sum_view);?></label>
							<div class="social-like">
								<div class="item-social">
									<div class="fb-like" data-href="<?php echo site_url();?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
								</div>
							</div>
						</div> -->
						<div class="comment">
							<p><?php echo $row['comment'] ?></p>
							<p><?php echo $row['content'] ?></p>
							<div>
							  <form action="<?php echo HOME_URL_LANG ?>/order" method="post">
							  	<input type="hidden" value="<?php echo $row['product_id'] ?>" name="id">
							  	<input type="hidden" name="addCart">
								<button class="btn btn-warning" type="submit" style="cursor: pointer;border-radius: 0px;font-size: 13px;padding:3px 10px;">
									<i class="fa fa-card"></i> <?=$order_now?>
								</button>
							  </form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- <div class="detail-wp detail-realty clearfix"><?php echo stripslashes($row['content']);?></div> -->
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
				echo '<div class="detail-wp photos-sw">';
					echo '<div class="list-photos"><ul class="photos tt-' . $total_all . ' clearfix">';
						if($row['youtube']!='') {
							echo '<li><a data-fancybox="gallery" href="' . stripslashes($row['youtube']) . '" data-caption="' . $alt . '"><img src="' . HOME_URL . '/uploads/product/' . stripslashes($row['youtube_img']) . '"></a></li>';
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
				echo '<div class="detail-wp photos-sw">';
					if($row['youtube']!='') echo '<div class="video-container"><iframe width="640" height="480" src="' . str_replace("/watch?v=", "/embed/", stripslashes($row['youtube'])) . '?rel=0&amp;hl=vi&amp;version=3" frameborder="0" allowfullscreen></iframe></div>';
					else echo '<div class="img"><a data-fancybox="gallery" href="' . HOME_URL . '/uploads/photos/full_' . $img[0] . '" data-caption="' . $alt . '">' . $see_all . '<img src="' . HOME_URL . '/uploads/photos/full_' . $img[0] . '"></a></div>';
				echo '</div>';
			}
			?>
			<div class="box-comments">
				<div class="fb-comments" data-href="<?php echo site_url()?>" data-width="100%" data-numposts="5"></div>
			</div>
		</div>
	</div>
	<?php
	}
	$db->table = "product";
	$data = array(
		'views' => $sum_view
	);
	$db->condition = "`product_id` = $id";
	$db->update($data);
	// -Right
	// include(_F_INCLUDES . DS . "tth_right1.php");
	//---
echo '</div>';
$db->table = "product";
$db->condition = "`is_active` = 1 AND `product_id` != $id AND `product_menu_id` = $id_menu";
$db->order = "`created_time` DESC";
$db->limit = 8;
$rows = $db->select();
echo '<div class="others-realty box-wp" style="margin-top: 15px;">';
	if($db->RowCount>0) {
	echo '<div class="box-title txt-center"><h2 class="title"><a style="color:#333;" href="' . HOME_URL_LANG . '/' . getSlugCategory($id_category) . '">' . $lgTxt_realty_others . '</a></h2></div>';
	echo '<div class="list-realty clearfix row">';
		$i = 0;
		foreach($rows as $row) {
		include(_F_TEMPLATES . DS . "show_list_product.php");
		$i++;
		}
	echo '</div>';
	}
echo '</div>';
}
else include(_F_MODULES . DS . "error_404.php");