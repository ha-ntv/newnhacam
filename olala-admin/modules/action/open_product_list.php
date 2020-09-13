<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
	$parent = isset($_POST['parent'])? $_POST['parent']+0: 0;
	$content = '';
	$subContent = '<div style="padding:15px 10px;">
						<div id="list_error"></div>
						<div style="display: flex">
							<div class="custom-checkbox">
								<input id="product_all" class="selected_all_product" type="checkbox" value="all">
								<label for="product_all">Chọn tất cả</label>
							</div>
							<label for="discount_value">Discount(%)</label>
							<input class="form-control" style="width:150px" id="discount_value" name="discount" type="number" min="0" max="99" value="0">
						</div>
					<div class="row" style="margin-top: 20px;padding-top: 20px; border-top:1px solid #ccc">';
	$db->table = "product";
	if($parent) 
		$db->condition = "is_active = 1 AND product_menu_id = ". $parent;
	else 
		$db->condition = "is_active = 1";
	$db->order = "";
	$db->limit = "";
	$rows = $db->select("product_id,name,price");
	if($db->RowCount > 0) {
        
		foreach($rows as $row) {
            $subContent .='<div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="custom-checkbox">
                                    <input id="checked_product_'.$row['product_id'].'" class="selected_product" type="checkbox" value="'.$row['product_id'].'">
                                    <label for="checked_product_'.$row['product_id'].'">'.$row['name'].'<span class="topping-item-price">'.formatNumberVN($row['price']).'</span><span class="unit">VNĐ</span></label>
                                </div>
                           </div>';
        }
            $subContent .='</div></div>';
            $content = '<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Chọn sản phẩm áp dụng discount</h4>
								</div>
								<div class="modal-body">' .$subContent. '</div>
								<div class="modal-footer">
									<button type="button" id="apply_discount" class="btn btn-form-primary btn-form">Áp dụng</button>
								</div>
							</div>
						</div>';
	}
	echo $content;
