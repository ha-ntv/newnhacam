<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
$key = isset($_REQUEST['key']) ? $_REQUEST['key'] : '';
if($key != '') {
    $db->table = "product";
    $db->condition = "`is_active` = 1 and `name` like '%" . $key . "%'";
    $db->limit = "";
    $db->order = "";
    $rws = $db->select();
    if(count($rws) > 0) {
        echo '<ul class="nhan" id="search-dropdown-ig">';
        $i = 0;
        foreach($rws as  $rw) {
            $i++;
            echo '<li><a href="' . $rw['slug'] . '"><img src="/uploads/product/'.$rw["img"].'"> <h4> ' . $rw['name'] . '</h4></a></li>';
        }
        echo '</ul>';
    }
}