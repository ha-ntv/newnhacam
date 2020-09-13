<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//---
$date = new DateClass();
$stringObj = new String();

//---------------[ box-wp BEGIN ]---------------------------


// echo '<section class="breadcrumb"><div class="box-wp">' . $breadcrumb . '</div></section>';

//-- SEARCH
$query_filter = $slug_filter = '';
//-------------------------------------------------------------------------------
 if($id_menu <= 0) {
	//$list = getListIdMenuChild('product_menu', $id_category, 0);
        $db->table = "product_menu";
        $db->condition = "parent = 0 AND is_active = 1 AND category_id = ".$id_category;
        $db->order = "";
        $db->limit = 1;
        $rs = $db->select('product_menu_id');
        $list = $rs[0]['product_menu_id'];
	$db->table = "product";
	$db->condition = "`is_active` = 1 AND `product_menu_id` IN ($list)" ;
	$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
	$db->limit = "";
	$rows = $db->select();

	$total = $db->RowCount;
	if($total>0) {
		$total_pages = 0;
		$per_page = 12;
		if($total%$per_page==0) $total_pages = $total/$per_page;
		else $total_pages = floor($total/$per_page)+1;
		if($page<=0) $page=1;
		$start=($page-1)*$per_page;

		$db->table = "product";
		$db->condition = "`is_active` = 1 AND `product_menu_id` IN ($list)";
		$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
		$db->limit = $start.', '.$per_page;
		$rows = $db->select();

		echo '<div class="box-wp">';
		echo '<div class="list-realty clearfix row masonry-grid show_loadproduct">';
        $i = 0;
        foreach($rows as $row) {
			include(_F_TEMPLATES . DS . "show_list_product.php");
			$i++;
		}
        echo '</div>';
        	?>
        <input type="hidden" class="page" value="1" data_id="<?=$rs[0]['product_menu_id']?>">
		<div class="text-align:center" style="padding:20px 0px; text-align: center;width: 100%;display: inline-block;">
			<button class="btn btn-default btn_dd" style="font-size: 13px;padding:4px 10px;"> <?=$_SESSION['language'] == 'en'? ' Show more':' Xem thêm'?></button>
		</div>
		<?php
        echo '</div>';
        
		}
	else echo '<div class="box-wp"><div class="wrap updating"><h3>' . $lgTxt_update . '</h3></div></div>';

} else {
	// $list = getListIdMenuChild('product_menu', $id_category, 0);
	$db->table = "product";
	$db->condition = "`is_active` = 1 AND `product_menu_id` = " . $id_menu;
	$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
	$db->limit = "";
	$rows = $db->select();

	$total = $db->RowCount;
	$page = isset($_GET['page']) ? $_GET['page'] : 0;
	if($total>0) {
		$total_pages = 0;
		$per_page = 12;
		if($total%$per_page==0) $total_pages = $total/$per_page;
		else $total_pages = floor($total/$per_page)+1;
		if($page<=0) $page=1;
		$start=($page-1)*$per_page;

		$db->table = "product";
		$db->condition = "`is_active` = 1 AND `product_menu_id` = " . $id_menu;
		$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
		$db->limit = $start.', '.$per_page;
		$rows = $db->select();

		echo '<div class="box-wp">';
		echo '<div class="list-realty clearfix row masonry-grid show_loadproduct">';
        $i = 0;
        foreach($rows as $row) {
			include(_F_TEMPLATES . DS . "show_list_product.php");
			$i++;
		}
        echo '</div>';
        	?>
        <input type="hidden" class="page" value="1" data_id="<?php echo $id_menu ?>">
		<div class="text-align:center" style="padding:20px 0px; text-align: center;width: 100%;display: inline-block;">
			<button class="btn btn-default btn_dd" style="font-size: 13px;padding:4px 10px;"> <?=$_SESSION['language'] == 'en'? ' Show more':' Xem thêm'?></button>
		</div>
		<?php
        echo '</div>';
        
		}
	else echo '<div class="box-wp"><div class="wrap updating"><h3>' . $lgTxt_update . '</h3></div></div>';
}
