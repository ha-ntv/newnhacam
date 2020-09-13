<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
$_SESSION['popup'] = 'OK';
?>
<style>
.popup {
	display: inline-block;
	max-width: 90%;
	margin: 0;
	line-height: 0;
}
.popup a.close {
	position: absolute;
	display: block;
	right: -20px;
	top: -20px;
	line-height: 0;
}
.popup-content {
	max-width: 800px;
	max-height: 580px;
}
.popup img {
    max-width: 100%;
    max-height: 100%;
	width: auto !important;
	height: auto !important;
}
</style>
<div id="_popup" class="popup">
	<a href="" class="close bClose">
    	<img src="/popup/btn_close.png" alt="Close"/>
    </a>
	<div class="popup-content"><?php echo getPage('popup');?></div>
</div>
<script type="text/javascript" src="/popup/jquery.bpopup.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#_popup').bPopup();
});
</script>