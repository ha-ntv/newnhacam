<?php $client_id = '773950546454-cmhi9crk457oh1gvmdfo9474h77ubk25.apps.googleusercontent.com'; 
$client_secret = 'B21ae_atOFGoErwM62PjPkSR';
$redirect_uri = HOME_URL;
require_once _F_INCLUDES.'/vendor/autoload.php';
$client = new Google_Client();
$client->setClientId($client_id);
$client->setClientSecret($client_secret);
$client->setRedirectUri($redirect_uri);
$client->addScope("email");
$client->addScope("profile");
$service = new Google_Service_Oauth2($client);
if (isset($_REQUEST['logout'])) 
{
  unset($_SESSION['access_token']);
  $client->revokeToken();
  header('Location: ' . filter_var($redirect_uri, FILTER_SANITIZE_URL)); //redirect user back to page
}
if (isset($_SESSION['access_token']) && $_SESSION['access_token']) {
    $client->setAccessToken($_SESSION['access_token']);
} else { 
    $authUrl = $client->createAuthUrl();
}


if (isset($_GET['code'])) {
    $client->authenticate($_GET['code']);
    $_SESSION['access_token'] = $client->getAccessToken();
    $user = $service->userinfo->get(); 

    $db->table  = "core_user";
    $db->condition = "`user_name` like '".$user->id."'";
    $riws = $db->select();
    if(count($riws) > 0)
    {
      $userID = $riws[0]['user_id']+0;
    }
    else 
    { 
        $db->table = "core_user";
        $data = array(
            'role_id'  => 13,
            'user_name'=> $user->id,
            'full_name'=> $db->clearText(trim($user->name)),
            'email'    => $db->clearText(trim($user->email)),
            'address'  => $db->clearText(trim($user->link)),
            'img'      => $db->clearText(trim($user->picture)),
            'is_active'=> 1,
            'created_time'=> time(),
        );
        $db->insert($data);
        $userID = $db->LastInsertID;
    }
    $_SESSION['user_id'] = $userID;
	      header('Location: '.$redirect_uri);
          exit;
}
    if (isset($authUrl)){ 
    ?>
    <script type="text/javascript">
        $('#link_loginG').html('<a href="<?php echo $authUrl ?>" style="color:#fff"> <span> <i class="fa fa-google-plus" aria-hidden="true"></i></span>  Tiếp tục với Google</a>')
         $('#link_loginG1').html('<a href="<?php echo $authUrl ?>" style="color:#fff"> <span> <i class="fa fa-google-plus" aria-hidden="true"></i></span>  Tiếp tục với Google</a>')
    </script>
    <?php
} else{
  // $user1 = $service->userinfo->get();
}


 ?>