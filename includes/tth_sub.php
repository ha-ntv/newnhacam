<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<!-- .sub-bottom -->
<section class="sub-bottom sub-page">
    <div class="box-wp">
        <?php
        $db->table = "category";
        $db->condition = "`is_active` = 1 AND `menu_main` = 1";
        $db->order = "`sort` ASC";
        $db->limit = "";
        $rows = $db->select();
        if($db->RowCount>0) {
            echo '<nav class="navbar-bottom"><ul>';
            $active = '';
            if(in_array($slug_cat, array('home'))) $active = ' class="active"';
            echo '<li' . $active . '><a href="' . HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">' . $lgTxt_menu_home . '</a></li>';
            foreach($rows as $row) {
                $active = '';
                if ($id_category == intval($row['category_id'])) $active = ' class="active"';
                echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></li>';
            }
            $active = '';
            if($id_menu==444) $active = ' class="active"';
            echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . $lgTxt_slug_contact . '" title="' . $lgTxt_menu_contact . '">' . $lgTxt_menu_contact . '</a></li>';
            echo '</ul></div>';
        }
        ?>
    </div>
</section>
<!-- / .sub-bottom -->
