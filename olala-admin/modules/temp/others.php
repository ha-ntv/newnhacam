<?php
if (!defined('TTH_SYSTEM')) {
	die('Please stop!');
}
//
function others($act, $typeFunc, $others_id, $others_menu_id, $name, $p_from, $p_to, $p_price, $code, $p_max, $is_active,$km, $hot, $theend, $p_price1, $p_price2, $product_menu, $thestart, $error)
{
	global $db, $tth;
	$db->table = "others_menu";
	$db->condition = "others_menu_id = $others_menu_id";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		dashboardCoreAdminTwo($tth . ";" . $row['category_id']);
	}
	
	if (in_array($others_menu_id, [8,9]) && $typeFunc == 'add') {
		function RandomString()
		{
			$characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$randstring = '';
			for ($i = 0; $i < 7; $i++) {
				$randstring .= $characters[rand(0, strlen($characters))];
			}
			return $randstring;
		}
		$name = RandomString();
	}
?>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-files-o"></i> Nội dung hình ảnh
				</div>
				<div class="panel-body">
					<form action="<?php echo $act ?>" method="post" enctype="multipart/form-data">
						<input type="hidden" name="typeFunc" value="<?php echo $typeFunc ?>">
						<input type="hidden" name="others_id" value="<?php echo $others_id ?>">
						<input type="hidden" name="others_menu_id" value="<?php echo $others_menu_id ?>">
						<div class="panel-show-error">
							<?php echo $error ?>
						</div>
						<table class="table table-hover" style="width: 70%;">
							<tr>
								<td width="300px" align="right"><label>Tiêu đề:</label></td>
								<td><input class="form-control" type="text" id="name" name="name" maxlength="200" value="<?php echo stripslashes($name) ?>" required></td>
							</tr>
							<?php if ($others_menu_id == 8) : ?>
								<tr>
									<td align="right"><label>Khuyến mãi(%):</label></td>
									<td><input class="form-control auto-number" type="text" name="p_price" placeholder="%" data-a-sep="." data-a-dec="," data-v-max="99" data-v-min="0" maxlength="20" value="<?php echo stripslashes($p_price) ?>"></td>
								</tr>
								<tr>
									<td align="right"><label>Khuyến mãi(vnđ):</label></td>
									<td><input class="form-control auto-number" type="text" name="p_price1" placeholder="vnđ" data-a-sep="." data-a-dec="," data-v-max="99999999"" data-v-min=" 0" maxlength="20" value="<?php echo stripslashes($p_price1) ?>"></td>
								</tr>
								<tr>
									<td align="right"><label>Khuyến mãi tối đa(vnđ):</label></td>
									<td><input class="form-control auto-number" type="text" name="p_price2" placeholder="vnđ" data-a-sep="." data-a-dec="," data-v-max="999999999999" data-v-min="0" maxlength="20" value="<?php echo stripslashes($p_price2) ?>"></td>
								</tr>
							<?php endif; ?>
								<tr>
									<td align="right"><label>Mức bill tối thiểu áp dụng:</label></td>
									<td><input class="form-control auto-number" type="text" name="p_max" placeholder="vnđ" data-a-sep="." data-a-dec="," data-v-max="999999999999" data-v-min="0" maxlength="20" value="<?php echo stripslashes($p_max) ?>"></td>
								</tr>
						
							<tr>
								<td align="right"><label>Loại mã:</label></td>
								<td>
									<label class="radio-inline"><input type="radio" name="code" value="0" <?php echo $code == 0 ? "checked" : "" ?>> Một lần</label>
									<label class="radio-inline"><input type="radio" name="code" value="1" <?php echo $code == 1 ? "checked" : "" ?>> Nhiều lần</label>
								</td>
							</tr>
							<?php if ($others_menu_id == 9) : ?>
								<tr>
									<td align="right"><label>Khoảng cách tối đa áp dụng:</label></td>
									<td><input class="form-control auto-number" type="text" name="km" placeholder="km" data-a-sep="." data-a-dec="," data-v-max="999999999999" data-v-min="0" maxlength="20" value="<?php echo stripslashes($km) ?>"></td>
								</tr>
							<?php endif; ?>
							<?php if ($others_menu_id == 8) : ?>
							<tr>
								<td align="right"><label>Áp dụng cho loại món:</label></td>
								<td><?php echo productName($product_menu); ?></td>
							</tr>
							<?php endif; ?>
							<tr>
								<td align="right"><label>Còn sử dụng/Chấm dứt:</label></td>
								<td>
									<label class="radio-inline"><input type="radio" name="is_active" value="0" <?php echo $is_active == 0 ? "checked" : "" ?>> Đóng</label>
									<label class="radio-inline"><input type="radio" name="is_active" value="1" <?php echo $is_active == 1 ? "checked" : "" ?>> Mở</label>
								</td>
							</tr>
							<tr>
								<td align="right"><label>Show web/hide:</label></td>
								<td>
									<label class="radio-inline"><input type="radio" name="hot" value="0" <?php echo $hot == 0 ? "checked" : "" ?>> Đóng</label>
									<label class="radio-inline"><input type="radio" name="hot" value="1" <?php echo $hot == 1 ? "checked" : "" ?>> Mở</label>
								</td>
							</tr>
							<tr>
								<td align="right"><label>Thời gian show:</label></td>
								<td><input class="form-control" id="input-date3" type="text" name="thestart" style="width: 160px;" value="<?php echo $thestart ?>"></td>
							</tr>
							<tr>
								<td align="right"><label>Dùng đến:</label></td>
								<td><input class="form-control" id="input-date1" type="text" name="theend" style="width: 160px;" value="<?php echo $theend ?>"></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<button type="submit" class="btn btn-form-primary btn-form">Đồng ý</button> &nbsp;
									<button type="reset" class="btn btn-form-success btn-form">Làm lại</button> &nbsp;
									<button type="button" class="btn btn-form-info btn-form" onclick="location.href='?<?php echo TTH_PATH ?>=others_list&id=<?php echo $others_menu_id ?>'">Thoát</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('#input-date3').datetimepicker({
			mask: '39/19/9999',
			lang: 'vi',
			timepicker: false,
			format: '<?php echo TTH_DATE_FORMAT ?>',
			closeOnDateSelect: true
		});
		$('#input-date1').datetimepicker({
			mask: '39/19/9999',
			lang: 'vi',
			timepicker: false,
			format: '<?php echo TTH_DATE_FORMAT ?>',
			closeOnDateSelect: true
		});
	</script>
<?php
}
/**
 * @param $id
 * @param $par
 */
function productName($id)
{
	echo '<select name="product_menu" class="form-control">';
	echo '<option value="0" ' . ($product_menu == 0 ? ' selected' : '') . '>Không chọn</option>';
	global $db;
	$db->table = "product_menu";
	$db->condition = "category_id = 101";
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		echo "<option value='" . $row["product_menu_id"] . "'" . ($row["product_menu_id"] == $id ? ' selected' : '');
		echo ">" . stripslashes($row["name"]) . "</option>";
	}
	echo '</select>';
}

/**
 * @param $db
 * @param $level
 * @param $parent
 * @param $category_id
 * @param $par
 */
function loadMenuCategory($db, $level, $parent, $category_id, $id)
{
	$space = "-&nbsp;-&nbsp;";
	for ($i = 0; $i < $level; $i++) {
		$space .= "-&nbsp;";
	}
	$db->table = "others_menu";
	$db->condition = "category_id = " . $category_id . " and parent = " . $parent;
	$db->order = "sort ASC";
	$db->limit = "";
	$rows2 = $db->select();
	foreach ($rows2 as $row) {
		if ($level <= 3) {
			echo "<option value='" . $row["others_menu_id"] . "'";
			if ($id == $row["others_menu_id"]) echo " selected ";
			echo ">" . $space . stripslashes($row["name"]) . "</option>";
			loadMenuCategory($db, $level + 2, $row["others_menu_id"] + 0, $row["category_id"] + 0, $id);
		}
	}
}

function sortAcs($id)
{
	global $db;
	$db->table = "others";
	$db->condition = "`others_menu_id` = $id";
	$db->order = "";
	$db->limit = "";
	$db->select();
	return $db->RowCount;
}
