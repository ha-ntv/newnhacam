<?php
	session_start();
	ob_start();
	?>
	
<div id="root"></div>
	<script type="text/javascript">

	window.fbAsyncInit = function() {
    FB.init({
      appId      : '244379029794951',
      cookie     : true,
      xfbml      : true,
      xfbml      : true, 
      
    });
    FB.AppEvents.logPageView();  
      FB.getLoginStatus(function (response) {
          statusChangeCallback(response);
      });
     	FB.logout();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/vi_VN/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
	</script>
	<?php
	if(isset($_SESSION["partner"])){
		unset($_SESSION["partner"]);
	}
	session_destroy();
	unset($_COOKIE['c_user']);
	unset($_COOKIE['act']);
	header("LOCATION: /");
	exit();
	ob_end_flush();
?>
