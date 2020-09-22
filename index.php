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
$isMobile = preg_match("/(android|webos|avantgo|iphone|ipad|ipod|blackberry|iemobile|bolt|boost|cricket|docomo|fone|hiptop|mini|opera mini|kitkat|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
// if($isMobile):
?>	
<script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfPZhOobyQI9SCUhFCAxO7FaSBWIKTrRQ&amp;sensor=false&amp;libraries=places&amp;language=vi&amp;region=VN&amp;callback=initialize"></script>
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
<script type="text/javascript">
	var geocoder;
	// check localstorage whether city info has been stored
	function initialize() {
		geocoder = new google.maps.Geocoder();
	}
	var city = localStorage.getItem('nhacam_city');
	if(city) {
		//open geolocation api notification and check city

	} else {
		
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
		}
		function successFunction(position) {
			var lat = position.coords.latitude;
			var lng = position.coords.longitude;
			codeLatLng(lat, lng)
		}

		function errorFunction(){
			console.log("Geocoder failed");
		}

		
		function codeLatLng(lat, lng) {
			var latlng = new google.maps.LatLng(lat, lng);
			console.log(latlng);
			geocoder.geocode({'latLng': latlng}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				console.log(results)
				if (results[1]) {
				
					//find country name
						for (var i=0; i<results[0].address_components.length; i++) {
						for (var b=0;b<results[0].address_components[i].types.length;b++) {

						//there are different types that might hold a city admin_area_lvl_1 usually does in come cases looking for sublocality type will be more appropriate
							if (results[0].address_components[i].types[b] == "administrative_area_level_1") {
								//this is the object you are looking for
								city= results[0].address_components[i];
								break;
							}
						}
					}
					//city data
					var yourCity = city.long_name
					yourCity = yourCity == 'Đà Nẵng' ? 'DN': 'HUE';
					localStorage.setItem('nhacam_city', yourCity);
				
					$.ajax({
						url:'/action.php',
						type: 'POST',
						data: 'url=set_city&city='+yourCity,
						dataType: "html",
						success: function(data){
							closeLoader();
							setTimeout(() => {
								window.location.reload();
							}, 1000);
						}
					})
				} else {
					console.log("No results found");
				}
			} else {
				console.log("Geocoder failed due to: " + status);
			}
		});
	} 
	}
</script>
<?php // else : ?>
<style>
/*.development {
	font-size: 20px;
	margin: 0;
	padding: 30px 0;
	text-align: center;
	color: #753b16;
	line-height: 1.5;
}
.dev {
	margin: 0;
	padding: 0;
	text-align: center;
}
.dev img {
	max-width: 100%;
	height: 75vh;
} */
</style>
<!--
<h2 class="development">
	Hiện tại Nhà Cám đang xây dựng trên nền tảng máy tính. <br>
	 Mời bạn truy cập thiết bị di động để đặt món.
	<br>
	Xin cám ơn!
</h2>
<p class="dev">
	<img src="/images/logo.png" title="Nhà Cám" alt="Nhà Cám">
</p> -->
<?php // endif;?>
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

	 

