<?php
if (!defined('TTH_SYSTEM')) {
	die('Please stop!');
}
//---
$date = new DateClass();
$stringObj = new String();

$query_filter = $slug_filter = '';

$db->table = "product";
$db->condition = "`is_active` = 1 AND `product_menu_id` = " . $id_sub;
$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
$db->limit = "";
$rows = $db->select();

$total = $db->RowCount;
$page = 0;
if ($total > 0) {
	$total_pages = 0;
	$per_page = 8;
	if ($total % $per_page == 0) $total_pages = $total / $per_page;
	else $total_pages = floor($total / $per_page) + 1;
	if ($page <= 0) $page = 1;
	$start = ($page - 1) * $per_page;

	$db->table = "product";
	$db->condition = "`is_active` = 1 AND `product_menu_id` = " . $id_sub;
	$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
	$db->limit = $start . ', ' . $per_page;
	$rows = $db->select();

	echo '<div class="box-wp">';
	echo '<div class="list-realty clearfix row masonry-grid show_loadproduct">';
	$i = 0;
	foreach ($rows as $row) {
		include(_F_TEMPLATES . DS . "show_list_product.php");
		$i++;
	}
	echo '</div>';
	if ($total_pages > $page) {
?>

		<div class="text-align:center" style="padding:20px 0px; text-align: center;width: 100%;display: inline-block;">
			<button class="btn btn-default btn_dd" data-id="<?= $id_sub ?>" data-page="<?= $page ?>" style="font-size: 13px;padding:4px 10px;"> <?= $_SESSION['language'] == 'en' ? ' Show more' : ' Xem thêm' ?></button>
		</div>
<?php
	}
	echo '</div>';
} else echo '<div class="box-wp"><div class="wrap updating"><h3>' . $lgTxt_update . '</h3></div></div>';
