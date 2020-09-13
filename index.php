<?php
error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
ini_set('error_log','./hantv88.log');

@ob_start();
@session_start();
// System
define( 'TTH_SYSTEM', true );

$url = isset($_GET['url']) ? $_GET['url'] : 'delivery';
$path = array();
$path = explode('/',$url);
if($path[0]=='en') {
	$_SESSION["language"] = 'en';
         if( $path[1]== '') $path[1] = 'delivery';
} elseif($path[0]=='vi') {
       if( $path[1]== '') $path[1] = 'delivery';
	$_SESSION["language"] = 'vi';
} else { 
         if(!isset($_SESSION["language"]) || $_SESSION["language"] == "" )
	$_SESSION["language"] = 'vi';
	array_unshift($path, 'vi');
}
//----------------------------------------------------------------------------------------------------------------------
require_once(str_replace( DIRECTORY_SEPARATOR, '/', dirname( __file__ ) ) . '/define.php');

require_once(ROOT_DIR . DS ."lang" . DS . TTH_LANGUAGE . ".lang");
if($_SESSION["language"] == 'vi') include_once(_F_FUNCTIONS . DS . "Function.php");
else include_once(_F_FUNCTIONS . DS . "Function1.php");
try {
	$db =  new ActiveRecord(TTH_DB_HOST, TTH_DB_USER, TTH_DB_PASS, TTH_DB_NAME);
}
catch(DatabaseConnException $e) {
	echo $e->getMessage();
}
$account["id"] = empty($_SESSION["user_id"]) ? 0 : $_SESSION["user_id"]+0;
include_once(_F_INCLUDES . DS . "_tth_constants.php");
include_once(_F_INCLUDES . DS . "_tth_url.php");
// include_once(_F_INCLUDES . DS . "_tth_online_daily.php");
?>
<!DOCTYPE html>
<html lang="<?php echo TTH_LANGUAGE;?>">
<head>
<?php
include(_F_INCLUDES . DS . "_tth_head.php");
include(_F_INCLUDES . DS . "_tth_script.php");
echo getConstant('google_analytics');
?>

</head>
<body>

<?php
echo getConstant('script_body');
?>
<!-- #wrapper -->
<?php
$class = '';

if($slug_cat=='home') $class = ' class="home-page"';
	echo '<div id="healthydelivery">';
	include(_F_INCLUDES . DS . "tth_header.php");
	echo '<section class="yield-content">';
	echo '<div class="boxpage boxpagenew">';
	include(_F_INCLUDES . DS . "tth_slider.php");
	include(_F_MODULES . DS .  str_replace('-','_',$slug_cat) . ".php");
	include(_F_INCLUDES . DS . "tth_footer.php");
	include(_F_INCLUDES . DS . "tth_login.php");
	echo '</div>';
	echo '</section>';
	echo '</div>';
?>
<!-- / #wrapper -->
<a href="javascript:void(0)" title="Lên đầu trang" id="go-top" style="bottom: 100px;"><i class="fa fa-angle-up"></i></a>
<div id="_loading"></div>
</body>

</html>
<?php if($_SESSION["language"] == 'vi'){ ?>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&amp;subset=vietnamese" rel="stylesheet">
<style type="text/css">
	body,body *{
		font-family: 'Roboto', sans-serif !important;
	}
</style>
<?php } ?>

	 

