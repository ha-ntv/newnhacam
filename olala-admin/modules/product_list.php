<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_REQUEST['filter_btn'])) {
         $query_product = "1 = 1 ";
    if(!empty($_REQUEST['name']))  { $post_name =$_REQUEST['name']; $query_product .=" AND name like '%$post_name%'"; }
    if($_REQUEST['status'] > 0) { $post_status = $_REQUEST['status'] - 1 ; $query_product .= " AND status = $post_status" ; }
    if($_REQUEST['is_active'] > 0)  { $post_active = $_REQUEST['is_active'] - 1 ; $query_product .= " AND is_active = $post_active" ; }
    if($_REQUEST['product_menu_id'] > 0) { $post_menu = $_REQUEST['product_menu_id']; $query_product .= " AND product_menu_id = $post_menu"; }
       $category_id  = 101;
	 }else {
$product_menu_id =  isset($_GET['id']) ? $_GET['id']+0 : 0;
$category_id = 0;
$db->table = "product_menu";
$db->condition = "product_menu_id = $product_menu_id";
$db->order = "";
$db->limit = 1;
$rows = $db->select();
foreach($rows as $row){
	$category_id = $row['category_id'];
}
if($db->RowCount==0) loadPageAdmin("Mục không tồn tại.","?".TTH_PATH."=product_manager");

if(isset($_POST['idDel'])){
	$dir_dest = ROOT_DIR . DS .'uploads';
	$upload_id = array();
	$idDel = implode(',',$_POST['idDel']);
	$db->table = "product";
	$db->condition = "`product_id` IN ($idDel)";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	$i = 0;
	foreach($rows as $row) {
		$mask = $dir_dest . DS . "product" . DS . '*'.$row['img'];
		if(!empty($row['img']) && glob($mask)) {
			array_map("unlink", glob($mask));
		}

		$upload_id[$i] = $row['upload_id'];

		$list_img = "";
		$db->table = "uploads_tmp";
		$db->condition = "`upload_id` = ".($row['upload_id']+0);
		$db->order = "";
		$db->limit = 1;
		$rows_it = $db->select();
		foreach ($rows_it as $row_it){
			$list_img = $row_it['list_img'];
		}
		$img = explode(";",$list_img);
		if(count($img)>0) {
			for($j=0;$j<count($img);$j++) {
				if($img[$j] != ""){
					$mask = $dir_dest . DS . "photos" . DS . '*'.$img[$j];
					if (glob($mask))
						array_map("unlink", glob($mask));
				}
			}
		}
		$i++;
	}

	$upload_id = implode(',',$upload_id);
	$db->table = "uploads_tmp";
	$db->condition = "`upload_id` IN ($upload_id)";
	$db->delete();

	// Xóa Tb_ link
	$db->table = "link";
	$db->condition = "`category` = $category_id AND `menu` = $product_menu_id AND `post` IN ($idDel)";;
	$db->delete();
	// Xóa csld sản phẩm.
	// update children field , remove the deleted id
	if($product_menu_id == 277) {
		$deletedList = explode(',',$idDel);
		$db->table = "product";
		$db->condition = "product_menu_id <> 277 AND children <> 0 AND children <> ''";
		$db->order = "";
		$db->limit = "";
		$watchRows = $db->select('product_id, children');
		foreach($watchRows as $r) {
			$hasChild = false;
			$children = $r['children'];
			$children = explode(',', $children);
			foreach($deletedList as $deletedId) {
				if (($key = array_search($deletedId, $children)) !== false) {
					unset($children[$key]);
					$hasChild = true;
				}
			}
			if($hasChild) {
				$children = implode(',', $children);
				//update
				$db->table = "product";
				$db->condition = "product_id = ". $r['product_id'];
				$dt = array(
					"children" => $children
				);
				$db->update($dt);
			}
			
		}
	}
	$db->table = "product";
	$db->condition = "`product_id` IN ($idDel)";
	$db->delete();
	loadPageSucces("Đã xóa dữ liệu thành công.", "?".TTH_PATH."=product_list&id=".$product_menu_id);
}
}
?>
<!-- Menu path -->
<div class="row">
	<ol class="breadcrumb">
		<li>
			<a href="<?php echo ADMIN_DIR?>"><i class="fa fa-home"></i> Trang chủ</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=product_manager"><i class="fa fa-edit"></i> Quản lý nội dung</a>
		</li>
		<li>
			<a href="?<?php echo TTH_PATH?>=product_manager"><i class="fa fa-bookmark"></i> Sản phẩm</a>
		</li>
		<?php if(!isset($_REQUEST['filter_btn'])) { ?><li>
			<i class="fa fa-list"></i> <?php echo getNameMenu($product_menu_id, 'product')?>
		</li>
		<a class="btn-add-new" href="?<?php echo TTH_PATH?>=product_add&id=<?php echo $product_menu_id?>">Thêm sản phẩm</a>
	<?php } ?>
           </ol>
</div>
<div class="row" style="margin: 40px 0 0px">
	<div class="col-lg-12 col-md-12 col-sm-12">
		<button type="button" data-toggle="modal" data-target="#_product_discount" onclick="return open_modal_product_discount(<?php echo $product_menu_id; ?>);" id="multiple_discount" class="btn btn-success">Thêm discount hàng hoạt</button>
	</div>
</div>
<!-- /.row -->
<?php echo dashboardCoreAdminTwo("product_list;".$category_id)?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default panel-no-border">
			<div class="table-responsive">
		<?php	if(!isset($_REQUEST['filter_btn'])) { ?>	<form method="post" id="deleteArt"> <?php } ?>
					<table class="table display table-manager" cellspacing="0" cellpadding="0" id="dataTablesList">
						<thead>
						<tr>
							<th>STT</th>
							<th>Hình</th>
							<th>Tiêu đề</th>
							<th>Còn hàng/Hết hàng</th>
							<th>Show/hide</th>
							<th>Nổi bật</th>
						<!--    <th>Ghim</th>-->
							<th>Lượt xem</th>
							<th>Ngày đăng</th>
							<th>Người đăng</th>
							<th>Chức năng</th>
						</tr>
						</thead>
						<tbody>
						<?php
						$date = new DateClass();

						$db->table = "product";
						if(!isset($_REQUEST['filter_btn'])) {
                                                $db->condition = "`product_menu_id` = $product_menu_id"; 
                                                  } else {
                                                  $db->condition = $query_product; 
                                                }
						$db->order = "`created_time` DESC";
						$db->limit = "";
						$rows = $db->select();

						$totalpages = 0;
						$perpage = 20;
						$total = $db->RowCount;
						if($total%$perpage==0) $totalpages=$total/$perpage;
						else $totalpages = floor($total/$perpage)+1;
						if(isset($_REQUEST["page"])) $page=$_REQUEST["page"]+0;
						else $page=1;
						$start=($page-1)*$perpage;
						$i=0+($page-1)*$perpage;

						$db->table = "product";
						if(!isset($_REQUEST['filter_btn'])) {
                                                $db->condition = "`product_menu_id` = $product_menu_id"; 
                                                  } else {
                                                  $db->condition = $query_product; 
                                                }
						$db->order = "`created_time` DESC";
						$db->limit = $start . ', '. $perpage;
						$rows = $db->select();

						foreach($rows as $row) {
							$i++;
							?>
							<tr>
								<td align="center"><?php echo $i?></td>
								<td align="center">
									<?php echo ($row["img"]=='no')?
										'<img data-toggle="tooltip" data-placement="top" title="Không có hình" src="images/error.png">'
										:
										'<img id="popover-'.$i.'" class="btn-popover" title="'.stripslashes($row["name"]).'" src="images/OK.png">
										<script>
											var image = \'<img src="../uploads/product/'.$row["img"].'">\';
											$(\'#popover-'.$i.'\').popover({placement: \'bottom\', content: image, html: true});
										</script>'
									?>
								</td>
                                <td><span class="tth-ellipsis"><a target="_blank" href="/<?php echo stripslashes($row['slug']);?>" title="<?php echo stripslashes($row['name'])?>"><?php echo stripslashes($row['name'])?></span></a></td>
                                <?php
								//-----------Kiểm tra phân quyền ---------------------------------------
								if(in_array("product_edit;".$category_id,$corePrivilegeSlug)) {
									?>
									<td align="center">
										<?php echo ($row["status"]+0==0)?
											'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status($(this), '.$row["product_id"].', \'status\', \'product\');" rel="1">0</div>'
											:
											'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status($(this), '.$row["product_id"].', \'status\', \'product\');" rel="0">1</div>'
										?>
									</td>
									<td align="center">
										<?php echo ($row["is_active"]+0==0)?
											'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status($(this), '.$row["product_id"].', \'is_active\', \'product\');" rel="1">0</div>'
											:
											'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status($(this), '.$row["product_id"].', \'is_active\', \'product\');" rel="0">1</div>'
										?>
									</td>
									<td align="center">
										<?php echo ($row["hot"]+0==0)?
											'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status($(this), '.$row["product_id"].', \'hot\', \'product\');" rel="1">0</div>'
											:
											'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status($(this), '.$row["product_id"].', \'hot\', \'product\');" rel="0">1</div>'
										?>
									</td>
								<!--	<td align="center">
										<?php echo ($row["pin"]+0==0)?
											'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_pin($(this), '.$row["product_id"].', \'pin\', \'product\');" rel="1">0</div>'
											:
											'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_pin($(this), '.$row["product_id"].', \'pin\', \'product\');" rel="0">1</div>'
										?>
									</td>-->
									<?php
								} else {
									?>
									<td align="center">
										<?php echo ($row["status"]+0==0)?
											'<div class="btn-event-close alertManager" data-toggle="tooltip" data-placement="top" title="Mở">0</div>'
											:
											'<div class="btn-event-open alertManager" data-toggle="tooltip" data-placement="top" title="Đóng">1</div>'
										?>
									</td>
									<td align="center">
										<?php echo ($row["is_active"]+0==0)?
											'<div class="btn-event-close alertManager" data-toggle="tooltip" data-placement="top" title="Mở">0</div>'
											:
											'<div class="btn-event-open alertManager" data-toggle="tooltip" data-placement="top" title="Đóng">1</div>'
										?>
									</td>
									<td align="center">
										<?php echo ($row["hot"]+0==0)?
											'<div class="btn-event-close alertManager" data-toggle="tooltip" data-placement="top" title="Mở">0</div>'
											:
											'<div class="btn-event-open alertManager" data-toggle="tooltip" data-placement="top" title="Đóng">1</div>'
										?>
									</td>
								<!--	<td align="center">
										<?php echo ($row["pin"]+0==0)?
											'<div class="btn-event-close alertManager" data-toggle="tooltip" data-placement="top" title="Mở">0</div>'
											:
											'<div class="btn-event-open alertManager" data-toggle="tooltip" data-placement="top" title="Đóng">1</div>'
										?>
									</td>-->
								<?php }
								//----------- end if ------------
								?>
								<td align="center"><?php echo formatNumberVN($row['views']+0);?></td>
								<td align="center"><?php echo $date->vnDateTime($row['created_time'])?></td>
								<td align="center"><?php echo getUserName($row['user_id']);?></td>
								<td class="details-control" align="center">
									<div class="checkbox">
										<a href="?<?php echo TTH_PATH?>=product_edit&id=<?php echo $row['product_id']?>"><img data-toggle="tooltip" data-placement="top" title="Chỉnh sửa" src="images/edit.png"></a>&nbsp;&nbsp;
										<label class="checkbox-inline">
											<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa" class="checkboxArt" name="idDel[]" value="<?php echo $row['product_id']?>">
										</label>
									</div>
								</td>
							</tr>
						<?php
						}
						?>
						</tbody>
					</table>
					<div class="row">
						<div class="col-sm-6"><?php if(!isset($_REQUEST['filter_btn'])) {  echo showPageNavigation($page, $totalpages,'?'.TTH_PATH.'=product_list&id='.$product_menu_id.'&page='); } else {
                                                 echo showPageNavigation($page, $totalpages,'?'.TTH_PATH.'=product_list&filter_btn='.$_REQUEST['filter_btn'].'&name='.$_REQUEST['name'].'&is_active='.$_REQUEST['is_active'].'&status='.$_REQUEST['status'].'&product_menu_id='.$_REQUEST['product_menu_id'].'&page=');   
                                                }?></div>
						<div class="col-sm-6" align="right">
						<?php	if(!isset($_REQUEST['filter_btn'])) { ?>	<label class="radio-inline"><input type="checkbox" id="selecctall"  data-toggle="tooltip" data-placement="top" title="Chọn xóa tất cả" ></label>
							<input type="button" class="btn btn-danger btn-xs <?php echo in_array("product_del;".$category_id,$corePrivilegeSlug)? "confirmManager" : "alertManager"?> " value="Xóa" name="deleteArt"> <?php } ?>
						</div>
					</div>
				<?php	if(!isset($_REQUEST['filter_btn'])) { ?></form><?php } ?>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>
<div class="modal fade" id="_product_discount" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<script>
	$(document).ready(function() {
		$('#dataTablesList').dataTable( {
			"language": {
				"url": "<?php echo ADMIN_DIR?>/js/plugins/dataTables/de_DE.txt"
			},
			"aoColumnDefs" : [ {
				"bSortable" : false,
				"aTargets" : [ 1,9, "no-sort" ]
			} ],
			"paging":   false,
			"info":     false,
			"order": [ 0, "asc" ]
		} );

		$('#selecctall').click(function(event) {
			if(this.checked) {
				$('.checkboxArt').each(function() {
					this.checked = true;
				});
			}else{
				$('.checkboxArt').each(function() {
					this.checked = false;
				});
			}
		});
	});
    $(".confirmManager").click(function() {
        confirm("Tất cả các dữ liệu liên quan đến sản phẩm sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
            if(this.data == true) document.getElementById("deleteArt").submit();
        });
    });
    $(".alertManager").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>
