<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$txt_phone = '';
$phone = array();
$phone = explode(';', getConstant('tell_contact'));
if(count($phone)>0) {
    for($i=0; $i < count($phone); $i++) {
        $txt_phone .= '<li class="phone"><a href="tel:' . str_replace(' ', '', $phone[$i]) . '" ><i class="fa fa-phone fa-fw"></i> ' . $phone[$i] . '</a></li>';
    }
}
?>
<nav id="menu">
	<ul>
		<?php
        $active = '';
        if ($slug_cat == 'home') $active = ' class="mm-selected"';
        echo '<li' . $active . '><a href="' . HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">' . $lgTxt_menu_home . '</a></li>';

        $db->table = "category";
        $db->condition = "`is_active` = 1 AND `menu_main` = 1";
        $db->order = "`sort_hide` ASC";
        $db->limit = "";
        $rows = $db->select();
        foreach ($rows as $row) {
            $active = '';
            if ($slug_cat == $row['slug']) $active = ' class="mm-selected"';
            echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . stripslashes($row['slug']) . '" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a>' . loadMenuChild($row['type_id'], $row['category_id'], 0, $slug_cat, $id_menu, 'mm-selected') . '</li>';
        }

        $active = '';
        if ($slug_cat == $lgTxt_slug_contact) $active = ' class="mm-selected"';
        echo '<li' . $active . '><a href="' . HOME_URL_LANG . '/' . $lgTxt_slug_contact . '" title="' . $lgTxt_menu_contact . '">' . $lgTxt_menu_contact . '</span></li>';
        echo $txt_phone;
		?>
	</ul>
</nav>