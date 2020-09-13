<div class="modal-dialog mobile-modal" role="document">
    <div class="modal-content">
        <div class="modal-nav ">
            <div class="container">
                <nav class="navbar navbar-blue row  justify-content-between align-items-center">
                    <div class="navbar-left col-auto"><span class="navbar-link navbar-link-txt text-left modal-close svg-md" data-dismiss="modal" aria-label="Close"><img src="/images/close.svg" class="svg-inline"></span></div>
                    <div class="navbar-title text-center col text-truncate">Nhà Cám</div>
                </nav>
            </div>
        </div>
        <div class="modal-body voucher-modal">
            <h3 class="active text-center">VOUCHER</h3>
            <div class="input-wrapper">
                <input type="text" value="" id="voucher" placeholder="ENTER PROMO CODE"><button id="apply_promo_code" class="apply-promo-cd">Apply</button>
            </div>
            <ul>
            <?php
            $cart_info = calculateCart();
            $db->table = 'others';
            $db->condition = 'is_active = 1 AND others_menu_id = 9';
            $db->order = '';
            $db->limit = 1;
            $vs = $db->select();
            if (count($vs)) : ?>
                <li class="text-center">
                    <div class="promotions-order">
                        <div class="promotion-item">
                           <img src="/images/freeship.png" alt="Apply" class="icon-promotion">
                            <span class="content"><span class="promo-code"><?php echo $vs[0]['name'] ?></span> Freeship tới <?php echo $vs[0]['km'] ?>km</span>
                            <button class="code-apply apply-promo-cd"><span class="promo_FREESHIP">Apply</span><span class="fa fa-copy"></span></button>
                        </div>
                    </div>
                </li>
            <?php endif; ?>
            <?php
            $db->table = 'others';
            $db->condition = 'theend >=' . time() . ' AND is_active = 1 AND others_menu_id = 8';
            $db->order = '';
            $db->limit = '';
            $vs = $db->select();
            if (count($vs)) : ?>
                <li class=" text-center">
                    <div class="promotions-order">
                        <div class="promotion-item">
                           <img src="/images/promo-code.png" alt="Nhập" class="icon-promotion">
                                <span class="content">Nhập &quot; <?php echo $vs[0]['name'] ?> &quot; </span>
                            <button class="code-apply apply-promo-cd"><span class="promo_FREESHIP">Apply</span><span class="fa fa-copy"></span></button>
                        </div>
                    </div>
                </li>
            <?php endif; ?>
            </ul>
        </div>
    </div>
</div>