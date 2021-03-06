<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$date = new DateClass();
$stringObj = new String();

//---------------[ box-wp BEGIN ]---------------------------
$breadcrumb = '';
if($id_menu > 0) {
    $parent = $id_menu;
    while($parent>0) {
        $db->table = "article_menu";
        $db->condition = "`article_menu_id` = $parent";
        $db->order = "";
        $db->limit = 1;
        $rows = $db->select();
        if($db->RowCount>0) {
            foreach ($rows as $row) {
                $parent = intval($row['parent']);
                $breadcrumb = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>' . $breadcrumb;
            }
        } else $parent = 0;
    }
}
$db->table = "category";
$db->condition = "`is_active` = 1 AND `category_id` = $id_category";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach ($rows as $row) {
    $breadcrumb = '<a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>' . $breadcrumb;
}
$breadcrumb = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">' . $lgTxt_menu_home . '</a>' . $breadcrumb;

echo '<section class="breadcrumb"><div class="box-wp">' . $breadcrumb . '</div></section>';
echo '<section class="main">';
//-- SEARCH
$query_filter = $slug_filter = '';
if(isset($_GET['filter'])) {
    $slug_filter .= "?filter=realty";
    if(isset($_GET['keywords'])) {
        $f_keywords = trim($_GET['keywords']);
        $query_filter .= " AND CONCAT_WS(`name`, `slug`, `img`, `img_note`, `address`, `tags`, `tags_2`, `comment`, `content`) LIKE '%" . $f_keywords . "%'";
        $slug_filter .= "&keywords=" . $f_keywords;
    }
}
//-------------------------------------------------------------------------------
if ($id_article > 0){
    $id = $id_article;
    include(_F_TEMPLATES . DS . "show_project.php");
} else if($id_menu==0) {
    $list = getListIdMenuChild('article_menu', $id_category, 0);
    $db->table = "article";
    $db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)" . $query_filter;
    $db->order = "`hot` DESC, `created_time` DESC";
    $db->limit = "";
    $rows = $db->select();
    $total = $db->RowCount;
    if($total>1) {
        $total_pages = 0;
        $per_page = 10;
        if($total%$per_page==0) $total_pages = $total/$per_page;
        else $total_pages = floor($total/$per_page)+1;
        if($page<=0) $page=1;
        $start=($page-1)*$per_page;

        $db->table = "article";
        $db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)" . $query_filter;
        $db->order = "`hot` DESC, `created_time` DESC";
        $db->limit = $start.','.$per_page;
        $rows = $db->select();
        $i = 0;
        echo '<div class="box-wp">';
        echo '<div class="content"><div class="list-project clearfix">';
        foreach($rows as $row) {
            include(_F_TEMPLATES . DS . "show_list_project.php");
            $i++;
        }
        echo '</div>';
        showPageNavigation($page, $total_pages, HOME_URL_LANG . '/' . $slug_cat . '/page/', '/' . $slug_filter);
        echo '</div>';
        include(_F_INCLUDES . DS . "tth_right1.php");
        echo '</div>';
    }
    else if ($total==1) {
        $id = 0;
        foreach($rows as $row) {
            $id = intval($row['article_id']);
        }
        include(_F_TEMPLATES . DS . "show_project.php");
    }
    else echo '<div class="wrap updating"><h3>' . $lgTxt_update . '</h3></div>';
} else {
    $slug_submenu = getSlugMenu($id_menu, 'article');
    $list = getListIdMenuChild('article_menu', $id_category, $id_menu);

    $db->table = "article";
    $db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)" . $query_filter;
    $db->order = "`hot` DESC, `created_time` DESC";
    $db->limit = "";
    $rows = $db->select();
    $total = $db->RowCount;
    if($total>1) {
        $total_pages = 0;
        $per_page = 10;
        if($total%$per_page==0) $total_pages=$total/$per_page;
        else $total_pages = floor($total/$per_page)+1;
        if($page<=0) $page=1;
        $start=($page-1)*$per_page;

        $db->table = "article";
        $db->condition = "`is_active` = 1 AND `article_menu_id` IN ($list)" . $query_filter;
        $db->order = "`hot` DESC, `created_time` DESC";
        $db->limit = $start.','.$per_page;
        $rows = $db->select();

        $i = 0;
        echo '<div class="box-wp">';
        echo '<div class="content"><div class="list-project clearfix">';
        foreach($rows as $row) {
            include(_F_TEMPLATES . DS . "show_list_project.php");
            $i++;
        }
        echo '</div>';
        showPageNavigation($page, $total_pages,  HOME_URL_LANG . '/' . $slug_submenu . '/page/', '/' . $slug_filter);
        echo '</div>';
        include(_F_INCLUDES . DS . "tth_right1.php");
        echo '</div>';
    }
    else if ($total==1) {
        $id = 0;
        foreach($rows as $row) {
            $id = intval($row['article_id']);
        }
        include(_F_TEMPLATES . DS . "show_project.php");
    }
    else echo '<div class="wrap updating"><h3>' . $lgTxt_update . '</h3></div>';
}
echo '</section>';
