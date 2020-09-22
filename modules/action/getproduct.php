<?php 
$id 	= isset($_POST['id']) ? $_POST['id'] : 0;
$page   = isset($_POST['page']) ? $_POST['page'] : 1;
$alignment = isset($_POST['alignment']) ? $_POST['alignment'] : 'no';
$layout = $alignment != 'no'  && $alignment != '' ? 'full-width': '';
$page   = $page + 1;  
$per_page = 8;
$page = $per_page * $page;
if($id == 0){
	$db->table = "product";
	$db->condition = "`is_active` = 1";
	$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
	$db->limit = $page . ','.$per_page;
	$rows = $db->select();
	$i = 0;
	if(count($rows) > 0){
    foreach($rows as $row) {
		include(_F_TEMPLATES . DS . "show_list_product.php");
		$i++;
	}
  }else echo 0;
}else{
	$db->table = "product";
	$db->condition = "`is_active` = 1 and `product_menu_id` = " . $id;
	$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
	$db->limit = $page . ','.$per_page;
	$rows = $db->select();
	$i = 0;
	if(count($rows) > 0){
    foreach($rows as $row) {
		include(_F_TEMPLATES . DS . "show_list_product.php");
		$i++;
	}
  }else echo 0;	
}
?>