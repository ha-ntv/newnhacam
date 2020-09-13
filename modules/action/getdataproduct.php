<?php 
	$id_menu = isset($_POST['id']) ? $_POST['id'] : 0;
	if($id_menu != 0){
?>
<div class="row textSubHeader m-b-0">
    <div class="col-xs-6 col-title">
         <?php
            $db->table = "product_menu";
            $db->condition = "product_menu_id = $id_menu";
            $db->limit = "";
            $db->order = "";
            $rows = $db->select();
            foreach($rows as $row) 
            {
                echo '<h3>'.$row['name'].'</h3>';
            } ?>
        <div class="graybox">
        </div>
    </div>
    <div class="col-xs-6 pull-right">
        <div class="paginationBox  paginationBoxTop">
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<?php
echo '<section class="main main-realty">';
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
include(_F_MODULES . DS . "x_product.php");
echo '</section>';
} ?>
<script type="text/javascript">
	 $('.btn_dd').click(function(){
            $page = $('.page').val();
            $id = $('.page').attr('data_id');
            showLoader();
            $.ajax({
                url:'/action.php',
                type: 'POST',
                data: 'url=getproduct&id='+$id+'&page='+$page,
                dataType: 'html',
                success: function(data){
                    closeLoader();
                    if(data != 0){
                        $ph = Number($page) + 1;
                        $('.show_loadproduct').append(data);
                        $('.page').val($ph);
                    }else{
                       
                         $('.btn_dd').remove();
                    }
                }
            });
        })
	$('.page').val(1);
    $('.show_data').click(function(){
        $id = $(this).attr('data-id');
        showLoader();
        $.ajax({
            url:'/action.php',
            type: 'POST',
            data: 'url=getmodal&id='+$id,
            dataType: 'html',
            success: function(data){
                closeLoader();
                $('#healthymenu-modal').html(data);
                $('#healthymenu-modal').modal('show');    
            }
        });
    })
</script>