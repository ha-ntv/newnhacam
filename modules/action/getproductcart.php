<?php 
$id = isset($_POST['id']) ? $_POST['id'] : 0;
if($id != 0){
	$query = "product_id = $id";
	$db->table     = "product";
	$db->condition = $query;
	$db->limit     = "1";
	$db->order     = "";
	$rows          = $db->select();
	print_r($rows);
}
?>