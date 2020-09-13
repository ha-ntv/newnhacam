<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
echo '<div class="container">';
// $breadcrumb = '<a href="'. HOME_URL_LANG . '" title="' . $lgTxt_menu_home . '">' . $lgTxt_menu_home . '</a>';
// $breadcrumb .= '<a class="error" href="' . HOME_URL_LANG . '" title="' . $lgTxt_error_page . '">' . $lgTxt_error_page . '</a>';
// echo '<section class="breadcrumb"><div class="box-wp">' . $breadcrumb . '</div></section>';
?>
<section class="main" style="margin-top: 50px; margin-bottom: 50px;">
    <div class="box-wp error404" style="text-align: center;">
        <h3 style="font-size:18px;"><?php echo $lgTxt_page404;?> <a href="<?php echo HOME_URL_LANG;?>"><?php echo $lgTxt_page404_click;?></a> <?php echo $lgTxt_page404_back;?> <a href="<?php echo HOME_URL_LANG;?>" title="<?php echo $lgTxt_menu_home;?>"><?php echo $lgTxt_menu_home;?></a>.</h3>
        <p style="font-size: 50px;color: #753b16 "><i class="fa fa-warning color-red"></i></p>
    </div>
</section>
