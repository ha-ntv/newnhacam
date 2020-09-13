<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$category_id = $menu_id = 0;
$article_id = isset($_GET['id']) ? intval($_GET['id']) : intval($article_id);
$db->table = "article";
$db->condition = "`article_id` = $article_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
	$menu_id = intval($row['article_menu_id']);
}
if($db->RowCount==0) loadPageAdmin("Bài viết không tồn tại.", "?".TTH_PATH."=article_manager");
// ---------------
$db->table = "article_menu";
$db->condition = "`article_menu_id` = $menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row) {
	$category_id = $row['category_id'];
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
			<a href="?<?php echo TTH_PATH?>=article_list&id=<?php echo $menu_id?>"><i class="fa fa-list"></i> <?php echo getNameMenuArt($menu_id)?></a>
		</li>
		<li>
			<i class="fa fa-cog"></i> Chỉnh sửa bài viết
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
if($typeFunc=='edit'){
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
		if(isset($del_img)) {
			$handleUploadImg = false;
			if(glob($dir_dest . DS .'*'.$img)) array_map("unlink", glob($dir_dest . DS .'*'.$img));

			$db->table = "article";
			$data = array(
				'img'=>'no'
			);
			$db->condition = "`article_id` = $article_id";
			$db->update($data);
		}

		if($OK) {
            $stringObj = new String();
            //
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
            //
			$id_query = 0;
			// Link SEO
			$slug = (empty($slug)) ? $name : $slug;
			$slug = updateLinkSEO($slug, $category_id, $article_menu_id, $article_id, 'update');

			$db->table = "article";
			$data = array(
				'article_menu_id'=>intval($article_menu_id),
                'name'=>$db->clearText(trim($name)),
				'slug'=>$db->clearText($slug),
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
			$db->condition = "`article_id` = $article_id";
			$db->update($data);
			$id_query = $article_id;
            updateTags2($tags_rs);

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
                        if(glob($dir_dest . DS .'*'.$youtube_img)) array_map("unlink", glob($dir_dest . DS .'*'.$youtube_img));
                        //
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
            } else {
                $db->table = "article";
                $data = array(
                    'youtube_img'=>'no'
                );
                $db->condition = "`article_id` = $id_query";
                $db->update($data);
            }

			loadPageSucces("Đã chỉnh sửa bài viết thành công.", "?".TTH_PATH."=article_list&id=".$article_menu_id);
			$OK = true;
		}
	}
}
else {
	$db->table = "article";
	$db->condition = "article_id = ".$article_id;
	$rows = $db->select();
	foreach($rows as $row) {
		$article_menu_id    = $row['article_menu_id']+0;
		$name			    = $row['name'];
		$slug               = $row['slug'];
		$title			    = $row['title'];
		$description	    = $row['description'];
		$keywords		    = $row['keywords'];
		$img                = $row['img'];
		$img_note           = $row['img_note'];
		$address            = $row['address'];
		$price              = $row['price'];
		$block              = (intval($row['block'])==0) ? '' : intval($row['block']);
		$flat               = (intval($row['flat'])==0) ? '' : intval($row['flat']);
		$open_sale          = $date->vnDate($row['open_sale']);
		$type               = intval($row['type']);
		$upload_img_id      = doubleval($row['upload_id']);
		$comment            = $row['comment'];
		$content            = $row['content'];
        $youtube            = $row['youtube'];
        $youtube_img        = $row['youtube_img'];
        $tags               = "";//json_decode(stripslashes($row['tags']));
        //$tags               = (count($tags) > 0) ? implode(',', $tags) : '';
		$is_active		    = intval($row['is_active']);
		$hot			    = intval($row['hot']);
        $pin			    = intval($row['pin']);
		$created_time       = $date->vnDateTime($row['created_time']);
	}
}
if(!$OK) article("?".TTH_PATH."=article_edit", "edit", $article_id, $article_menu_id, $name, $slug, $title, $description, $keywords, $img, $img_note, $address, $price, $block, $flat, $open_sale, $type, $comment, $content, $youtube, $youtube_img, $tags, $is_active, $hot, $pin, $created_time, $upload_img_id, $error);