<div class="container">
	<div class="row hidden-md-down">
		<div class="col-xs-12">
			<div class="breadcrumbList">
				<ul class="breadcrumb">
					<li><a href="/"><?=$_SESSION['language'] == 'en'? 'Home':'Trang chủ'?></a></li>
					<li class="active"><?php echo $booking ?></li>
				</ul>
			</div>
			
		</div>
	</div>
	<div class="row">
    <div class="col-xs-12">
      <div class="registerBox">
        <div id="step1Account" class="step-pane step1Account" style="display: block;">
          <div class="line1 hidden-md-down"></div>
          <div class="registerDetailBox">
            <div class="textHeaderStep text-center" style="margin-bottom: 20px;">
              <!-- <h3><span class="fontgreen"></span> <span class="fontred">BOOKING ONLINE</span></h3> -->
              <p><?php echo getPage('booking','comment') ?><br></p>
            </div>
            <div class="formCustomerStep">

              <form class="form-horizontal" id="frm_order" onsubmit=" return sendMail('send_order1','frm_order')">

                <div class="form-group row">
                  <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="UserName"><?php echo $username ?> <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                  <div class="col-xs-12 col-sm-4">
                    <input type="name" id="UserName" class="form-control" placeholder="<?php echo $username ?> *" name="name">
                  </div>
                  <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Address"><?php echo $address ?> <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                  <div class="col-xs-12 col-sm-4">
                    <input type="text" id="Address" class="form-control" placeholder="<?php echo $address ?> *" name="address">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Email"><?php echo $email ?> <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                  <div class="col-xs-12 col-sm-4">
                    <input type="text" id="Email" class="form-control" placeholder="<?php  echo $email ?> *" name="email">
                  </div>
                  <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Phone"><?php echo $phone ?> <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                  <div class="col-xs-12 col-sm-4">
                    <input type="text" id="Phone" class="form-control" placeholder="<?php echo $phone ?> *" name="tel">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Time Go"><?php echo $timego ?> <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                  <div class="col-xs-12 col-sm-4">
                    <input type="text" id="TimeGo" maxlength="10" class="form-control" placeholder="<?php echo $timego ?> *" name="time" autocomplete="off">
                  </div>
                  <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="amount"><?php echo $amount ?> <span class="fontred">*</span> <span class="semicolonBox">:</span></label>
                  <div class="col-xs-12 col-sm-4">
                    <input type="number" id="amount" class="form-control" placeholder="<?php echo $amount ?>" name="amount">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="form-control-label hidden-xs-down col-xs-2 p-r-0" for="Comment"><?php echo $comment ?> <span class="semicolonBox">:</span></label>
                  <div class="col-xs-12 col-sm-10">
                    <textarea name="comment"  cols="60" rows="5" class="form-control" name="comment"></textarea>
                  </div>
                </div>  

                <div class="form-group row">
                  <div class="col-xs-12 col-sm-12 text-center">
                    <button  type="submit" class="btnRedResponsiveMedium" id="_send" name="nhan"><?php echo $txtContact_button_s ?> </button>
                  </div>
                </div>

              </form>

            </div>
          </div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <link rel="stylesheet" type="text/css" href="/js/jquery.calendar/jquery.datetimepicker.css">
  <script type="text/javascript" src="/js/jquery.calendar/jquery.datetimepicker.js"></script>
  <script type="text/javascript">
  $('#TimeGo').datetimepicker({
      format:'d/m/Y H:i',
      lang:'vi',
      // timepicker:false,
      onShow:function( ct ){
        this.setOptions({
          minDate:false,
          maxDate: false,
          format:'d/m/Y H:i',
          formatDate:'d/m/Y H:i'
        })
      }
    });
</script>
<script type="text/javascript">
  function form_check_feedback(){
    var inputs = document.getElementById('frm_order');
  var err_field = '<?=$txtEnter_field?>';
  var err_email = '<?=$txtEnter_email?>';
  var err_phone = '<?=$txtEnter_tell?>';
  var run_onchange = false;
  var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
  function valid(){
    var errors = false;
    for(var i=0; i<inputs.length; i++){
      var value = inputs[i].value;
      var name = inputs[i].getAttribute('name');

      var span = document.createElement('span');
      var p = inputs[i].parentNode;
      if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

      if( value == ''){
        if(name != 'comment'  && name != 'nhan') {
          span.innerHTML = err_field;
        }
      }
      if(name == 'email' && value != '') {
       var return_val=email_filter.test(value);
       if(return_val==false){span.innerHTML = err_email;}
      }
      if(name == 'tel' && value != ''){
        if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
        if(isNaN(value) == false && value.length < 10){span.innerHTML = err_phone;}
      }

      if(span.innerHTML != ''){
        inputs[i].parentNode.appendChild(span);
        span.setAttribute('class', 'show-error');
        errors = true;
        run_onchange = true;
        inputs[i].style.borderColor = '#f70626';
      }
    }
    return !errors;
  }

  var register = document.getElementById('_send');
  register.onclick = function(){
    return valid();
  }

  for(var i=0; i<inputs.length; i++){
    var id = inputs[i].getAttribute('id');
    inputs[i].onchange = function(){
      if(run_onchange == true){
        this.style.borderColor = '#d8d9dd';
        valid();
      }
    }
  }
}
window.onload = form_check_feedback();
      </script>