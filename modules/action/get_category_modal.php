<?php
$db->table = "product_menu";
$db->condition = "is_active = 1 AND product_menu_id <> 277";
$db->order = "";
$db->limit = "";
$rows = $db->select('name, product_menu_id');
$category = array();
foreach($rows as $row) {
  $row['product_item'] = getTotalProductToCategory($row['product_menu_id']);
  $category[]= $row;
}
?>

<!--Modal category-->

<div class="modal-dialog category-modal" role="document">
  <div class="modal-content">
    <div class="modal-body">
      <div class="d-filter-material-menu have-cart">
        <div class="d-filter-material-scroll">
          <div class="title">Categories<span data-dismiss="modal" aria-hidden="true"><img class="svg-inline" src="/images/close.svg"></span></div>
          <?php if($category) : ?>
          <ul class="block-list">
            <?php foreach($category as $cat) : ?>
            <li>
              <div class="block-content ">
                <div class="block-inner">
                  <div class="block-title choose-menu" data-id="<?php echo $cat['product_menu_id'] ?>">CÁC MÓN <?php echo ($cat['name']) ?></div>
                  <div class="block-after text-primary"><?php echo $cat['product_item'] ?> </div>
                </div>
              </div>
            </li>
            <?php endforeach; ?>
          </ul>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<!--End Modal category -->