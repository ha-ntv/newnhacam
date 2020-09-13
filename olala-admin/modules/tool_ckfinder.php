<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>
<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?=ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<i class="fa fa-sitemap"></i> Thông tin hệ thống
		</li>
		<li>
			<i class="fa fa-folder-open"></i> Thư viện - Media
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
dashboardCoreAdmin();
//----------------------------
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default panel-no-border">
			<div class="table-responsive">
                <?php
                require_once ROOT_DIR . DS . 'editor' . DS . 'ckfinder' . DS . 'ckfinder.html';
                ?>
			</div>
		</div>
	</div>
</div>