<?php
if (!defined('TTH_SYSTEM')) {
	die('Please stop!');
}
$category_id = $menu_id = 0;
$others_id = isset($_GET['id']) ? intval($_GET['id']) : intval($others_id);
$db->table = "others";
$db->condition = "`others_id` = $others_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach ($rows as $row) {
	$other_menu_id = $menu_id = intval($row['others_menu_id']);
}
if ($db->RowCount == 0) loadPageAdmin("Mục không tồn tại.", "?" . TTH_PATH . "=others_manager");

?>
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
			<a href="?<?php echo TTH_PATH ?>=others_list&id=<?php echo $menu_id ?>"><i class="fa fa-list"></i> <?php echo getNameMenu($menu_id, 'others') ?></a>
		</li>
		<li>
			<i class="fa fa-cog"></i> Chỉnh sửa mục
		</li>
	</ol>
</div>
<?php
include_once(_A_TEMPLATES . DS . "others.php");
if (empty($typeFunc)) $typeFunc = "no";
$OK = false;
$error = '';
if ($typeFunc == 'edit') {
	$ERR        = 0;
	$stringObj  = new String();
	$date = new DateClass();
	$p_from     = isset($_POST['p_from']) ? formatNumberDouble($p_from) : 0;
	$p_to       = isset($_POST['p_to']) ? formatNumberDouble($p_to) : 0;
	$product_menu = isset($_POST['product_menu']) ? $_POST['product_menu'] : 0;
	$others_menu_id = isset($_POST['others_menu_id']) ? $_POST['others_menu_id'] : 0;

	$name = mb_convert_case(trim($name), MB_CASE_TITLE, "UTF-8");
	$db->table = "others";
	$db->condition = "`others_menu_id` = 6 AND `name` LIKE '$name'";
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
			'p_price1' => formatNumberDouble($p_price1),
			'p_price2' => formatNumberDouble($p_price2),
			'p_to' => $p_to,
			'theend' => strtotime($date->dmYtoYmd($theend)),
			'thestart' => strtotime($date->dmYtoYmd($thestart)),
			'product_menu' => $product_menu,
			'p_max' => formatNumberDouble($p_max),
			'is_active' => intval($is_active),
			'hot' => intval($hot),
			'modified_time' => time(),
			'code' => $code,
			'user_id' => $_SESSION["user_id"]
		);
		$db->condition = "`others_id` = $others_id";
		$db->update($data);
		loadPageSucces("Đã chỉnh sửa mục thành công.", "?" . TTH_PATH . "=others_list&id=" . $others_menu_id);
	}
} else {
	$db->table = "others";
	$db->condition = "others_id = $others_id";
	$db->limit = 1;
	$rows = $db->select();
	foreach ($rows as $row) {
		$others_menu_id    = $row['others_menu_id'] + 0;
		$name			    = $row['name'];
		$p_max				= intval($row['p_max']);

		$p_from			    = intval($row['p_from']);
		$p_to			    = intval($row['p_to']);
		$p_price			= intval($row['p_price']);
		$p_price1			= intval($row['p_price1']);
		$p_price2			= intval($row['p_price2']);
		$is_active		    = intval($row['is_active']);
		$code		    	= intval($row['code']);
		$km		    	= intval($row['km']);
		$product_menu		    	= intval($row['product_menu']);
		$theend 			= $date->vnDateTime($row['theend']);
		$thestart 			= $date->vnDateTime($row['thestart']);
		$hot			    = intval($row['hot']);
	}
}
if (!$OK) others("?" . TTH_PATH . "=others_edit&id=" . $others_id, "edit", $others_id, $others_menu_id, $name, $p_from, $p_to, $p_price, $code, $p_max, $is_active,$km, $hot, $theend, $p_price1, $p_price2, $product_menu, $thestart, $error);
