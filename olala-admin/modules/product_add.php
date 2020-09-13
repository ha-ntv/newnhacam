<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$category_id = 0;
$product_menu_id = isset($_GET['id']) ? intval($_GET['id']) : intval($product_menu_id);
$db->table = "product_menu";
$db->condition = "`product_menu_id` = $product_menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount==0) loadPageAdmin("Mục không tồn tại.", "?".TTH_PATH."=product_manager");
foreach($rows as $row) {
	$category_id =	intval($row["category_id"]);
}

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
			<a href="?<?php echo TTH_PATH?>=product_list&id=<?php echo $product_menu_id?>"><i class="fa fa-list"></i> <?php echo getNameMenu($product_menu_id, 'product')?></a>
		</li>
		<li>
			<i class="fa fa-plus-square-o"></i> Thêm sản phẩm
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "product.php");
if(empty($typeFunc)) $typeFunc = "no";

$date = new DateClass();
$OK = false;
$error = '';
if($typeFunc=='add'){
    $project    = (isset($_POST['project'])) ? intval($_POST['project']) : 0;
    $comment    = (isset($_POST['comment'])) ? $_POST['comment'] : '';
    $content    = (isset($_POST['content'])) ? $_POST['content'] : '';
    $status     = isset($_POST['status']) ? $_POST['status'] : '';
    //---
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tiêu đề.</span>';
	else {
        $stringObj  = new String();
		//-----
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'product' . DS;
		$file_size = $_FILES['img']['size'];

		if($file_size>0) {
			$imgUp = new Upload($_FILES['img']);

			$imgUp->file_max_size = $file_max_size;
			if ($imgUp->uploaded) {
				$handleUploadImg = true;
				$OK = true;
			}
			else {
				$error = '<span class="show-error">Hình ảnh: '.$imgUp->error.'</span>';
			}
		}
		else {
			$handleUploadImg = false;
			$OK = true;
		}

		if($OK) {
			$children = $_POST['topping'];
			$id_query = 0;
			$db->table = "product";
			$data = array(
				'product_menu_id'=>intval($product_menu_id),
				'name'=>$db->clearText(trim($name)),
				'img_note'=>$db->clearText(trim($img_note)),
				'children' => $db->clearText($children),
				'price'=>formatNumberDouble($price),
				'sales'=>formatNumberDouble($sales),
				'discount'=>intval($discount),
				'status'=>intval($status),
				'comment'=>$db->clearText($comment),
				'content'=>$db->clearText($content),
				'upload_id'=>doubleval($upload_img_id),
				'youtube'=>$db->clearText($youtube),
				'is_active'=>intval($is_active),
				'hot'=>intval($hot),
				'pin'=>intval($pin),
				'title'=>$db->clearText(trim($title)),
				'description'=>$db->clearText(trim($description)),
				'keywords'=>$db->clearText(trim($keywords)),
				'created_time'=>strtotime($date->dmYtoYmd($created_time)),
				'user_id'=>intval($_SESSION["user_id"])
			);
			$db->insert($data);
			$id_query = $db->LastInsertID;
			// Link SEO
			$slug = (empty($slug)) ? $name : $slug;
			$slug = updateLinkSEO($slug, $category_id, $product_menu_id, $id_query);
			// Update Slug
			$db->table = "product";
			$data = array(
				'slug'=>$db->clearText($slug)
			);
			$db->condition = "`product_id` = $id_query";
			$db->update($data);
			//---

			if($handleUploadImg) {
                $name_image = $stringObj->getSlug(substr($name, 0, 100) . '-' . time());

				$imgUp->file_new_name_body          = 'full-' . $name_image;
				$imgUp->Process($dir_dest);

                $imgUp->file_new_name_body          = $name_image;
                $imgUp->image_resize                = true;
                $imgUp->image_ratio_crop            = true;
                $imgUp->image_x                     = 500;
                $imgUp->image_y                     = 340;
                $imgUp->Process($dir_dest);

				if($imgUp->processed) {
					$name_img = $imgUp->file_dst_name;
					$db->table = "product";
					$data = array(
						'img'=>$db->clearText($name_img)
					);
					$db->condition = "`product_id` = $id_query";
					$db->update($data);
				}

                $imgUp->file_new_name_body          = 'lg-' . $name_image;
                $imgUp->image_resize                = true;
                $imgUp->image_ratio_crop            = true;
                $imgUp->image_x                     = 337;
                $imgUp->image_y                     = 308;
                $imgUp->Process($dir_dest);

				$imgUp-> Clean();
			}

		

			$db->table = "uploads_tmp";
			$data = array(
				'status'=>1
			);
			$db->condition = "`upload_id` = ".doubleval($upload_img_id);
			$db->update($data);

			loadPageSucces("Đã thêm dữ liệu thành công.", "?".TTH_PATH."=product_list&id=".$product_menu_id);
			$OK = true;
		}
	}
}
else {
	$upload_img_id  = 0;
	if($upload_img_id==0) {
		$db->table = "uploads_tmp";
		$data = array(
				'created_time'=>time()
		);
		$db->insert($data);
		$upload_img_id = $db->LastInsertID;
	}

	$project            = 0;
	$name			    = "";
	$slug               = "";
	$img                = "";
	$img_note           = "";
	$children			= "";
	$price              = "";
	$sales              = "";
	$discount              = "";
	$status             = 1;
	$comment            = "";
	$content            = "";
	$youtube            = "";
	$is_active		    = 1;
	$hot			    = 1;
	$pin                = 0;
	$title			    = "";
	$description	    = "";
	$keywords		    = "";
	$created_time       = $date->vnDateTime(time());
}
if(!$OK) product("?".TTH_PATH."=product_add", "add", 0, $product_menu_id, $name, $children, $slug, $img, $img_note,  $price, $sales, $discount,  $status, $comment, $content, $youtube,  $upload_img_id, $is_active, $hot, $pin, $created_time, $title, $description, $keywords, $error);