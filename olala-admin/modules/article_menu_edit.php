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
			<a href="?<?php echo TTH_PATH?>=article_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=article_manager"><i class="fa fa-newspaper-o"></i> Bài viết</a>
		</li>
		<li>
			<i class="fa fa-cog"></i> Chỉnh sửa chuyên mục
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "article_menu.php");
if(empty($typeFunc)) $typeFunc = "no";
$category_id = 0;
$article_menu_id =  isset($_GET['id']) ? intval($_GET['id']) : intval($article_menu_id);
$db->table = "article_menu";
$db->condition = "`article_menu_id` = $article_menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount==0) loadPageAdmin("Chuyên mục không tồn tại.", "?" . TTH_PATH . "=article_manager");
foreach($rows as $row) {
	$category_id = intval($row['category_id']);
}

$OK = false;
$error = '';
if($typeFunc=='edit'){
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tên chuyên mục.</span>';
	else {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'article_menu' . DS;
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
			$slug = updateLinkSEO($slug, $category_id, $article_menu_id, 0, 'update');

			$id_query = 0;
			$db->table = "article_menu";
			$data = array(
				'name'=>$db->clearText(trim($name)),
				'slug'=>$db->clearText($slug),
				'title'=>$db->clearText(trim($title)),
				'description'=>$db->clearText(trim($description)),
				'keywords'=>$db->clearText(trim($keywords)),
				'comment'=>$db->clearText(trim($comment)),
				'icon'=>$db->clearText(trim($font_icon)),
				'is_active'=>intval($is_active),
				'hot'=>intval($hot),
				'modified_time'=>time(),
				'user_id'=>intval($_SESSION["user_id"])
			);
			$db->condition = "`article_menu_id` = $article_menu_id";
			$db->update($data);
			$id_query = $article_menu_id;

			if($handleUploadImg) {
				$stringObj = new String();
				if(glob($dir_dest .'*'.$img)) array_map("unlink", glob($dir_dest .'*'.$img));
				$img_name_file = $stringObj->getSlug(substr($name, 0, 100) . '-' . time());

				$imgUp->file_new_name_body    = $img_name_file;
				$imgUp->image_resize          = true;
				$imgUp->image_ratio_fill      = true;
				$imgUp->image_x               = 490;
				$imgUp->image_y               = 256;
				$imgUp->Process($dir_dest);
				if($imgUp->processed) {
					$name_img = $imgUp->file_dst_name;
					$db->table = "article_menu";
					$data = array(
						'img'=>$db->clearText($name_img)
					);
					$db->condition = "`article_menu_id` = $id_query";
					$db->update($data);
				}
                else {
                    loadPageAdmin("Lỗi tải hình: ".$imgUp->error, "?".TTH_PATH."=article_manager");
                }

				$imgUp->file_new_name_body    = 'icon-' . $img_name_file;
				$imgUp->image_resize          = true;
				$imgUp->image_ratio_crop      = true;
				$imgUp->image_x               = 56;
				$imgUp->image_y               = 56;
				$imgUp->Process($dir_dest);

				$imgUp-> Clean();
			}

			loadPageSucces("Đã chỉnh sửa chuyên mục thành công.","?".TTH_PATH."=article_manager");
			$OK = true;
		}
	}
}
else {
	$db->table = "article_menu";
	$db->condition = "`article_menu_id` = $article_menu_id";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$category_id    = intval($row['category_id']);
		$name			= $row['name'];
		$slug			= $row['slug'];
		$title			= $row['title'];
		$description	= $row['description'];
		$keywords		= $row['keywords'];
		$parent			= $row['parent'];
		$comment		= $row['comment'];
		$font_icon		= $row['icon'];
		$is_active		= intval($row['is_active']);
		$hot			= intval($row['hot']);
		$img            = $row['img'];
	}
}
if(!$OK) articleMenu("?".TTH_PATH."=article_menu_edit", "edit", $article_menu_id, $category_id, $name, $slug, $title, $description, $keywords, $parent, $comment, $font_icon, $is_active, $hot, $img, $error);