<?php
	unset($_SESSION['user_id']);
	$id 		= isset($_POST['id']) ? $_POST['id'] : 0;
	$name 		= isset($_POST['name']) ? $_POST['name'] : '';
	$img    	= isset($_POST['img']) ? $_POST['img'] : ''; 
        $email    	= isset($_POST['email']) ? $_POST['email'] : ''; 
       
	if(!isset($_SESSION['partner'])){
		$db->table  = "core_user";
	    $db->condition = "user_name = '".$id."'";
	    $rows = $db->select();
	    $user_count = $db->RowCount;
	    if($user_count > 0)
	    {   
                
	    	$_SESSION['user_id'] = $rows[0]['user_id'];
	    }else 
	    { 
	        $db->table = "core_user";
	        $data = array(
	            'role_id'  => 9,
	            'user_name'=> $id,
	            'full_name'=> $db->clearText(trim($name)),
                    'email'    => $email,
	            'img'      => $db->clearText(trim($img)),
	            'is_active'=> 1,
	            'created_time'=> time(),
	        );
	        $db->insert($data);
                $_SESSION['user_id'] = $db->LastInsertID;
	    }
	   
	    ?>
	    <script type="text/javascript">
	    	window.location.href="/"
	    </script>
	    <?php 
	 }
?>