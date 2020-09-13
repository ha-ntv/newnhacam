<?php 
$id 	= isset($_POST['id']) ? $_POST['id'] : 0;
$page   = isset($_POST['page']) ? $_POST['page'] : 1;

$per_page = 8;
$page1 = $per_page * $page;
$data = "";
	$db->table = "product";
	$db->condition = "`is_active` = 1 AND `product_menu_id` = " . $id;
	$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
	$db->limit = "";
	$rows = $db->select();
	$total = $db->RowCount;
	$total_pages = 0;
	$per_page = 8;
	if($total%$per_page==0) $total_pages = $total/$per_page;
	else $total_pages = floor($total/$per_page)+1;
	$db->table = "product";
	$db->condition = "`is_active` = 1 and `product_menu_id` = " . $id;
	$db->order = "`pin` DESC, `hot` DESC, `created_time` DESC";
	$db->limit = $page1 . ','.$per_page;
	$rows = $db->select();
	$i = 0;
	if(count($rows) > 0){
    foreach($rows as $row) {
		
		$photo_avt = '';
		$alt = ($row['img_note'] != '') ? stripslashes($row['img_note']) : stripslashes($row['name']);
		if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'product' . DS . $row['img']) && $row['img']!='') {
			$photo_avt = '<img src="'. HOME_URL .'/uploads/product/lg-'. $row['img'] . '" alt="' . $alt . '">';
		} else {
			$photo_avt = '<img src="'. HOME_URL .'/images/404.jpg" alt="' . $alt . '">';
		}

		$photo_avt = '<a href="javascript:{}" class="show_data" data-id="'.$row["product_id"] .'"  title="' . stripslashes($row['name']) . '">' . $photo_avt . '</a>';
		$title = '<h3><a href="javscript:{}" class="show_data" data-id="'.$row["product_id"] .'" title="' . stripslashes($row['name']) . '">' . stripslashes($row['name']) . '</a></h3>';
 		$bhan  = 0;
	
$data .='<div class="healthymenuProductBox col-md-4 col-lg-3 col-xs-6 masonry-item">
    <div class="next-lag">
        <div class="over_hot">
        <img src="/css/img/hot_tab.png">
    </div>
        <div class="productListHMBox">
            '. $photo_avt .
        '</div>
        <div class="caption"><a href="javscript:{0}"  class="show_data" data-id="'.$row['product_id'].'"><h4>
            '.$row['name']. 
        '</h4> </a>
            <p><a href="javscript:{}" class="readmore" > '. $more .' ... </a> </p>
        </div>
        <div class="price-addtocart">
            <div class="price-unit pull-left">  <span class="productprice">'. number_format($row['price'], '0', '.','.' ) .'</span><span class="productunit"> VNĐ</span></div>
           
                
                    <input value="'. $row['product_id'] .'" type="hidden" name="id">
                     <input type="hidden" name="addCart">
                <button type="button" class="btnAddtocart btnAddtocartText addtocart pull-right ' . $bhan . '" style="background: none;border:none;cursor: pointer;">
                    <img src="/img/responsive/cart.png" alt=" " style="width: 27px;">
                </button>

       
            
            <div class="clear"></div>
        </div>
    </div>
</div>';
	
	}
  }
  if($total_pages > ($page+1)) echo json_encode(array('dt' => $data, 'page' => $page+1));
  else  echo json_encode(array('dt' => $data, 'page' => 'end'));

?>