<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>

<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<i class="fa fa-flag"></i> Thay đổi địa điểm
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
if(isset($_GET['lang'])) {
	$lang = $_GET['lang'];
	
	if(in_array($lang, array('HUE', 'DN'))) {
		
		$_SESSION['admin_city'] = $lang;
		
		loadPageSucces("Thay đổi địa điểm thành công.", ADMIN_DIR);
	} else {
		loadPageAdmin("Địa điểm không tồn tại trong CSDL, vui lòng thực hiện lại.", ADMIN_DIR);
	}

} else {
	loadPageAdmin("Địa điểm rỗng rỗng, vui lòng thực hiện lại.", ADMIN_DIR);
}
