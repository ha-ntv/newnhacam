<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$category_id = 0;
$article_menu_id = isset($_GET['id']) ? intval($_GET['id']) : intval($article_menu_id);
$db->table = "article_menu";
$db->condition = "`article_menu_id` = $article_menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount==0) loadPageAdmin("Mục không tồn tại.","?".TTH_PATH."=article_manager");
foreach($rows as $row) {
	$category_id = intval($row['category_id']);
}
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
			<a href="?<?php echo TTH_PATH?>=article_list&id=<?php echo $article_menu_id?>"><i class="fa fa-list"></i> <?php echo getNameMenuArt($article_menu_id)?></a>
		</li>
		<li>
			<i class="fa fa-plus-square-o"></i> Thêm bài viết
		</li>
	</ol>
</div>
<!-- /.row -->
<?php
include_once (_A_TEMPLATES . DS . "article.php");
if(empty($typeFunc)) $typeFunc = "no";

$date = new DateClass();

$OK = false;
$error = '';
if($typeFunc=='add'){
	$comment    = (isset($_POST['comment'])) ? $_POST['comment'] : '';
	$content    = (isset($_POST['content'])) ? $_POST['content'] : '';
    $tags       = (isset($_POST['tags'])) ? $_POST['tags'] : '';
	$address    = isset($_POST['address']) ? $_POST['address'] : '';
	$price      = isset($_POST['price']) ? $_POST['price'] : 0;
	$block      = isset($_POST['block']) ? $_POST['block'] : 0;
	$flat       = isset($_POST['flat']) ? $_POST['flat'] : 0;
	$open_sale  = isset($_POST['open_sale']) ? $_POST['open_sale'] : '';
	$type       = isset($_POST['type']) ? $_POST['type'] : 0;
    $youtube    = isset($_POST['youtube']) ? $_POST['youtube'] : '';
	//-----
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tiêu đề bài viết.</span>';
	else {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'article' . DS;
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
                $OK = false;
			}
		}
		else {
			$handleUploadImg = false;
			$OK = true;
		}

		if($OK) {
            $tags_1 = array();
            $tags = empty($tags) ? array() : explode(',', $tags);
            if(count($tags)>0) {
                foreach ($tags as $val) {
                    array_push($tags_1, trim($val));
                }
            }
            $tags_1 = array_filter($tags_1);
            $tags_1 = array_keys(array_flip($tags_1));
            $tags_rs = updateTags($tags_1);
            $tags_1 = json_encode($tags_1, JSON_UNESCAPED_UNICODE);
            $tags_2 = json_encode($tags_rs);

			$id_query = 0;
			$db->table = "article";
			$data = array(
				'article_menu_id'=>intval($article_menu_id),
				'name'=>$db->clearText(trim($name)),
				'title'=>$db->clearText(trim($title)),
				'description'=>$db->clearText(trim($description)),
				'keywords'=>$db->clearText(trim($keywords)),
				'img_note'=>$db->clearText(trim($img_note)),
				'address'=>$db->clearText(trim($address)),
				'price'=>formatNumberDouble($price),
				'block'=>formatNumberInt($block),
				'flat'=>formatNumberInt($flat),
				'open_sale'=>strtotime($date->dmYtoYmd($open_sale)),
				'type'=>intval($type),
				'upload_id'=>doubleval($upload_img_id),
				'comment'=>$db->clearText(trim($comment)),
				'content'=>$db->clearText($content),
                'youtube'=>$db->clearText($youtube),
                'tags'=>$db->clearText($tags_1),
                'tags_2'=>$db->clearText($tags_2),
				'is_active'=>intval($is_active),
				'hot'=>intval($hot),
                'pin'=>intval($pin),
				'created_time'=>strtotime($date->dmYtoYmd($created_time)),
				'modified_time'=>time(),
				'user_id'=>$_SESSION["user_id"]
			);
			$db->insert($data);
			$id_query = $db->LastInsertID;
            updateTags2($tags_rs);
			// Link SEO
			$slug = (empty($slug)) ? $name : $slug;
			$slug = updateLinkSEO($slug, $category_id, $article_menu_id, $id_query);
			// Update Slug
			$db->table = "article";
			$data = array(
				'slug'=>$db->clearText($slug)
			);
			$db->condition = "`article_id` = $id_query";
			$db->update($data);
            //---

			if($handleUploadImg) {
                $stringObj = new String();
                //
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
					$db->table = "article";
					$data = array(
						'img'=>$db->clearText($name_img)
					);
					$db->condition = "article_id = ".$id_query;
					$db->update($data);
				}
                else {
                    loadPageAdmin("Lỗi tải hình: ".$imgUp->error, "?".TTH_PATH."=article_list&id=".$article_menu_id);
                }

                $imgUp->file_new_name_body          = 'sm-' . $name_image;
                $imgUp->image_resize                = true;
                $imgUp->image_ratio_crop            = true;
                $imgUp->image_x                     = 225;
                $imgUp->image_y                     = 200;
                $imgUp->Process($dir_dest);

                if($category_id==89) {
                    $imgUp->file_new_name_body          = 'lg-' . $name_image;
                    $imgUp->image_resize                = true;
                    $imgUp->image_ratio_crop            = true;
                    $imgUp->image_x                     = 213;
                    $imgUp->image_y                     = 157;
                    $imgUp->Process($dir_dest);
                } else {
                    $imgUp->file_new_name_body          = 'hg-' . $name_image;
                    $imgUp->image_resize                = true;
                    $imgUp->image_ratio_crop            = true;
                    $imgUp->image_x                     = 420;
                    $imgUp->image_y                     = 440;
                    $imgUp->Process($dir_dest);
                }

				$imgUp-> Clean();
			}
            if(!empty($youtube)) {
                if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $youtube, $match)) {
                    $video_id = $match[1];
                    $name_image = time() . "_" . $upload_img_id . "_" . md5(uniqid());
                    $IMG_YOUTUBE = uploadVideo($video_id, 'yt_' . $name_image, $dir_dest, 0);
                    if($IMG_YOUTUBE) {
                        $imgVideo = new Upload($dir_dest . 'yt_' . $name_image . '.jpg');
                        $imgVideo->file_new_name_body       = 'yt_' . $name_image;
                        $imgVideo->image_watermark          = ROOT_DIR . DS . 'images' . DS . 'play.png';
                        $imgVideo->image_resize             = true;
                        $imgVideo->image_ratio_crop         = true;
                        $imgVideo->image_x                  = 410;
                        $imgVideo->image_y                  = 280;
                        $imgVideo->Process($dir_dest);
                        if($imgVideo->processed) {
                            $name_img = $imgVideo->file_dst_name;
                            $db->table = "article";
                            $data = array(
                                'youtube_img'=>$db->clearText($name_img)
                            );
                            $db->condition = "`article_id` = $id_query";
                            $db->update($data);
                        }

                        $imgVideo-> Clean();
                    }
                }
            }

			$db->table = "uploads_tmp";
			$data = array(
					'status'=>1
			);
			$db->condition = "`upload_id` = ".intval($upload_img_id);
			$db->update($data);

			loadPageSucces("Đã thêm bài viết thành công.","?".TTH_PATH."=article_list&id=".$article_menu_id);
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
	$name			= "";
	$slug           = "";
	$title			= "";
	$description	= "";
	$keywords		= "";
	$img            = "";
	$img_note       = "";
	$address        = "";
	$price          = "";
	$block          = "";
	$flat           = "";
	$open_sale      = "";
	$type           = 1;
	$comment        = "";
	$content        = "";
    $youtube        = "";
    $youtube_img    = "";
    $tags           = "";//getNameCategory($category_id) . ',' . getNameMenu($article_menu_id, 'article');
	$is_active		= 1;
	$hot			= 0;
	$pin          = 0;
	$created_time   = $date->vnDateTime(time());
}
if(!$OK) article("?".TTH_PATH."=article_add", "add", 0, $article_menu_id, $name, $slug, $title, $description, $keywords, $img, $img_note, $address, $price, $block, $flat, $open_sale, $type, $comment, $content, $youtube, $youtube_img, $tags, $is_active, $hot, $pin, $created_time, $upload_img_id, $error);