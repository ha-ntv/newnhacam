<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//-------------
?>
<!-- .header -->
<header class="header">
    <a id="hamburger" href="#menu"><span></span></a>
    <div class="box-wp">
        <div class="header-left">
            <div class="logo">
                <a href="<?php echo HOME_URL_LANG;?>" title="<?php echo getConstant('title');?>"><img src="<?php echo HOME_URL . getConstant('file_logo');?>" alt="<?php echo getConstant('meta_site_name');?>"></a>
            </div>
        </div>
        <div class="header-right">
            <?php
            include(_F_INCLUDES . DS . "tth_menu_main.php");
            ?>
        </div>
    </div>
</header>
<!-- / .header -->
