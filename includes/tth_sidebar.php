<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<!-- .sidebar -->
<div class="sidebar">
    <div class="navbar-header">
        <a href="javascript:;" id="trigger" class="menu-trigger" rel="close">&nbsp;</a>
        <a href="<?php echo HOME_URL_LANG;?>" title="<?php echo $lgTxt_menu_home;?>" class="t-home">S HOME</a>
    </div>
    <?php
    $db->table = "category";
    $db->condition = "`is_active` = 1 AND `menu_main` = 1";
    $db->order = "`sort` ASC";
    $db->limit = "";
    $rows = $db->select();
    if($db->RowCount>0) {
        echo '<div id="navbar-collapse-m" class="navbar-collapse"><ul>';
        foreach($rows as $row) {
            $active = '';
            if ($id_category == intval($row['category_id'])) $active = ' class="active"';
            echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></li>';
        }
        $active = '';
        if(in_array($slug_cat, array('lien-he', 'contact'))) $active = ' class="active"';
        echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . $lgTxt_slug_contact . '" title="' . $lgTxt_menu_contact . '">' . $lgTxt_menu_contact . '</a></li>';
        echo '</ul></div>';
    }
    $db->table = "article_menu";
    $db->condition = "`is_active` = 1 AND `category_id` = $id_category";
    $db->order = "`sort` ASC";
    $db->limit = "";
    $rows = $db->select();
    if($db->RowCount>0) {
        echo '<ul class="navbar-sub">';
        foreach ($rows as $row) {
            $active = '';
            if ($id_menu == intval($row['article_menu_id'])) $active = ' class="active"';
            echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></li>';
        }
        echo '</ul>';
    }
    ?>
</div>
<!-- / .sidebar -->
