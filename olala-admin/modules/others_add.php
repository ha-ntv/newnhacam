<?php
if (!defined('TTH_SYSTEM')) {
	die('Please stop!');
}
//
$others_menu_id = isset($_GET['id']) ? intval($_GET['id']) : intval($others_menu_id);

?>
<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR ?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH ?>=others_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH ?>=others_manager"><i class="fa fa-puzzle-piece"></i> Dữ liệu khác</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH ?>=others_list&id=<?php echo $others_menu_id ?>"><i class="fa fa-list"></i> <?php echo getNameMenu($others_menu_id, 'others') ?></a>
		</li>
		<li>
			<i class="fa fa-plus-square-o"></i> Thêm mục
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once(_A_TEMPLATES . DS . "others.php");
if (empty($typeFunc)) $typeFunc = "no";

$OK = false;
$error = '';
if ($typeFunc == 'add') {
	$ERR        = 0;
	$stringObj  = new String();
	$date = new DateClass();
	$p_from     = isset($_POST['p_from']) ? formatNumberDouble($p_from) : 0;
	$p_to       = isset($_POST['p_to']) ? formatNumberDouble($p_to) : 0;
	$product_menu = isset($_POST['product_menu']) ? $_POST['product_menu'] : 0;

	$name = mb_convert_case(trim($name), MB_CASE_TITLE, "UTF-8");
	$db->table = "others";
	$db->condition = "`name` LIKE '$name'";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	if ($db->RowCount > 0) {
		$ERR = 1;
	}

	if (empty($name)) $error = '<span class="show-error">Vui lòng nhập tiêu đề.</span>';
	elseif ($ERR == 1) $error = '<span class="show-error">Mã giảm giá đã tồn tại.</span>';
	else {

		//---
		$db->table = "others";
		$data = array(
			'others_menu_id' => intval($others_menu_id),
			'name' => $db->clearText(trim($name)),
			'p_from' => $p_from,
			'p_price' => formatNumberDouble($p_price),
			'p_to' => $p_to,
			'theend' => strtotime($date->dmYtoYmd($theend)),
			'thestart' => strtotime($date->dmYtoYmd($thestart)),
			'code' => $code,
			'product_menu' => $product_menu,
			'p_max' => formatNumberDouble($p_max),
			'sort' => sortAcs($others_menu_id) + 1,
			'is_active' => intval($is_active),
			'km' => intval($km),
			'hot' => intval($hot),
			'p_price1' => formatNumberDouble($p_price1),
			'p_price2' => formatNumberDouble($p_price2),
			'created_time' => time(),
			'modified_time' => time(),
			'user_id' => $_SESSION["user_id"]
		);
		$db->insert($data);
		loadPageSucces("Đã thêm mục thành công.", "?" . TTH_PATH . "=others_list&id=" . $others_menu_id);
	}
} else {
	$name			= "";
	$km		    	= 3;
	$p_from         = "";
	$p_to           = "";
	$p_price        = "";
	$p_price1        = "";
	$p_price2        = "";
	$theend 		= $date->vnDateTime(time());
	$thestart 		= $date->vnDateTime(time());
	$is_active		= 1;
	$p_max			= '';
	$code 			= 0;
	$hot			= 0;
	$product_menu           = 0;
}
if (!$OK) others("?" . TTH_PATH . "=others_add&id=" . $others_menu_id, "add", 0, $others_menu_id, $name,  $p_from, $p_to, $p_price, $code, $p_max, $is_active, $km, $hot, $theend, $p_price1, $p_price2, $product_menu, $thestart, $error);
