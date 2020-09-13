<style type="text/css">
#grid li{
	list-style: none
}
#grid li img{
	width: 100%;
}
#grid{
	width: 100% !important;
}
</style>
<div class="container">
	<div class="row hidden-md-down">
		<div class="col-xs-12">
			<div class="breadcrumbList">
				<ul class="breadcrumb">
					<li><a href="/"><?=$_SESSION['language'] == 'en'? 'Home':'Trang chủ'?></a></li>
					<li class="active"><?php echo getNameCategory(102) ?></li>
				</ul>
			</div>
			
		</div>
	</div>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>
	<div class="wrap-list list-layout grid-wrap clearfix">
		<ul id="grid" class="grid swipe-rotate loaded">
			<?php 

			$db->table = "gallery";
		    $db->condition = "`is_active` = 1 AND `gallery_menu_id` IN (SELECT `gallery_menu_id` FROM `".TTH_DATA_PREFIX."gallery_menu` WHERE `category_id` = 102)";
		    $db->order = "created_time desc";
		    $db->limit = "";
	        $rows = $db->select();
    	    $num_slider = $db->RowCount;
		    $i = 0;
		    foreach ($rows as $row) {
		        $i ++;
			?>
			<li class="shown">
				<a data-fancybox="gallery" href="<?php echo HOME_URL ?>/uploads/gallery/full-<?php echo $row['img'] ?>">
					<img src="<?php echo HOME_URL ?>/uploads/gallery/full-<?php echo $row['img'] ?>">
				</a>
			</li>
			<?php } ?>
		</ul>
	</div>

	<script>
		new GridScrollFx( document.getElementById( 'grid' ), {
			viewportFactor : 0.4
		} );
	</script>