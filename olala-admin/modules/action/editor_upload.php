<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//---
if(empty($_FILES['file'])) {
	exit();
}
$stringObj      = new String();
$date           = new DateClass();
$file_max_size  = FILE_MAX_SIZE;
$dir_dest       = ROOT_DIR . DS . 'uploads' . DS . 'images' . DS;
$s_folder       = $date->vnOther(time(), 'Y') . DS . $date->vnOther(time(), 'm') . DS;
$name_image     = substr(pathinfo($_FILES['file']['name'], PATHINFO_FILENAME), 0, 100) . '-' . time();
$errorImgFile   = '/images/error.jpg';

$imgUp = new Upload($_FILES['file']);
$imgUp->file_max_size = $file_max_size;
if($imgUp->uploaded) {
	$imgUp->file_new_name_body = $name_image;
	$imgUp->Process($dir_dest . $s_folder);
	$images = $imgUp->file_dst_name;
	$imgUp->Clean();
    echo '/uploads/images/' . str_replace(DS, '/', $s_folder) . $images;
} else {
	echo $errorImgFile;
}