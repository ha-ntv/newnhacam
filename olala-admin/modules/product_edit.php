<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$category_id = $menu_id = 0;
$product_id = isset($_GET['id']) ? intval($_GET['id']) : intval($product_id);
$db->table = "product";
$db->condition = "`product_id` = $product_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
	$menu_id = intval($row['product_menu_id']);
}
if($db->RowCount==0) loadPageAdmin("Dữ liệu không tồn tại.","?".TTH_PATH."=product_manager");
// ---------------
$db->table = "product_menu";
$db->condition = "`product_menu_id` = $menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
	$category_id =	$row["category_id"]+0;
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
			<a href="?<?php echo TTH_PATH?>=product_list&id=<?php echo $menu_id?>"><i class="fa fa-list"></i> <?php echo getNameMenu($menu_id, 'product')?></a>
		</li>
		<li>
			<i class="fa fa-cog"></i> Chỉnh sửa sản phẩm
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
if($typeFunc=='edit'){
    
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
		if(isset($del_img)) {
			$handleUploadImg = false;
			if(glob($dir_dest.'*'.$img)) array_map("unlink", glob($dir_dest.'*'.$img));

			$db->table = "product";
			$data = array(
				'img'=>'no'
			);
			$db->condition = "`product_id` = $product_id";
			$db->update($data);
		}



      

		if($OK) {
			$id_query = 0;
			// Link SEO
			$slug = (empty($slug)) ? $name : $slug;
            $slug = updateLinkSEO($slug, $category_id, $product_menu_id, $product_id, 'update');
			$children = $_POST['topping'];
			$db->table = "product";
			$data = array(
                'product_menu_id'=>intval($product_menu_id),
				'name'=>$db->clearText(trim($name)),
                'slug'=>$db->clearText($slug),
				'img_note'=>$db->clearText(trim($img_note)),
				'children' => $db->clearText($children),
				'price'=>formatNumberDouble($price),
				'sales'=>formatNumberDouble($sales),
				'discount'=>intval($discount),
				'status'=>intval($status),
				'comment'=>$db->clearText($comment),
				'content'=>$db->clearText($content),
				'youtube'=>$db->clearText($youtube),
				'is_active'=>intval($is_active),
				'hot'=>intval($hot),
				'pin'=>intval($pin),
                'title'=>$db->clearText(trim($title)),
                'description'=>$db->clearText(trim($description)),
                'keywords'=>$db->clearText(trim($keywords)),
				'created_time'=>strtotime($date->dmYtoYmd($created_time)),
				'modified_time'=>time(),
				'user_id'=>intval($_SESSION["user_id"])
			);
			$db->condition = "`product_id` = $product_id";
			$db->update($data);
			$id_query = $product_id;
			//---

			if($handleUploadImg) {
                if(glob($dir_dest .'*'.$img)) array_map("unlink", glob($dir_dest .'*'.$img));
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

			loadPageSucces("Đã chỉnh sửa dữ liệu thành công.", "?".TTH_PATH."=product_list&id=".$product_menu_id);
			$OK = true;
		}
	}
}
else {
	$db->table = "product";
	$db->condition = "`product_id` = $product_id";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$product_menu_id    = intval($row['product_menu_id']);
        $project            = intval($row['project']);
		$name			    = $row['name'];
		$slug			    = $row['slug'];
		$img                = $row['img'];
		$img_note           = $row['img_note'];
		$price              = (doubleval($row['price'])==0) ? '' : doubleval($row['price']);
		$sales              = (doubleval($row['sales'])==0) ? '' : doubleval($row['sales']);
		$discount              = (intval($row['discount'])==0) ? '' : intval($row['discount']);

		$status             = intval($row['status']);
		$comment            = $row['comment'];
		$content            = $row['content'];
		$youtube            = $row['youtube'];
		$children 			= $row['children'];
		$upload_img_id      = doubleval($row['upload_id']);
		$is_active		    = intval($row['is_active']);
		$hot			    = intval($row['hot']);
		$pin                = intval($row['pin']);
		$title			    = $row['title'];
		$description	    = $row['description'];
		$keywords		    = $row['keywords'];
		$created_time       = $date->vnDateTime($row['created_time']);
	}
}
if(!$OK) product("?".TTH_PATH."=product_edit", "edit", $product_id, $product_menu_id,  $name,$children, $slug, $img, $img_note,$price, $sales, $discount, $status, $comment, $content, $youtube,$upload_img_id, $is_active, $hot, $pin, $created_time, $title, $description, $keywords, $error);