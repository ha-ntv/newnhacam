<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

?>
<li>
	<a href="<?php echo HOME_URL_LANG . '/' . stripslashes($row2['slug']);?>" title="<?php echo stripslashes($row2['name']); ?>" ><?php echo stripslashes($row2['name']); ?><?php if($id_category!=94) echo '&nbsp; <span class="time">- '. convertTime5DayAgo($row['created_time'], $lgTxt_date_post, $lgTxt_date_post2) . '</span>'; ?></a>
</li>