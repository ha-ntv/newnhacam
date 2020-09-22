<?php
if (!defined('TTH_SYSTEM')) {
	die('Please stop!');
}
//
//Function __autoload()
function __autoload($classname)
{
	if (file_exists(_F_CLASSES . DS . $classname . ".class.php")) {
		include(_F_CLASSES . DS . $classname . ".class.php");
	} else if (file_exists(_F_CLASSES . DS . $classname . ".php")) {
		include(_F_CLASSES . DS . $classname . ".php");
	} else if (file_exists(_F_CLASSES . DS . "class." . $classname . ".php")) {
		include(_F_CLASSES . DS . "class." . $classname . ".php");
	} else if (file_exists(_F_CLASSES . DS . str_replace('_', DS, $classname) . ".php")) {
		include(_F_CLASSES . DS . str_replace('_', DS, $classname) . ".php");
	} else {
	}
}


//----------------------------------------------------------------------------------------------------------------------
/* Set Reporting Error */
function setReporting()
{
	if (DEVELOPMENT_ENVIRONMENT == true) {
		error_reporting(E_ALL);
		ini_set('display_errors', 'On');
	} else {
		error_reporting(E_ALL);
		ini_set('display_errors', 'Off');
		ini_set('log_errors', 'On');
		ini_set('error_log', ERROR_LOG_DIR);
	}
}
setReporting();

//----------------------------------------------------------------------------------------------------------------------
// Get site_url()
function site_url()
{
	$url = HOME_URL . $_SERVER['REQUEST_URI'];
	return $url;
}


/*
 * HTML minification
 */
function sanitize_output($buffer)
{
	$search = array(
		'/\>[^\S ]+/s',
		'/[^\S ]+\</s',
		'/(\s)+/s'
	);
	$replace = array(
		'>',
		'<',
		'\\1'
	);
	$buffer = preg_replace($search, $replace, $buffer);
	return $buffer;
}

//----------------------------------------------------------------------------------------------------------------------
/** Hàm lấy giá trị bảng page
 * @param $alias
 * @param string $col
 * @return string
 */
function getPage($alias, $col = "content")
{
	global $db;
	$alias = $db->clearText($alias);

	$content = '';
	$db->table = "page";
	$db->condition = "alias = '" . $alias . "'";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	if ($db->RowCount == 0) {
		$content = "Unknown alias '" . $alias . "'";
	} else {
		foreach ($rows as $row) {
			$content = ($row['is_active'] + 0 == 1) ? $row[$col] : '';
		}
	}

	return stripslashes($content);
}

//----------------------------------------------------------------------------------------------------------------------
/** Hàm lấy giá trị bảng constant
 * @param $const
 * @return string
 */
function getConstant($const)
{
	global $db;
	$const = $db->clearText($const);

	$value = '';
	$db->table = "constant";
	$db->condition = "constant = '" . $const . "'";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach ($rows as $row) {
		$value = $row['value'];
	}

	return stripslashes($value);
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @param $num
 * @return string
 */
function formatNumberVN($num)
{
	return trim(rtrim(strval(number_format($num, 2, ',', '.')), '0'), ',');
}
/**
 * @param $text
 * @return mixed
 */
function formatNumberInt($text)
{
	$text = str_replace('.', '', $text);
	return intval($text);
}
function formatNumberFloat($text)
{
	$text = str_replace(".", "", $text);
	$text = str_replace(",", ".", $text);
	return floatval($text);
}
function formatNumberDouble($text)
{
	$text = str_replace('.', '', $text);
	return doubleval($text);
}

function size_format($bytes = "")
{
	$retval = "";
	if ($bytes >=  pow(1024, 5)) {
		$retval = round($bytes / pow(1024, 5) * 100) / 100 . " PB";
	} else if ($bytes >=  pow(1024, 4)) {
		$retval = round($bytes / pow(1024, 4) * 100) / 100 . " TB";
	} else if ($bytes >=  pow(1024, 3)) {
		$retval = round($bytes / pow(1024, 3) * 100) / 100 . " GB";
	} else if ($bytes >=  pow(1024, 2)) {
		$retval = round($bytes / pow(1024, 2) * 100) / 100 . " MB";
	} else if ($bytes  >= 1024) {
		$retval = round($bytes / 1024 * 100) / 100 . " KB";
	} else {
		$retval = $bytes . " bytes";
	}
	return $retval;
}

//----------------------------------------------------------------------------------------------------------------------
/** Hàm đếm số truy cập hiện tại
 * @return int
 */
function getCountOnline()
{
	global $db;

	$db->table = "online";
	$db->condition = 1;
	$db->order = "";
	$db->limit = "";
	$db->select();
	return formatNumberVN($db->RowCount + 7);
}

/** Đếm tổng số truy cập
 * @return int
 */
function getTotalHits()
{
	global $db;
	$data = 0;

	$db->table = "online_daily";
	$db->condition = 1;
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$data += $row["count"] + 0;
	}
	$data = $data + 100000;
	/*
	$item = 8 - strlen($data);
	for ($i = 1; $i <= $item; $i++) {
		$data = "0" . $data;
	}
	$str = '';
	for ($i = 0; $i < strlen($data); $i++) {
		$str = $str.'<li>'.$data[$i].'</li>';
	}
	$str = '<ul class="countHits">'.$str.'</ul>';
	*/

	return formatNumberVN($data);
}

/** Đếm số truy cập trong ngày hiện tại
 * @return int
 */
function getDayHits()
{
	global $db;
	$date = new DateClass();
	$data = 0;
	$month = "";

	$month = $date->vnOther(time(), 'Y-m-d');
	$db->table = "online_daily";
	$db->condition = "date LIKE  '" . $month . "'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$data += $row["count"] + 0;
	}
	return formatNumberVN($data + 100);
}

/** Đếm số truy cập trong tháng hiện tại
 * @return int
 */
function getMonthHits()
{
	global $db;
	$date = new DateClass();
	$data = 0;
	$month = "";

	$month = $date->vnOther(time(), 'Y-m');
	$db->table = "online_daily";
	$db->condition = "date LIKE  '%" . $month . "%'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$data += $row["count"] + 0;
	}
	return formatNumberVN($data + 5000);
}

/** Đếm số truy cập lớn nhất theo ngày
 * @return int
 */
function getMaxHits()
{
	global $db;
	$db->table = "online_daily";
	$db->condition = "";
	$db->order = "count DESC";
	$db->limit = 1;
	$rows = $db->select();
	$data = $rows[0]['count'] + 0;
	return formatNumberVN($data + 150);
}

/** Lấy ngày có số truy cập lớn nhất
 * @return int
 */
function getDayMaxHits()
{
	global $db;
	$date = new DateClass();
	$db->table = "online_daily";
	$db->condition = "";
	$db->order = "count DESC";
	$db->limit = 1;
	$rows = $db->select();
	$data = $rows[0]['date'];
	return $date->vnDate(strtotime($data));
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @return string
 */
function getTitle()
{
	global $db, $slug_cat, $id_menu, $id_article;
	$slug = $slug_cat;
	$txtTitle = getConstant('title');
	$txt = "";

	if ($slug == "home") {
		$txt = $txtTitle;
	}

	if (!empty($slug)) {
		$tb = array(
			1 => 'article',
			2 => 'gallery',
			6 => 'product',
			9 => 'tour',
			10 => 'gift',
			11 => 'car',
			17 => 'project',
			18 => 'bds_business',
			21 => 'document',
		);
		$type_id = 0;

		$db->table = "category";
		$db->condition = "slug = '" . $slug . "'";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows as $row) {
				$txt = (!empty($row['title'])) ? $row['title'] : $row['name'];
				$type_id = $row['type_id'] + 0;
			}
			$tb_name = $tb[$type_id];

			if (!empty($id_menu) && $id_menu != 0) {
				$db->table = $tb_name . "_menu";
				$db->condition = $tb_name . "_menu_id = " . $id_menu;
				$db->order = "";
				$db->limit = 1;
				$rows = $db->select();
				foreach ($rows as $row) {
					$txt = (!empty($row['title'])) ? $row['title'] : $row['name'];
				}
			}
			if (!empty($id_article) && $id_article != 0) {
				$article_id = $id_article;
				$db->table = $tb_name;
				$db->condition = $tb_name . "_id = " . $article_id;
				$db->order = "";
				$db->limit = 1;
				$rows = $db->select();
				foreach ($rows as $row) {
					$txt = (!empty($row['title'])) ? $row['title'] : $row['name'];
				}
			}
		}
	}

	if ($slug == "-error-404") {
		$txt = "Error pages 404! - " . $txtTitle;
	}
	if ($slug == "lien-he") {
		$txt = "Liên hệ - " . $txtTitle;
	}
	if ($slug == "contact") {
		$txt = "Contact - " . $txtTitle;
	}
	if ($slug == "tags") {
		$txt = "Tags - " . $txtTitle;
	}
	if ($slug == "booking") {
		$txt = "Booking - " . $txtTitle;
	}
	if ($slug == "payment") {
		$txt = "Payment - " . $txtTitle;
	}
	if ($slug == "feedback") {
		$txt = "Feeback - " . $txtTitle;
	}
	if ($slug == "search") {
		$txt = "Search - " . $txtTitle;
	}
	if ($slug == "order") {
		$txt = "Order - " . $txtTitle;
	}
	if ($slug == "thanks-you") {
		$txt = "Thanks you - " . $txtTitle;
	}


	return stripslashes($txt);
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @return string
 */
function getDescription()
{
	global $db, $slug_cat, $id_menu, $id_article;
	$stringObj = new String();
	$slug = $slug_cat;
	$txtDescription = getConstant('description');
	$txt = "";

	if ($slug == "home") {
		$txt = $txtDescription;
	}

	if (!empty($slug)) {
		$tb = array(
			1 => 'article',
			2 => 'gallery',
			6 => 'product',
			9 => 'tour',
			10 => 'gift',
			11 => 'car',
			17 => 'project',
			18 => 'bds_business',
			21 => 'document',
		);
		$type_id = 0;

		$db->table = "category";
		$db->condition = "slug = '" . $slug . "'";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows as $row) {
				$txt = (!empty($row['description'])) ? $row['description'] : $row['name'];
				$type_id = $row['type_id'] + 0;
			}
			$tb_name = $tb[$type_id];

			if (!empty($id_menu) && $id_menu != 0) {
				$db->table = $tb_name . "_menu";
				$db->condition = $tb_name . "_menu_id = " . $id_menu;
				$db->order = "";
				$db->limit = 1;
				$rows = $db->select();
				foreach ($rows as $row) {
					$comment = (!empty($row['comment'])) ? $row['comment'] : $row['name'];
					$txt = (!empty($row['description'])) ? $row['description'] : $comment;
				}
			}
			if (!empty($id_article) && $id_article != 0) {
				$article_id = $id_article;
				$db->table = $tb_name;
				$db->condition = $tb_name . "_id = " . $article_id;
				$db->order = "";
				$db->limit = 1;
				$rows = $db->select();
				foreach ($rows as $row) {
					$comment = (!empty($row['comment'])) ? $row['comment'] : $row['name'];
					$txt = (!empty($row['description'])) ? $row['description'] : $comment;
				}
			}
		}
	}

	if ($slug == "-error-404") {
		$txt = "Error pages 404! - " . $txtDescription;
	}
	if ($slug == "lien-he") {
		$txt = "Liên hệ - " . $txtDescription;
	}
	if ($slug == "contact") {
		$txt = "Contact - " . $txtDescription;
	}
	if ($slug == "tags") {
		$txt = "Tags - " . $txtDescription;
	}
	if ($slug == "bat-dong-san") {
		$txt = "Tìm kiếm bất động sản - " . $txtDescription;
	}

	return stripslashes($stringObj->crop($txt, 65));
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @return string
 */
function getKeywords()
{
	global $db, $slug_cat, $id_menu, $id_article;
	$slug = $slug_cat;
	$txtKeywords = getConstant('keywords');
	$txt = "";

	if ($slug == "home") {
		$txt = $txtKeywords;
	}

	if (!empty($slug)) {
		$tb = array(
			1 => 'article',
			2 => 'gallery',
			6 => 'product',
			9 => 'tour',
			10 => 'gift',
			11 => 'car',
			17 => 'project',
			18 => 'bds_business',
			21 => 'document',
		);
		$type_id = 0;

		$db->table = "category";
		$db->condition = "slug = '" . $slug . "'";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows as $row) {
				$txt = (!empty($row['keywords'])) ? $row['keywords'] : $row['name'];
				$type_id = $row['type_id'] + 0;
			}
			$tb_name = $tb[$type_id];

			if (!empty($id_menu) && $id_menu != 0) {
				$db->table = $tb_name . "_menu";
				$db->condition = $tb_name . "_menu_id = " . $id_menu;
				$db->order = "";
				$db->limit = 1;
				$rows = $db->select();
				foreach ($rows as $row) {
					$txt = (!empty($row['keywords'])) ? $row['keywords'] : $row['name'];
				}
			}
			if (!empty($id_article) && $id_article != 0) {
				$article_id = $id_article;
				$db->table = $tb_name;
				$db->condition = $tb_name . "_id = " . $article_id;
				$db->order = "";
				$db->limit = 1;
				$rows = $db->select();
				foreach ($rows as $row) {
					$txt = (!empty($row['keywords'])) ? $row['keywords'] : $row['name'];
				}
			}
		}
	}

	if ($slug == "-error-404") {
		$txt = "Error pages 404!," . $txtKeywords;
	}
	if ($slug == "lien-he") {
		$txt = 'Liên hệ,' . $txtKeywords;
	}
	if ($slug == "contact") {
		$txt = "Contact," . $txtKeywords;
	}
	if ($slug == "Tags") {
		$txt = "tags," . $txtKeywords;
	}
	if ($slug == "bat-dong-san") {
		$txt = "Tìm kiếm bất động sản," . $txtKeywords;
	}

	return stripslashes($txt);
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @param int $length
 * @return string
 */
function getRandomString($length = 15)
{
	$validCharacters = "abcdefghijklmnopqrstuxyvwz0123456789";
	$validCharNumber = strlen($validCharacters);

	$result = "";

	for ($i = 0; $i < $length; $i++) {
		$index = mt_rand(0, $validCharNumber - 1);
		$result .= $validCharacters[$index];
	}

	return $result;
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @param $emailReply
 * @param $nameReply
 * @param $emailTo
 * @param $nameTo
 * @param $subject
 * @param $content
 * @param string $file
 * @return bool
 */
function sendMailFn($emailReply, $nameReply, $emailTo, $nameTo, $subject, $content, $file = '', $emailTo2 = '', $nameTo2 = '')
{
	$content =	sanitize_output($content);
	$content =	str_replace("\n", "<br>", $content);
	$content =	str_replace("  ", "&nbsp; ", $content);
	$content =	str_replace("<script>", "&lt;script&gt;", $content);

	//Khởi tạo đối tượng
	$mail = new PHPMailer();
	$mail->IsSMTP();

	$mail->Host = getConstant("SMTP_host");
	$mail->Port = getConstant("SMTP_port");
	$mail->SMTPDebug = 0; // enables SMTP debug information (for testing)
	// 1 = errors and messages
	// 2 = messages only
	$mail->SMTPAuth = true;
	(getConstant("SMTP_secure") != "none") ? $mail->SMTPSecure = getConstant("SMTP_secure") : "";
	$mail->Username = getConstant("SMTP_username");
	$mail->Password = getConstant("SMTP_password");

	$mail->SetFrom($mail->Username, getConstant("SMTP_mailname"));

	$mail->AddAddress($emailTo, $nameTo);
	if ($emailTo2 != "") {
		$mail->AddBCC($emailTo2, $nameTo2);
	}
	$mail->AddReplyTo($emailReply, $nameReply);

	$mail->IsHTML(true);
	$mail->Subject = $subject;
	$mail->CharSet = "utf-8";
	$mail->Body = $content;
	($file != '') ? $mail->AddAttachment($file) : "";

	if (!$mail->Send()) {
		return FALSE;
	} else {
		return TRUE;
	}
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @param $currentPage
 * @param $maxPage
 * @param string $path
 */
function showPageNavigation($currentPage, $maxPage, $path = '', $filter = '')
{
	if ($maxPage <= 1) {
		return;
	}
	$suffix = $filter;

	$nav = array(
		'left'	=>	3,
		'right'	=>	3,
	);
	if ($maxPage < $currentPage) {
		$currentPage = $maxPage;
	}
	$max = $nav['left'] + $nav['right'];

	if ($max >= $maxPage) {
		$start = 1;
		$end = $maxPage;
	} elseif ($currentPage - $nav['left'] <= 0) {
		$start = 1;
		$end = $max + 1;
	} elseif (($right = $maxPage - ($currentPage + $nav['right'])) <= 0) {
		$start = $maxPage - $max;
		$end = $maxPage;
	} else {
		$start = $currentPage - $nav['left'];
		if ($start == 2) {
			$start = 1;
		}

		$end = $start + $max;
		if ($end == $maxPage - 1) {
			++$end;
		}
	}

	$navig = '<div class="page-navigation"><ul class="pagination">';
	if ($currentPage >= 2) {
		if ($currentPage >= $nav['left']) {
			if ($currentPage - $nav['left'] > 2 && $max < $maxPage) {
				$navig .= '<li class="paginate_button"><a href="' . $path . '1' . $suffix . '">1</a></li>';
				$navig .= '<li class="paginate_button"><a>...</a></li>';
			}
		}
		$navig .= '<li class="paginate_button"><a href="' . $path . ($currentPage - 1) . $suffix . '"><i class="fa fa-caret-left"></i></a></li>';
	}

	for ($i = $start; $i <= $end; $i++) {
		if ($i == $currentPage) {
			$navig .= '<li class="paginate_button active"><a>' . $i . '</a></li>';
		} else {
			$pg_link = $path . $i;
			$navig .= '<li class="paginate_button"><a href="' . $pg_link . $suffix . '">' . $i . '</a></li>';
		}
	}

	if ($currentPage <= $maxPage - 1) {
		$navig .= '<li class="paginate_button"><a href="' . $path . ($currentPage + 1) . $suffix . '"><i class="fa fa-caret-right"></i></a></li>';

		if ($currentPage + $nav['right'] < $maxPage - 1 && $max + 1 < $maxPage) {
			$navig .= '<li class="paginate_button"><a>...</a></li>';
			$navig .= '<li class="paginate_button"><a href="' . $path . $maxPage . $suffix . '">' . $maxPage . '</a></li>';
		}
	}
	$navig .= '</ul></div>';

	echo $navig;
}

//----------------------------------------------------------------------------------------------------------------------

function getInfoUser($id = 0)
{
	global $db;
	$info = array();
	$db->table = "core_user";
	$db->condition = "`user_id` = " . intval($id);
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach ($rows as $row) {
		$info[0] = stripslashes($row['full_name']);
		$info[1] = stripslashes($row['apply']);
		$info[2] = stripslashes($row['phone']);
		$info[3] = stripslashes($row['email']);
		if ($row['img'] == 'no' || $row['img'] == '') {
			$info[4] = HOME_URL . '/uploads/user/no-avatar-' .  ($row['gender'] + 0) . '.png';
		} else {
			$info[4] = HOME_URL . '/uploads/user/' . $row['img'];
		}
		$info[5] = stripslashes($row['role_id']);
	}

	return $info;
}
//----------------------------------------------------------------------------------------------------------------------
function getSlugCategory($id)
{
	global $db;
	$slug = "";

	$db->table = "category";
	$db->condition = "category_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$rows = $db->select('slug');

	foreach ($rows as $row) {
		$slug = $row['slug'];
	}

	return stripslashes($slug);
}
function getNameCategory($id)
{
	global $db;
	$name = "";

	$db->table = "category";
	$db->condition = "category_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$rows = $db->select('name');

	foreach ($rows as $row) {
		$name = $row['name'];
	}

	return stripslashes($name);
}

function getImgCategory($id)
{
	global $db;
	$name = "";

	$db->table = "category";
	$db->condition = "category_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$rows = $db->select('img');

	foreach ($rows as $row) {
		$name = $row['img'];
	}
	if ($name == '' || $name == 'no') {
		return '';
	} else {
		return stripslashes(HOME_URL . '/uploads/category/bg-' . $name);
	}
}
function getIdCategory($slug)
{
	global $db;
	$id = 0;

	$db->table = "category";
	$db->condition = "slug = '" . $slug . "'";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select('category_id');

	foreach ($rows as $row) {
		$id = $row['category_id'] + 0;
	}

	return $id;
}

function getCommentCategory($id)
{
	global $db;
	$str = "";

	$db->table = "category";
	$db->condition = "`category_id` = " . ($id + 0);
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select('comment');

	foreach ($rows as $row) {
		$str = $row['comment'];
	}

	return stripslashes($str);
}

//----------------------------------------------------------------------------------------------------------------------
function getIdArticle($slug, $position = 'last')
{
	$item = array();
	$id = 0;

	$item = explode('-', $slug);
	if ($position == 'first') {
		$id = $item[0];
	} else {
		$item = explode('.', $item[count($item) - 1]);
		$id = $item[0];
	}
	return $id + 0;
}

function getTableOl($id, $tb, $col, $type)
{
	global $db;
	$str = "";
	$db->table = $tb;
	$db->condition = $col . " = " . ($id + 0);
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach ($rows as $row) {
		$str = $row[$type];
	}
	return stripslashes($str);
}
//----------------------------------------------------------------------------------------------------------------------
function getIdMenu($slug_cat, $menu_sub)
{
	global $db;
	$tb = array(
		1 => 'article_menu',
		2 => 'gallery_menu',
		6 => 'product_menu',
		9 => 'tour_menu',
		10 => 'gift_menu',
		11 => 'car_menu',
		15 => 'others_menu',
		17 => 'project_menu',
		18 => 'bds_business_menu',
		21 => 'document_menu',
	);

	$db->table = "category";
	$db->condition = "`slug` = '$slug_cat'";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select('type_id');

	$id = 0;

	if ($db->RowCount > 0) {
		$tb_name = $tb[($rows[0]['type_id'] + 0)];

		$db->table = $tb_name;
		$db->condition = "`slug` = '$menu_sub'";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select($tb_name . '_id');
		if ($db->RowCount > 0) {
			$id = $rows[0][$tb_name . '_id'] + 0;
		}
	}
	return $id;
}

//----------------------------------------------------------------------------------------------------------------------
/**
 * @param $id
 * @return string
 */
function getNameMenuPro($id)
{
	global $db;
	$str = "";
	$db->table = "product_menu";
	$db->condition = "product_menu_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$str = $row['name'];
	}
	return stripslashes($str);
}

function getNameMenuArt($id)
{
	global $db;
	$str = "";
	$db->table = "article_menu";
	$db->condition = "article_menu_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$str = $row['name'];
	}
	return stripslashes($str);
}

function getSlugMenu($id, $tb)
{
	global $db;
	$str = "";
	$db->table = $tb . "_menu";
	$db->condition = $tb . "_menu_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$str = $row['slug'];
	}
	return stripslashes($str);
}

function getNameMenu($id, $tb)
{
	global $db;
	$str = "";
	$db->table = $tb . "_menu";
	$db->condition = $tb . "_menu_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$str = $row['name'];
	}
	return stripslashes($str);
}

function getTableOthers($id = 0, $type)
{
	global $db;
	$txt = '';
	$db->table = "others";
	$db->condition = "others_id = " . ($id + 0);
	$db->order = "sort ASC";
	$rows = $db->select();
	if ($db->RowCount > 0) {
		foreach ($rows as $row) {
			$txt = stripslashes($row[$type]);
		}
	}
	return $txt;
}

function countProduct($id)
{
	global $db;
	$db->table = "product";
	$db->condition = "product_menu_id = " . ($id + 0);
	$db->order = "";
	$db->limit = "";
	$db->select();
	$count = $db->RowCount;
	return $count;
}

function convertCurrency($number)
{
	$number = $number + 0;
	$count = strlen($number);
	$type = ' đồng';
	if ($count > 9) {
		$type = ' tỷ';
	} else if ($count > 6) {
		$type = ' triệu';
	} else if ($count > 5) {
		$type = ' trăm';
	} else if ($count > 3) {
		$type = ' nghìn';
	} else $type = ' đồng';

	$result = '';
	if ($count > 9) {
		$result = substr($number, 0, -9);
		if (strlen($result) == 1) {
			$rear = substr($number, -9, -8);
			if ($rear > 0) $result = $result . '.' . $rear;
			$rear = substr($number, -8, -7);
			if ($rear > 0) {
				if (strpos($result, '.')) $result = $result . $rear;
				else $result = $result . '.0' . $rear;
			}
		}
	} else if ($count > 6) {
		$result = substr($number, 0, -6);
		if (strlen($result) == 1) {
			$rear = substr($number, -6, -5);
			if ($rear > 0) $result = $result . '.' . $rear;
		}
	} else if ($count > 5) {
		$result = substr($number, 0, -5);
		if (strlen($result) == 1) {
			$rear = substr($number, -5, -4);
			if ($rear > 0) $result = $result . '.' . $rear;
		}
	} else if ($count > 3) {
		$result = substr($number, 0, -3);
		if (strlen($result) == 1) {
			$rear = substr($number, -3, -2);
			if ($rear > 0) $result = $result . '.' . $rear;
		}
	} else {
		$result = $number;
	}

	return $result . $type;
}

//----------------------------------------------------------------------------------------------------------------------
function getOgImage($slug_cat = '', $id_menu = 0, $id_article = 0)
{
	global $db;
	$tb_i = 0;
	$dir_dest = ROOT_DIR . DS . 'uploads' . DS;
	$image = ROOT_DIR . str_replace('/', DS, getConstant('image_thumbnailUrl'));
	if (file_exists($image)) $image = HOME_URL . getConstant('image_thumbnailUrl');
	else $image = HOME_URL . getConstant('file_logo');
	$tb = array(
		1 => 'article',
		2 => 'gallery',
		6 => 'product',
		9 => 'tour',
		10 => 'gift',
		11 => 'car',
		17 => 'project',
		18 => 'bds_business',
		21 => 'document',
	);

	$db->table = "category";
	$db->condition = "slug = '" . $slug_cat . "'";
	$db->order = "";
	$db->limit = 1;
	$rows_cat = $db->select();
	if ($db->RowCount > 0) {
		foreach ($rows_cat as $row_cat) {
			$tb_i = $row_cat['type_id'] + 0;
			if (($row_cat['img'] != 'no') && glob($dir_dest . 'category' . DS . '*' . $row_cat['img'])) {
				$image = HOME_URL . '/uploads/category/' . $row_cat['img'];
			}
		}

		$tb_name = $tb[$tb_i];

		$db->table = $tb_name . "_menu";
		$db->condition = $tb_name . "_menu_id = " . $id_menu;
		$db->order = "";
		$db->limit = 1;
		$rows_menu = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows_menu as $row_menu) {
				if (($row_menu['img'] != 'no') && glob($dir_dest . $tb_name . '_menu' . DS . '*' . $row_menu['img'])) {
					$image = HOME_URL . '/uploads/' . $tb_name . '_menu/' . $row_menu['img'];
				}
			}

			$db->table = $tb_name;
			$db->condition = $tb_name . "_id = " . $id_article;
			$db->order = "";
			$db->limit = 1;
			$rows_art = $db->select();
			if ($db->RowCount > 0) {
				foreach ($rows_art as $row_art) {
					if (($row_art['img'] != 'no') && glob($dir_dest . $tb_name . DS . '*' . $row_art['img'])) {
						$image = HOME_URL . '/uploads/' . $tb_name . '/' . $row_art['img'];
					}
				}
			}
		}
	}
	return $image;
}

//----------------------------------------------------------------------------------------------------------------------
/* Cart - Giỏ hàng */
function addToCart($id, $amount)
{
	if (isset($_SESSION['cart'][$id])) {
		$qty = $_SESSION['cart'][$id] + $amount;
	} else {
		$qty = $amount;
	}
	$_SESSION['cart'][$id] = $qty;
}

function delItemCart($id, $key)
{
	if (isset($_SESSION['cart'][$id]) && isset($_SESSION['cart'][$id][$key])) {
		unset($_SESSION['cart'][$id][$key]);
	}
	if (count($_SESSION['cart'][$id]) == 0) unset($_SESSION['cart'][$id]);
}

function removeCart()
{
	unset($_SESSION['cart']);
}

function updateCart(array $qty)
{
	foreach ($qty as $key => $value) {
		if (($value == 0) and (is_numeric($value))) {
			unset($_SESSION['cart'][$key]);
		} elseif (($value > 0) and (is_numeric($value))) {
			$_SESSION['cart'][$key] = $value;
		}
	}
}

function showCart()
{
	global $db;
	$stringObj = new String();
	$total = 0;
	$productMap = cartInfo();

	if ($productMap) {
		echo '<form action="' . HOME_URL . '/payment/" method="post"  id="cart_total_form">';
		echo '<table class="form-order" cellspacing="0" cellpadding="5" width="100%">
				<thead>
					<tr align="center">
						<td width="12%" class="hinhanh">Hình ảnh</td>
						<td class="sanpham">Sản phẩm</td>
						<td class="dongia">Đơn giá</td>
						<td width="12%" class="soluong">Số lượng</td>
						<td width="300px" class="luuy">Ghi chú</td>
						<td class="thanhtien">Thành tiền</td>
						<td width="7%" class="huy">Hủy</td>
					</tr>
				</thead>';

		foreach ($_SESSION['cart'] as $key => $arr) {
			$keyList = showToppingCart($productMap, $key, $arr);
			foreach ($keyList as $ele) {
				$img_product    = '';
				$name_product   = '';
				$price_product  = '';
				$money_price    = '';
				$price          = 0;
				$price_amount   = 0;

				$alt = stripslashes($productMap[$key]['name']);
				if ($productMap[$key]['img'] != "" && $productMap[$key]['img'] != "no") {
					$img_product = '<img src="' . HOME_URL . '/uploads/product/' . $productMap[$key]['img'] . '" alt="' . $alt . '" />';
					$img_product = '<a href="' . HOME_URL .  '" title="' . stripslashes($productMap[$key]['name']) . '">' . $img_product . '</a>';
				} else {
					$img_product = '<img src="' . HOME_URL . '/images/404-img-pro.jpg" alt="' . $alt . '" />';
					$img_product = '<a href="' . HOME_URL .  '" title="' . stripslashes($productMap[$key]['name']) . '">' . $img_product . '</a>';
				}

				$name_product   = '<a href="' . HOME_URL .  '" title="' . stripslashes($productMap[$key]['name']) . '">' . stripslashes($productMap[$key]['name']) . renderToppingName($ele['topping']) . '</a>';
				$price          = $ele['price'] + 0;
				$price_product  = ($price == 0) ? 'Liên hệ'  : formatNumberVN($price);
				$price_amount   = $price *  $ele['amount'];
				$money_price    = ($price == 0) ? 'Liên hệ'  : formatNumberVN($price_amount);
				if ($price == 0) $contact = true;
				$total = $total + $price_amount;
				$note = $_SESSION['note'] && $_SESSION['note'][$key] && $_SESSION['note'][$key][$ele['key']] ? $_SESSION['note'][$key][$ele['key']]: '';

				echo '<tr>
						<td align="center" class="img">' . $img_product . '</td>
						<td>' . $name_product . '</td>
						<td align="right">' . $price_product . '</td>
						<td align="center"><span class="minus btn-icon">-</span><input type="text" data-id="' . $key . '" data-key="' . $ele['key'] . '" class="form-control inline-20" style="padding: 3px 10px;" name="qty[' . $key . ']" value="' . $ele['amount'] . '" maxlength="5"><span class="plus btn-icon">+</span></td>
						<td align="center"><input class="form-control w-100" name="note[' . $key . ']" data-id="' . $key . '" data-key="' . $ele['key'] . '"  type="text" value="'.$note.'"></td>
											<td align="right" class="totalitem">' . $money_price . '</td>
						<td align="center" class="remove">
							<a href="' . HOME_URL . '/payment?del=' . $key . '&key=' . $ele['key'] . '" title="Xóa sản phẩm"><i class="fa fa-trash"></i></a>
						</td>
				</tr>';
			}
		}
		$total_money = ($contact == true) ? 'Liên hệ'  : formatNumberVN($total);
		echo '<tr>
			<td align="right" colspan="4"><strong>Tổng tiền:</strong></td>
			<td align="right" class="total">' . $total_money . '</td>
			<td>&nbsp;</td>
		</tr>';
		echo '</table>';

		echo '<input type="button" name="continue" class="btn-order btn3s" onclick="' . ($_SESSION['language'] == 'en' ? 'Forward(\'/delivery\');' : 'Forward(\'/vi/delivery\');') . '" value="Tiếp tục chọn">
			  <input type="submit" name="remove" class="btn-order btn4s" value="Xóa giỏ">';
		echo '</form>';
	} else {
		echo '<input type="button" name="continue" class="btn-order btn3s" onclick="' . ($_SESSION['language'] == 'en' ? 'Forward(\'/delivery\');' : 'Forward(\'/vi/delivery\');') . '" value="Chọn hàng">';
	}
}

function showRatings($qty = 0)
{
	$star = $star_half = $star_o = 0;
	$string = '';
	$qty = $qty + 0;
	$r_qty = round($qty, 2);
	$s_qty = strstr($r_qty, '.');
	$s_qty = $s_qty + 0;
	if ($s_qty > 0.25 && $s_qty < 0.75) {
		$star_half = 1;
	}
	if ($s_qty < 0.5) {
		$star = round($qty);
		$star_o = 5 - ($star + $star_half);
	} elseif ($s_qty >= 0.5 && $s_qty < 0.75) {
		$star = round($qty) - 1;
		$star_o = 5 - ($star + $star_half);
	} else {
		$star = round($qty);
		$star_o = 5 - ($star + $star_half);
	}
	for ($i = 5; $i > 0; $i--) {
		if ($star_o > 0) {
			$string .= '<i class="c-ratings fa fa-star-o" rel="' . $i . '"></i>';
			$star_o--;
		} elseif ($star_half > 0) {
			$string .= '<i class="c-ratings fa fa-star-half-o" rel="' . $i . '"></i>';
			$star_half--;
		} elseif ($star > 0) {
			$string .= '<i class="c-ratings fa fa-star" rel="' . $i . '"></i>';
			$star--;
		} else {
		}
	}
	return $string;
}


function getListIdMenuChild($type, $category, $id)
{
	global $db;
	$where  = $id;
	$result = $where;
	$element    = TRUE;
	while ($element == TRUE) {
		$db->table = $type;
		$db->condition = "`is_active` = 1 AND `parent` IN ($where) AND `category_id` = $category";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		if ($db->RowCount > 0) {
			$where = '';
			$i = 0;
			foreach ($rows as $row) {
				if ($i == 0) $where = $row[$type . '_id'];
				else $where .= ',' . $row[$type . '_id'];
				$result .= ',' . $row[$type . '_id'];
				$i++;
			}
		} else $element = FALSE;
	}
	return $result;
}
function loadMenuChild($type, $category, $parent, $e_slug = '', $e_id = 0, $e_active = 'active')
{
	global $db;
	$table = array(
		1 => 'article_menu',
		2 => 'gallery_menu',
		6 => 'product_menu',
	);
	$table = $table[intval($type)];
	$slug = getSlugCategory($category);
	$check = 0;
	if ($parent == 0) $check = 1;
	else $check = 0;

	$result = '';
	$db->table = $table;
	$db->condition = "`is_active` = 1 AND `parent` = $parent AND `category_id` = $category";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows_m = $db->select();
	if ($db->RowCount > $check) {
		$result .= '<ul>';
		foreach ($rows_m as $row_m) {
			$active = '';
			if ($row_m[$table . '_id'] == $e_id && $slug == $e_slug) $active = ' class="' . $e_active . '"';
			$result .= '<li' . $active . '><a href="' . HOME_URL . '/' . stripslashes($row_m['slug']) . '" title="' . stripslashes($row_m['name']) . '">' . stripslashes($row_m['name']) . '</a>' . loadMenuChild($type, $category, $row_m[$table . '_id'], $e_slug, $e_id) . '</li>';
		}
		$result .= '</ul>';
	}
	return $result;
}

function convertTimeAgo($time)
{
	date_default_timezone_set(TTH_TIMEZONE);
	$result = '';
	$time = time() - $time;
	if ($time > 0) {
		if ($time < 60) $result = $time . ' giây trước';
		elseif ($time < 3600) $result = round($time / 60) . ' phút trước';
		elseif ($time < 86400) $result = round($time / 3600) . ' giờ trước';
		elseif ($time < 604800) $result = round($time / 86400) . ' ngày trước';
		elseif ($time < 2592000) $result = round($time / 604800) . ' tuần trước';
		elseif ($time < 31536000) $result = round($time / 2592000) . ' tháng trước';
		else $result = round($time / 31536000) . ' năm trước';
	} else {
		$result = 'mới xong';
	}

	return $result;
}

function convertTime5DayAgo($time, $t1 = '', $t2 = '')
{
	date_default_timezone_set(TTH_TIMEZONE);
	global $date;
	if ((time() - $time) > 432000) return $t1 . $date->vnDate($time);
	else return $t2 . convertTimeAgo($time);
}

function getListTopping($list)
{
	global $db;
	$result = '';
	if ($list) {
		$db->table = "product";
		$db->condition = "product_id IN ( $list )";
		$db->order = "";
		$db->limit = "";
		$listRow = $db->select('product_id, name, price');
		foreach ($listRow as $l) {
			$result .= '<div class="col col-6">
							<div class="row-mod mod-input" data-topping="' . $l['product_id'] . '">
								<div class="col">
									<div class="custom-checkbox">
										<input id="topping-' . $l['product_id'] . '" name="' . $l['name'] . '" type="checkbox" value="' . $l['product_id'] . '">
										<label for="topping-' . $l['product_id'] . '">' . $l['name'] . '<span class="topping-item-price">' . formatNumberVN($l['price']) . '</span><span class="unit">VNĐ</span></label>
									</div>
								</div>
							</div>
						</div>';
		}
	}
	return $result;
}

function getListToppingForMobile($list)
{
	global $db;
	$result = '';
	if ($list) {
		$db->table = "product";
		$db->condition = "product_id IN ( $list )";
		$db->order = "";
		$db->limit = "";
		$listRow = $db->select('product_id, name, price');
		foreach ($listRow as $l) {

			$result .= '<div class="custom-control custom-checkbox">
							<input class="custom-control-input" id="topping-' . $l['product_id'] . '" name="' . $l['name'] . '" type="checkbox" value="' . $l['product_id'] . '">
							<label class="custom-control-label " for="topping-' . $l['product_id'] . '">' . $l['name'] . '<span class="topping-item-price ">' . formatNumberVN($l['price']) . '</span><span class="unit">đ</span></label>
						</div>';
		}
	}
	return $result;
}

function showOrderCount($num)
{
	return $num <= 100 ? $num : '100+';
}

function cartInfo()
{
	//	$_SESSION['cart'] = NULL;
	global $db;
	$items = [];
	$productMap = [];
	if (isset($_SESSION['cart']) and is_array($_SESSION['cart'])) {
		foreach ($_SESSION['cart'] as $key => $arr) {
			if (!in_array($key, $items)) $items[] = $key;
			$listTopping = array_keys($arr);
			foreach ($listTopping as $ele) {
				$eleList = explode('_', $ele);
				foreach ($eleList as $item) {
					$itemList = explode('-', $item);
					if ($itemList[0] != 0 && !in_array($itemList[0], $items)) $items[] = $itemList[0];
				}
			}
		}
		$str = empty($items) ? 0 : implode(",", $items);
		$db->table = "product";
		$db->condition = "is_active = 1 and product_id IN ($str)";
		$db->order = "created_time DESC";
		$db->limit = "";
		$rows = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows as $row) {
				$productMap[$row['product_id']] = $row;
			}
		}
	}
	return $productMap;
}

function showToppingCart($refData, $id, $list)
{
	$result = [];
	foreach ($list as $key => $value) {
		$old_price = (int)$refData[$id]['price'];
		$discount =  (int)$refData[$id]['discount'];
		$sales =  (int)$refData[$id]['sales'];
		$price = calculatePrice($old_price, $sales, $discount);
		if ($key == 0) {
			$result[] = array(
				'dish_name' => $refData[$id]['name'],
				'topping' => [],
				'price' => $price,
				'old_price' => $old_price,
				'total' => $price * (int)$value,
				'amount' => $value,
				'key' => $key
			);
		} else {
			$eleList = explode('_', $key);
			$toppingNameList = [];
			foreach ($eleList as $ele) {
				$item = explode('-', $ele);
				$toppingNameList[] = $refData[$item[0]]['name'];
				$old_topping_price =  (int)$refData[$item[0]]['price'];
				$old_price += $old_topping_price*(int)$item[1];
				$topping_discount = (int)$refData[$item[0]]['discount'];
				$topping_sales = (int)$refData[$item[0]]['sales'];
				$topping_price = (int)$item[1]*calculatePrice($old_topping_price, $topping_sales, $topping_discount);
				$price += $topping_price*(int)$item[1];
			}

			$result[] = array(
				'dish_name' => $refData[$id]['name'],
				'topping' => $toppingNameList,
				'price' => $price,
				'old_price' => $old_price,
				'total' =>  $price * $value,
				'amount' => $value,
				'key' => $key
			);
		}
	}
	return $result;
}

function showTopping($topping)
{
	$result = '';
	if ($topping) {
		for ($i = 0; $i < count($topping); $i++) {
			$result .= '<span>' . $topping[$i] . ($i < count($topping) - 1 ? '-' : '</span>');
		}
	}
	return $result;
}

function showCartForDesktop()
{
	$response = '';
	$total = 0;
	$total_item = 0;
	$productMap = cartInfo();



	if ($productMap) {
		$response .= '<form id="getUpdateCard">
						<ul style="list-style-type:none;padding:0;">';
		foreach ($_SESSION['cart'] as $key => $arr) {
			$keyList = showToppingCart($productMap, $key, $arr);

			foreach ($keyList as $ele) {
				$total += $ele['total'];
				$total_item += $ele['amount'];
				$response .= '<li class="row nhan_' . $key . '">
								<div class="col-xs-8 p-r-0 productname-price">
									<span>' . $productMap[$key]['name'] . '</span>';

				if ($ele['topping']) {
					$response .= '<br>';
					$response .=  showTopping($ele['topping']);
				}
				$response .= 	'</div>
				<div class="col-xs-4 text-right p-l-0 productname-price text-nowrap">
					<span>' . number_format($ele['total'], '0', ',', '.') . '</span>
				</div>
				<div class="col-xs-12 m-t" style="text-align:center">Qty.</div>
				<div class="number-btnremove">
					<div class="number col-xs-10 p-r-0">
					<input type="number" name="qty[' . $productMap[$key]['product_id'] . ']" min="1" value="' . $ele['amount'] . '" placeholder="" class="spin-edit cart-item-text spinedit noSelect" data-rowid="' . $productMap[$key]['product_id'] . '"  data-key="' . $ele['key'] . '">
					<div class="spinedit spinedit1" data-id="' . $productMap[$key]['product_id'] . '" data-key="' . $ele['key'] . '">
						<i class="fa fa-chevron-up"></i>
						<i class="fa fa-chevron-down"></i>
					</div>
					<span class="productPriceItem" style="position: relative">X ' . number_format($ele['price'], '0', ',', '.') . ' vnđ</span>
					</div>
					<div class="btnremove col-xs-2 text-right p-l-0">
					<a href="#" class="delete-cart-item" data-rowid="' . $productMap[$key]['product_id']  . '" data-key="' . $ele['key'] . '"><i class="fa fa-trash"></i></a>
					</div>
				</div>
				<div class="col-xs-12" style="margin:9px 0;">
					<div class="checkout_line_end"></div>
				</div>
				</li>';
			}
		}
		$response .= '</ul>
			</form>';
		$response .= '<div class="billTotalPrice">
				<div class="boxwidth120" style="width:100px">

					<p class="totalItem" style="text-align:left;">' . ($_SESSION['language'] == 'en' ? 'Total dishes : ' : 'Số loại món : ') . ' <span class="monan monan1">' . count($_SESSION['cart']) . '</span>' . ($_SESSION['language'] == 'en' ? ' dishes' : ' món') . '</p>
					<p class="totalItem" style="text-align:left;">' . ($_SESSION['language'] == 'en' ? 'You have ' : 'Bạn đặt ') . ' <span class="monan monan2">' . $total_item . '</span>' . ($_SESSION['language'] == 'en' ? ' items' : ' phần') . '</p>
				</div>
				<div class="subtotalPriceBox">
					<p>' . ($_SESSION['language'] == 'en' ? 'Total' : 'Tổng cộng') . ' <span class="subtotalPrice">' . number_format($total, '0', ',', '.') . '</span> vnđ</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="btnbillPrice">
				<div class="boxwidth120" style="width:100px">
					<a href="' . HOME_URL . '/payment" class="btnconfirm" style="color:#333; text-align: center;" type="button">' . ($_SESSION['language'] == 'en' ? 'Payment' : 'Thanh toán') . '</a>
				</div>
				<div class="boxwidth90">
					<a href="#" id="empty-ca">' . ($_SESSION['language'] == 'en' ? 'Empty cart' : 'Xóa giỏ hàng') . '</a>
				</div>
				<div class="clearfix"></div>
			</div>';
	} else {
		$response .= '<p>Giỏ hàng rỗng.</p><p>Click <a href="' . HOME_URL . '/delivery"><strong>Add to Cart</strong></a> button on the dish<br> to begin your order</p>';
	}



	return $response;
}

function showCartForMobile()
{
	$response = '';

	// loop thru

	$total = 0;
	$productMap = cartInfo();
	foreach ($_SESSION['cart'] as $key => $arr) {
		$keyList = showToppingCart($productMap, $key, $arr);
		foreach ($keyList as $ele) {
			$total += $ele['total'];
		}
	}

	$response .= '<div class="row hidden-lg-up checkout-summary-header">';

	if ($total != 0) {

		$response .= '<div class="show_cart111">
						<div class="col-xs-6 text-left">' . ($_SESSION['language'] == 'en' ? ' Total' : 'Tổng') . ' </div>
						<div class="col-xs-6 text-right"><span class="nh_total111">' . number_format($total, '0', ',', '.') . '</span> VNĐ.</div>
					</div>';
	}
	$response .= '<div class="col-xs-12">
					<div class="checkout_line_end"></div>
				</div>
			</div>';

	if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
		foreach ($_SESSION['cart'] as $key => $arr) {
			$img_src = $productMap[$key]['img'] != 'no' && $productMap[$key]['img'] != ''  ? HOME_URL . '/uploads/product/lg-' . $productMap[$key]['img'] : HOME_URL . '/images/404.jpg';
			foreach ($keyList as $ele) {
				$response .= '<div class="row m-t" id="nh__' . $key . '">
								<div class="col-xs-3 p-r-0"><img src="' . $img_src . '" alt="" class="img-responsive img-center"></div>
								<div class="col-xs-5" style="padding: 0 2px;font-weight: bold;padding-left: 10px;">' . $productMap[$key]['name'] . '<br>
								<span class="productPrice" style="color:#009966">' . number_format($ele['price'], '0', ',', '.') . ' VNĐ</span>
								<br>
							</div>
							<div class="col-xs-4 p-l-0">
								<a href="#" class="delete-cart-item-mobile" data-rowid="' . $key . '" data-key="' . $ele['key'] . '"></a>
								<select class="cart-item-text-mobile"  data-key="' . $ele['key'] . '" data-rowid="' . $key . '" name="qty[' . $key . ']">';

				for ($io = 1; $io <= 100; $io++) {

					$response .= '<option ' . ($ele['amount'] == $io ? 'selected' : '') . 'value="' . $io . '">' . $io . '</option>';
				}
				$response .= '</select>
							</div>
							<div class="col-xs-12"><div class="checkout_line_end"></div></div>
							</div>';
			}
		}
		$response .= '<a class="btnRedResponsiveMedium  text-center m-t btnOrderMore" href="' . HOME_URL . '/delivery">' . ($_SESSION['language'] == 'en' ? ' Continue' : 'Tiếp tục') . '<img src="/img/responsive/arrow-right.png" class="btn-arrow-right" alt=""></a>
					<a class="btnGreenResponsive text-center m-t"  id="payment-btn-mobile"  href="' . HOME_URL . '/payment">' . ($_SESSION['language'] == 'en' ? ' Payment' : 'Thanh toán') . '<img src="/img/responsive/arrow-right.png" class="btn-arrow-right" alt=""></a>';
	}
	return $response;
}

function renderToppingName($topping)
{
	$response = '';
	if ($topping && is_array($topping)) {
		$toppingNo = count($topping);
		$response .= '<br><span>';
		for ($i = 0; $i < $toppingNo; $i++) {
			$response .= $topping[$i] . ($i < $toppingNo - 1 ? ' - ' : '</span>');
		}
	}
	return $response;
}

function calculatePrice($price, $sales, $discount)
{
	if ($sales > 0) return $sales;
	return (100 - $discount)*$price/100;
}

function checkTopping($id)
{
	global $db;
	$db->table = "product";
	$db->condition = "product_id = " . $id;
	$db->order = "";
	$db->limit = "1";
	$children = $db->select('children');
	if ($children && $children != '0') return true;
	return false;
}
function calculateCart()
{
	$total = 0;
	$total_item = 0;
	if ($_SESSION['cart']) {
		$productMap = cartInfo();
		foreach ($_SESSION['cart'] as $key => $arr) {
			$keyList = showToppingCart($productMap, $key, $arr);

			foreach ($keyList as $ele) {
				$total += $ele['total'];
				$total_item += $ele['amount'];
			}
		}
	}
	return array(
		'total' => $total,
		'total_item' => $total_item
	);
}
function getTotalProductToCategory($id)
{
	global $db;
	$db->table = "product";
	$db->condition = "is_active = 1 AND product_menu_id = " . $id;
	$db->order = "";
	$db->limit = "";
	$rs = $db->select('product_id');
	return is_array($rs) ? count($rs) : 0;
}

function showMobileCart2()
{
	$response = '';
	$total = 0;
	$total_item = 0;
	$productMap = cartInfo();
	foreach ($_SESSION['cart'] as $key => $arr) {
		$keyList = showToppingCart($productMap, $key, $arr);
		foreach ($keyList as $ele) {
			$total += $ele['total'];
			$total_item += $ele['amount'];
		}
	}

	if ($total != 0) {

		$response .= '<div class="d-m-create container">
						<div class="row-mod align-items-center">
						<div class="col-auto"></div>
						<div class="col text-center"><strong>' . $total_item . '</strong>&nbsp;<span class="text-secondary">items</span>-&nbsp;<strong>' . formatNumberVN($total) . ' VNĐ</strong></div>
						</div>
					</div>
					<div class="d-m-list container">';
		foreach ($_SESSION['cart'] as $key => $arr) {
			$keyList = showToppingCart($productMap, $key, $arr);
			foreach ($keyList as $ele) {
				$note = $_SESSION['note'] && $_SESSION['note'][$key] && $_SESSION['note'][$key][$ele['key']] ? $_SESSION['note'][$key][$ele['key']]: 'Ghi chú món..';
				$response .= '<div class="d-menu-item row-mod no-gutters false">
								<div class="col">
									<div class="menu-item-content"><span class="menu-item-name">' . $productMap[$key]['name'] . '</span>';
				if (count($ele['topping'])) {
					$topp = ' [ ';
					for ($i = 0; $i < count($ele['topping']); $i++) {
						$topp .= $ele['topping'][$i] . ', ';
					}
					$topp = rtrim($topp, ", ");
					$topp .= ' ] ';
					$response .= $topp;
				}
				$response .= '<div class="menu-item-price">' . formatNumberVN($ele['price']) . '</div><span class="item-note" data-id="'.$key.'" data-key="'.$ele['key'].'">'.$note .'</span></div>
								</div>
									<div class="col-auto align-self-center">
										<div class="menu-item-number">
											<div class="row-mod no-gutters justify-content-end align-items-center">
												<input type="hidden" data-id="'.$key.'" name="cart-key" value="'.$ele['key'].'" >
												<div class="col-auto text-center"><span class="menu-item-minus"><img class="svg-inline" src="/images/cart-minus.svg"></span></div>
												<div class="col"><span class="form-control form-control-sm text-center item-amount">' . $ele['amount'] . '</span></div>
												<div class="col-auto text-center "><span class="menu-item-add"><img class="svg-inline" src="/images/cart-plus.svg"></span></div>
											</div>
										</div>
									</div>
								</div>';
			}
		}

		$response .= '</div>';
	}

	return $response;
}

function showMobileCart4()
{
	$response = '';
	$total = 0;
	$total_item = 0;
	$productMap = cartInfo();
	foreach ($_SESSION['cart'] as $key => $arr) {
		$keyList = showToppingCart($productMap, $key, $arr);
		foreach ($keyList as $ele) {
			$total += $ele['total'];
			$total_item += $ele['amount'];
		}
	}

	if ($total != 0) {

		$response .= '<div class="d-m-create container">
						<div class="row-mod align-items-center">
						<div class="col-auto"></div>
						<div class="col text-center"><strong id="payment_total_item">' . $total_item . '</strong>&nbsp;<span class="text-secondary">items</span>-&nbsp;<strong id="payment_total_checkout">' . formatNumberVN($total) . ' VNĐ</strong></div>
						</div>
					</div>
					<div class="d-m-list container">';
		foreach ($_SESSION['cart'] as $key => $arr) {
			$keyList = showToppingCart($productMap, $key, $arr);
			foreach ($keyList as $ele) {
				$note = $_SESSION['note'] && $_SESSION['note'][$key] && $_SESSION['note'][$key][$ele['key']] ? $_SESSION['note'][$key][$ele['key']]: 'Ghi chú món..';
				$response .= '<div class="d-menu-item row-mod no-gutters payment-item-root false">
								<div class="col">
									<div class="menu-item-content"><span class="menu-item-name">' . $productMap[$key]['name'] . '</span>';
				if (count($ele['topping'])) {
					$topp = ' [ ';
					for ($i = 0; $i < count($ele['topping']); $i++) {
						$topp .= $ele['topping'][$i] . ', ';
					}
					$topp = rtrim($topp, ", ");
					$topp .= ' ] ';
					$response .= $topp;
				}
				$response .= '<div class="payment-cont menu-item-price">' . formatNumberVN($ele['price']) . 'đ</div><span class="item-note" data-id="'.$key.'" data-key="'.$ele['key'].'">'.$note .'</span></div>
								</div>
									<div class="col-auto align-self-center">
										<div class="menu-item-number">
											<div class="row-mod no-gutters justify-content-end align-items-center">
												<input type="hidden" data-id="'.$key.'" name="cart-key" value="'.$ele['key'].'" >
												<div class="col-auto text-center"><span class="menu-item-minus"><img class="svg-inline" src="/images/cart-minus.svg"></span></div>
												<div class="col"><span class="form-control form-control-sm text-center item-amount">' . $ele['amount'] . '</span></div>
												<div class="col-auto text-center "><span class="menu-item-add"><img class="svg-inline" src="/images/cart-plus.svg"></span></div>
											</div>
										</div>
									</div>
								</div>';
			}
		}

		$response .= '</div>';
	}

	return $response;
}
function showMobileCart3()
{
	$res = array();
	$response = '';
	$total = 0;
	$total_item = 0;
	$productMap = cartInfo();
	foreach ($_SESSION['cart'] as $key => $arr) {
		$keyList = showToppingCart($productMap, $key, $arr);
		foreach ($keyList as $ele) {
			$total += $ele['total'];
			$total_item += $ele['amount'];
		}
	}

	if ($total != 0) {

		
		foreach ($_SESSION['cart'] as $key => $arr) {
			$keyList = showToppingCart($productMap, $key, $arr);
			foreach ($keyList as $ele) {
				$note = $_SESSION['note'] && $_SESSION['note'][$key] && $_SESSION['note'][$key][$ele['key']] ? $_SESSION['note'][$key][$ele['key']]: 'Note..';
				if (count($ele['topping'])) {
					$topp = ' [ ';
					for ($i = 0; $i < count($ele['topping']); $i++) {
						$topp .= $ele['topping'][$i] . ', ';
					}
					$topp = rtrim($topp, ", ");
					$topp .= ' ] ';
				
				}
				$response .= '<div class="o-menu-item"><span class="o-menu-number">'.$ele['amount'].'</span>
									<div class="o-menu-name text-truncate">'.$productMap[$key]['name'].'&nbsp;<span class="menu-item-note">'.$topp.'</span></div><span class="o-menu-price">'.formatNumberVN($ele['price']).'đ</span>
								</div>';
			}
		}

		
	}
	$res['html'] = $response;
	$res['total'] = $total;
	$res['total_item'] = $total_item;
	return $res;
}

function showCity() {
	$city = !empty($_COOKIE['city'])? $_COOKIE['city']: 'DN';
	return $city == 'DN' ? 'Đà Nẵng': 'Huế';
}

function listCity() {
	$selectedCity = !empty($_COOKIE['city'])? $_COOKIE['city']: 'DN';
	$res = '<ul>
				<li data-id="DN" class="location_select '.($selectedCity == 'DN' ? 'selected': '').'">Đà Nẵng</li>
				<li data-id="HUE" class="location_select  '.($selectedCity != 'DN' ? 'selected': '').'">Huế</li>
			</ul>';
	return $res;
}