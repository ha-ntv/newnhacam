<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$slug_cat = empty($path[1]) ? 'home' : $path[1];
$TTH_form_share = false;
$id_category = $id_menu = $id_article = 0;
$page =  0;
//- Page
if(isset($path[2]) && $path[2]=='page' && isset($path[3])) $page = intval($path[3]);
//---
$db->table = "link";
$db->condition = "`link` LIKE '". $db->clearText($slug_cat) . "'";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
if($db->RowCount>0) {
    foreach($rows as $row) {
        $id_category = intval($row['category']);
        $id_menu = intval($row['menu']);
        $id_article = intval($row['post']);
        if($id_category>0) $slug_cat = getSlugCategory($row['category']);
    }
}
//---
if($slug_cat=='olala') {
    exit(header('Location: ' . HOME_URL . ADMIN_DIR));
} elseif(!file_exists(_F_MODULES . DS .  str_replace('-','_',$slug_cat) . ".php")) {
    $slug_cat = '-error-404';
    $id_category = $id_menu = $id_article = 0;
}
