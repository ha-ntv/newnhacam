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
			<i class="fa fa-plus-square-o"></i> Thêm chuyên mục
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "article_menu.php");
if(empty($typeFunc)) $typeFunc = "no";
$category_id = isset($_GET['id_cat']) ? intval($_GET['id_cat']) : intval($category_id);
$db->table = "category";
$db->condition = "`category_id` = $category_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount==0) loadPageAdmin("Chuyên mục không tồn tại.", "?" . TH_PATH . "=article_manager");
$article_menu_id = isset($_GET['id_art']) ? intval($_GET['id_art']) : 0;
$db->table = "article_menu";
$db->condition = "`article_menu_id` = $article_menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount==0 && $article_menu_id!=0) loadPageAdmin("Chuyên mục không tồn tại.", "?" . TH_PATH . "=article_manager");

$OK = false;
$error = '';
if($typeFunc=='add'){
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
			$id_query = 0;
			$db->table = "article_menu";
			$data = array(
				'category_id'=>$category_id+0,
				'name'=>$db->clearText(trim($name)),
				'title'=>$db->clearText(trim($title)),
				'description'=>$db->clearText(trim($description)),
				'keywords'=>$db->clearText(trim($keywords)),
				'parent'=>intval($parent),
				'sort'=>sortAcs($category_id,$parent)+1,
				'comment'=>$db->clearText(trim($comment)),
				'icon'=>$db->clearText(trim($font_icon)),
				'is_active'=>intval($is_active),
				'hot'=>intval($hot),
				'created_time'=>time(),
				'modified_time'=>time(),
				'user_id'=>intval($_SESSION["user_id"])
			);
			$db->insert($data);
			$id_query = $db->LastInsertID;
			// Link SEO
			$slug = (empty($slug)) ? $name : $slug;
			$slug = updateLinkSEO($slug, $category_id, $id_query);
			// Update Slug
			$db->table = "article_menu";
			$data = array(
					'slug'=>$db->clearText($slug)
			);
			$db->condition = "`article_menu_id` = $id_query";
			$db->update($data);

			if($handleUploadImg) {
				$stringObj = new String();
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
                    loadPageAdmin("Lỗi tải hình: ".$imgUp->error, "?" . TTH_PATH . "=article_manager");
                }

				$imgUp->file_new_name_body    = 'thm-' . $img_name_file;
				$imgUp->image_resize          = true;
				$imgUp->image_ratio_crop      = true;
				$imgUp->image_x               = 100;
				$imgUp->image_y               = 100;
				$imgUp->Process($dir_dest);

				$imgUp-> Clean();
			}

			loadPageSucces("Đã thêm chuyên mục thành công.","?".TTH_PATH."=article_manager");
			$OK = true;
		}
	}
}
else {
	$name			= "";
	$slug           = "";
	$title			= "";
	$description	= "";
	$keywords		= "";
	$parent			= isset($_GET['id_art']) ? $_GET['id_art']+0 : 0;
	$comment		= "";
	$font_icon		= "";
	$is_active		= 1;
	$hot			= 0;
	$img            = "";
}
if(!$OK) articleMenu("?".TTH_PATH."=article_menu_add", "add", 0, $category_id, $name, $slug, $title, $description, $keywords, $parent, $comment, $font_icon, $is_active, $hot, $img, $error);
