<div class="container">
	<div class="" style="min-height: 300px; margin: 20px auto; padding: 10px; background: #fff">
		<div class="home" style="text-align: center; margin-top: 20px; margin-bottom: 20px;">
			<img style="max-width: 100%;" src="/images/logo.png">
		</div>
		<div class="content" id="order_after_all">
			<?php echo getPage('thanksyou') ?>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		var order_content = localStorage.getItem('order_info') ? JSON.parse(localStorage.getItem('order_info')) : '';
		if(order_content) $('#order_after_all').html(order_content)
	})
</script>