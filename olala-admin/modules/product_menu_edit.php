<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>
<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=product_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=product_manager"><i class="fa fa-bookmark"></i> Sản phẩm</a>
		</li>
		<li>
			<i class="fa fa-cog"></i> Chỉnh sửa mục
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "product_menu.php");
if(empty($typeFunc)) $typeFunc = "no";
$category_id = 0;
$product_menu_id =  isset($_GET['id']) ? intval($_GET['id']) : intval($product_menu_id);
$db->table = "product_menu";
$db->condition = "`product_menu_id` = $product_menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount==0) loadPageAdmin("Mục không tồn tại.","?".TTH_PATH."=product_manager");
foreach($rows as $row) {
	$category_id = intval($row['category_id']);
}

$OK = false;
$error = '';
if($typeFunc=='edit'){
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tên mục.</span>';
	else {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'product_menu' . DS;
		$file_size = $_FILES['img']['size'];

		if($file_size>0) {
			$imgUp = new Upload($_FILES['img']);

			$imgUp->file_max_size = $file_max_size;
			if ($imgUp->uploaded) {
				$handleUploadImg = true;
				$OK = true;
			}
			else {
				$error = '<span class="show-error">Lỗi tải hình: '.$imgUp->error.'</span>';
			}
		}
		else {
			$handleUploadImg = false;
			$OK = true;
		}

		if($OK) {
			// Link SEO
			$slug = (empty($slug)) ? $name : $slug;
			$slug = updateLinkSEO($slug, $category_id, $product_menu_id, 0, 'update');

			$id_query = 0;
			$db->table = "product_menu";
			$data = array(
				'name'=>$db->clearText(trim($name)),
				'slug'=>$db->clearText($slug),
				'plus'=>$db->clearText(trim($plus)),
				'title'=>$db->clearText(trim($title)),
				'description'=>$db->clearText(trim($description)),
				'keywords'=>$db->clearText(trim($keywords)),
				'is_active'=>intval($is_active),
				'hot'=>intval($hot),
				'modified_time'=>time(),
				'user_id'=>intval($_SESSION["user_id"])
			);
			$db->condition = "product_menu_id = ".$product_menu_id;
			$db->update($data);
			$id_query = $product_menu_id;

			if($handleUploadImg) {
				$stringObj = new String();
				if(glob($dir_dest .'*'.$img)) array_map("unlink", glob($dir_dest .'*'.$img));
				$img_name_file = $stringObj->getSlug(substr($name, 0, 100) . '-' . time());

				$imgUp->file_new_name_body    = $img_name_file;
				$imgUp->image_resize          = true;
				$imgUp->image_ratio_crop      = true;
				$imgUp->image_x               = 490;
				$imgUp->image_y               = 256;
				$imgUp->Process($dir_dest);

				if($imgUp->processed) {
					$name_img = $imgUp->file_dst_name;
					$db->table = "product_menu";
					$data = array(
						'img'=>$db->clearText($name_img)
					);
					$db->condition = "`product_menu_id` = $id_query";
					$db->update($data);
				}
                else {
                    loadPageAdmin("Lỗi tải hình: ".$imgUp->error, "?".TTH_PATH."=product_manager");
                }

				$imgUp->file_new_name_body    = 'icon-' . $img_name_file;
				$imgUp->image_resize          = true;
				$imgUp->image_ratio_fill      = true;
				$imgUp->image_x               = 40;
				$imgUp->image_y               = 40;
				$imgUp->Process($dir_dest);

				$imgUp-> Clean();
			}

			loadPageSucces("Đã chỉnh sửa chuyên mục thành công.", "?".TTH_PATH."=product_manager");
			$OK = true;
		}
	}
}
else {
	$db->table = "product_menu";
	$db->condition = "`product_menu_id` = $product_menu_id";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach($rows as $row) {
		$category_id    = intval($row['category_id']);
		$name			= $row['name'];
		$slug           = $row['slug'];
		$plus			= $row['plus'];
		$title			= $row['title'];
		$description	= $row['description'];
		$keywords		= $row['keywords'];
		$parent			= intval($row['parent']);
		$is_active		= intval($row['is_active']);
		$hot			= intval($row['hot']);
		$img            = $row['img'];
	}
}
if(!$OK) productMenu("?".TTH_PATH."=product_menu_edit", "edit", $product_menu_id, $category_id, $name, $slug, $plus, $title, $description, $keywords, $parent, $is_active, $hot, $img, $error);