<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>

<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<i class="fa fa-edit"></i> Quản lý nội dung
		</li>
		<li>
			<i class="fa fa-tags"></i> Quản lý khách hàng
		</li>
	</ol>
</div>
<!-- /.row -->
<?php echo dashboardCoreAdmin();
if(isset($_POST['delete']) && isset($_POST['op'])){
	$del = implode(',',$_POST['del']);
	$db->table = "share";
	$db->condition = "share_id IN ($del)";
	$db->delete();
	loadPageSucces("Đã thực hiện thao tác xóa thành công.","?" . TTH_PATH . "=customer_list");
}
if(isset($_POST['mail']) && isset($_POST['op'])) {
    $email =  isset($_POST['op']) ? $_POST['op'] : array();
    $info_user = $list_to = $list_ft = array();
    $info_user = getInfoUser($_SESSION["user_id"]);

    foreach($email as $val) {
        $db->table = "share";
        $db->condition = "`share_id` = $val";
        $db->order = "";
        $db->limit = 1;
        $rows = $db->select();
        foreach ($rows as $row) {
            if(!in_array($row['email'], $list_ft))  array_push($list_to, mb_convert_case(stripslashes($row['name']), MB_CASE_TITLE, "UTF-8") . ' <' . stripslashes($row['email']) . '>');
            array_push($list_ft, $row['email']);
        }
    }
?>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-files-o"></i> Gửi thử đến khách hàng
            </div>
            <div class="panel-body">
                <form id="_cus_mail" name="customer_mail" method="post" onsubmit="return mail_customer();" enctype="multipart/form-data">
                    <table class="table table-hover">
                        <tr>
                            <td width="15%" align="right"><label>Người nhận:</label></td>
                            <td width="85%"><input class="form-control" type="text" data-role="tagsinput" name="to" value="<?php echo $info_user[0] . ' <' . $info_user[3] . '>';?>" autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td align="right"><label>CC:</label></td>
                            <td><input class="form-control" type="text" data-role="tagsinput" name="cc" value="" autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td align="right"><label>BCC:</label></td>
                            <td><input class="form-control" type="text" data-role="tagsinput" name="bcc" value="<?php echo implode(',', $list_to);?>" autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td align="right"><label>Tiêu đề:</label></td>
                            <td><input class="form-control" type="text" name="subject" value="" autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td class="ver-top" align="right"><label>Nội dung:</label></td>
                            <td><textarea class="form-control" name="content" id="content" required="required"></textarea></td>
                        </tr>
                        <tr>
                            <td align="right"><label>Đính kèm:</label></td>
                            <td>
                                <input class="form-control file" type="file" name="attach" data-show-upload="false" data-show-preview="false" data-max-file-count="1">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <button type="submit" class="btn btn-form-primary btn-form" name="send" value="OK">Đồng ý</button> &nbsp;
                                <button type="reset" class="btn btn-form-success btn-form">Làm lại</button> &nbsp;
                                <button type="button" class="btn btn-form-info btn-form" onclick="location.href='?<?php echo TTH_PATH?>=customer_list'">Thoát</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
CKEDITOR.replace('content', {
        height: 300}
);
function mail_customer() {
    showLoader();
    var dataList    = new FormData($('#_cus_mail')[0]);
    var content     = CKEDITOR.instances.content.getData();
    dataList.append("url", 'mail_customer');
    dataList.append("send", 'OK');
    dataList.append("content", content);
    $.ajax({
        url: '/olala-admin/action.php',
        type: 'POST',
        data: dataList,
        async: false,
        cache: false,
        processData: false,
        contentType: false,
        dataType: 'json',
        success: function(data){
            if(data.msg_process==true) {
                alert(data.msg_txt, function() {
                    window.location.href = '?ol=customer_list';
                });
            }
            else alert(data.msg_txt);
            closeLoader();
        },
        error: function() {
            closeLoader();
            alert('Thao tác không hợp lệ, vui lòng kiểm tra lại.');
        }
    });
    return false;
}
</script>
<?php
} else {
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default panel-no-border">
			<div class="table-responsive">
				<form method="post" enctype="multipart/form-data" id="delete">
					<table class="table display table-manager" cellspacing="0" cellpadding="0" id="dataTablesList">
						<thead>
						<tr>
							<th width="60px">STT</th>
							<th>Tên khách hàng</th>
                            <th>Điện thoại</th>
							<th>Email</th>
                            <th>Tổng lượt</th>
							<th>Ngày đăng ký</th>
							<th width="60px">Chọn</th>
						</tr>
						</thead>
						<tbody>
						<?php
						$date = new DateClass();

						$db->table = "share";
						$db->condition = "";
                        $db->group = "`email`, `phone`";
						$db->order = "`created_time` DESC";
						$rows = $db->select();

						$totalpages = 0;
						$perpage = 80;
						$total = $db->RowCount;
						if($total%$perpage==0) $totalpages=$total/$perpage;
						else $totalpages = floor($total/$perpage)+1;
						if(isset($_GET["page"])) $page=$_GET["page"]+0;
						else $page=1;
						$start=($page-1)*$perpage;
						$i=0+($page-1)*$perpage;

						$db->table = "share";
						$db->condition = "";
						$db->group = "`email`, `phone`";
						$db->order = "`created_time` DESC";
						$db->limit = $start . ','. $perpage;
                        $rows = $db->select("`share_id`, `name`, `phone`, `email`, SUM(`count`) AS `count`, MAX(`created_time`) AS `created_time`");

                        $a_phone = $a_email = array();
                        foreach($rows as $row) {
							$i++;
							?>
							<tr>
								<td align="center"><?php echo $i?></td>
								<td><?php echo stripslashes($row['name']);?></td>
                                <td><?php
                                    if(in_array($row['phone'], $a_phone))
                                        echo '<span class="duplicate">' . stripslashes($row['phone']) . '</span>';
                                    else
                                        echo stripslashes($row['phone']);
                                    ?></td>
                                <td><?php
                                    if(in_array($row['email'], $a_email))
                                        echo '<span class="duplicate">' . stripslashes($row['email']) . '</span>';
                                    else
                                        echo stripslashes($row['email']);
                                    ?></td>
                                <td align="right"><?php echo formatNumberVN($row['count'])?></td>
								<td align="center"><?php echo $date->vnDateTime($row['created_time'])?></td>
								<td class="details-control" align="center">
									<div class="checkbox">
										<label class="checkbox-inline">
											<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa" class="checkbox" name="op[]" value="<?php echo intval($row['share_id']);?>">
										</label>
									</div>
								</td>
							</tr>
						<?php
                            array_push($a_phone, $row['phone']);
                            array_push($a_email, $row['email']);
						}
						?>
						</tbody>
					</table>
                    <div class="row">
                        <div class="col-sm-6"><?php echo showPageNavigation($page, $totalpages,'?'.TTH_PATH.'=contact_list&page=')?></div>
                        <div class="col-sm-6" align="right">
                            <label class="radio-inline"><input type="checkbox" id="selecctall"  data-toggle="tooltip" data-placement="top" title="Chọn tất cả"></label>
                            <input type="submit" class="btn btn-primary btn-xs" value="Gửi thử" name="mail">
                            <input type="button" class="btn btn-danger btn-xs confirmManager" value="Xóa" name="delete">
                        </div>
                    </div>
				</form>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>
<script>
	$(document).ready(function() {
		$('#dataTablesList').dataTable( {
			"language": {
				"url": "<?php echo ADMIN_DIR?>/js/plugins/dataTables/de_DE.txt"
			},
			"aoColumnDefs" : [ {
				"bSortable" : false,
				"aTargets" : [ 6, "no-sort" ]
			} ],
			"paging":   false,
			"info":     false,
			"order": [ 0, "asc" ]
		} );

		$('#selecctall').click(function(event) {
			if(this.checked) {
				$('.checkbox[name^="op"]').each(function() {
					this.checked = true;
				});
			}else{
				$('.checkbox[name^="op"]').each(function() {
					this.checked = false;
				});
			}
		});
	});
	$(".confirmManager").click(function() {
		confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
			if(this.data == true) document.getElementById("delete").submit();
		});
	});
</script>
<?php
}