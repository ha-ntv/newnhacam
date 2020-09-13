
<div class="container">
	<div class="row hidden-md-down">
		<div class="col-xs-12">
			<div class="breadcrumbList">
				<ul class="breadcrumb">
					<li><a href="<?php echo HOME_URL_LANG ?>">Home</a></li>
					<li class="active">Feedback</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-xs-12 col-lg-12 col-md-12">
			<div class="feedbackBox">
				<div class="textIntro">					
				<p>
					<?php echo getPage('title_feedback','comment') ?>
				</p>
				</div>
				<form id="fromFeedback" onsubmit="return  sendMail('send_order','fromFeedback')">
					<div class="row form-group form_nhan">
						<div class="col-xs-4 col-sm-3">
							<div class=" ">
								<input id="objective1" type="radio" name="suggestion" value="good" checked="checked">
								<!-- <label for="objective1">Suggestion</label> -->
							</div>
						</div>
						<div class="col-xs-4 col-sm-3">
							<div class=" ">
								<input id="objective2" type="radio" name="suggestion" value="criticism">
								<!-- <label for="objective2">Comment</label> -->
							</div>
						</div>
						<div class="col-xs-4 col-sm-3">
							<div class=" ">
								<input id="objective3" type="radio" name="suggestion" value="recommend">
								<!-- <label for="objective3">Recommendation</label> -->
							</div>
						</div>
					</div>
					<div class="form-group row">
						
						<div class="selectSubjectFeedback col-xs-12  col-sm-6">
							<!-- <label class="col-xs-12 hidden-xs-down" for="inputSubject"> -->
								<!-- Subject <span class="fontorange">*</span> -->
							<!-- </label> -->
							<select id="inputSubject" class="form-control" name="subject">
								<option value="">Choose Subject</option>
								<?php 
									$db->table = "others";
									$db->condition = "is_active = 1 and others_menu_id = 6";
									$db->order = "";
									$db->limit = "";
									$rows = $db->select();
									foreach ($rows as $row) {
								?>
								<option value="<?php echo $row['name'] ?>"><?php echo $row['name'] ?></option>
								<?php } ?>
							</select>
						</div>
						<div class="col-xs-12 col-sm-6">
							<!-- <label for="inputBranch" class="hidden-xs-down"> -->
								<!-- Please specify th MK Branch                      <span class="fontorange">*</span> -->
							<!-- </label> -->
							<div class="selectBranchFeedback">
								<select class="form-control" id="inputBranch" name="banch">
									<option value="">Select Branch</option>
									<?php 
									$db->table = "others";
									$db->condition = "is_active = 1 and others_menu_id = 7";
									$db->order = "";
									$db->limit = "";
									$rows = $db->select();
									foreach ($rows as $row) {
								?>
								<option value="<?php echo $row['name'] ?>"><?php echo $row['name'] ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-12 col-sm-6">
							<!-- <label for="inputName" class="hidden-xs-down"> -->
								<!-- Name                        <span class="fontorange">*</span> -->
							<!-- </label> -->
							<input class="col-xs-12 form-control" name="name" type="text" id="inputName" placeholder="Name *">
						</div>
						<div class="clearfix hidden-sm-up"></div>
						<br class="hidden-sm-up">
						<div class="col-xs-12 col-sm-6">
							<!-- <label for="inputLastName" class="hidden-xs-down"> -->
								<!-- Surname                        <span class="fontorange">*</span> -->
							<!-- </label> -->
							<input class="col-xs-4 form-control" type="text" name="surname" id="inputLastName" placeholder="Surname *">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-12 col-sm-6">
							<!-- <label for="inputPhone" class="hidden-xs-down"> -->
								<!-- Tel.                        <span class="fontorange">*</span> -->
							<!-- </label> -->
							<input type="text" class="form-control" name="tel" id="inputPhone" maxlength="10" placeholder="Tel.">
						</div>
						<div class="col-xs-12 col-sm-6">
							<div id="dtBox" class="dtpicker-overlay dtpicker-mobile" style="display: none;"><div class="dtpicker-bg"><div class="dtpicker-cont"><div class="dtpicker-content"><div class="dtpicker-subcontent"></div></div></div></div></div>
							<!-- <label for="inputDateService" class="hidden-xs-down">Time and Date</label> -->
							<div class="input-group">
								<input size="16" type="text" class="form-control input-date" id="inputDateService" data-field="datetime" placeholder="Time and Date" name="time">
								<span class="input-group-addon" id="basic-addon2"> <i class="fa fa-calendar"></i>
								</span>
							</div>
						</div>
					</div>
					
					<div class="form-group row">
						<div class="col-xs-12">
							<!-- <label for="inputMassage" class="hidden-xs-down">Comment and Recommendation</label> -->
							<textarea class="col-xs-12 form-control" id="inputMassage" style="min-height: 150px" placeholder="Comment and Recommendation" name="comment"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-12 col-sm-12 text-center">
							<button type="submit" class="btnRedResponsiveMedium" id="_send" name="nhan">Submit</button>
						</div>
					</div>
				</form>
				
			</div>
		</div>
	</div>
<script type="text/javascript">
	function form_check_feedback(){
    var inputs = document.getElementById('fromFeedback');
	var err_field = 'Trường bắt buộc';
	// var err_email = $("[name='lang_email']").val();
	var err_phone = 'Số điện thoại bạn nhập không chính xác';
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
				if(name != 'time' && name != 'comment' && name != 'nhan') {
					span.innerHTML = err_field;
				}
			}
			// if(name == 'email' && value != '') {
			// 	var return_val=email_filter.test(value);
			// 	if(return_val==false){span.innerHTML = err_email;}
			// }
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

        $('.input-date').datetimepicker({
            mask:'39/19/9999',
            lang:'vi',
            format:'<?php echo TTH_DATE_FORMAT?>',
            closeOnDateSelect:true
    });
        window.onload = form_check_feedback();
      </script>
   <style type="text/css">
   	.xdsoft_datetimepicker .xdsoft_calendar td.xdsoft_default, .xdsoft_datetimepicker .xdsoft_calendar td.xdsoft_current, .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box >div >div.xdsoft_current{
   		background: #222;
   		box-shadow: #222 0px 1px 3px 0px inset;
   	}
   </style>