<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script>
	function quantity_control() {
	$('.quantity_input').each(function() {
	var minimum = $(this).val();
	var maximum = $(this).attr('data-maximum');
	if(maximum <= 0) {
		$(this).val('0');
		$(this).parent().parent().find('.button-group').children().first().attr('disabled', 'disabled');
		if ($('.form-group').length !=0) {
			$(this).parent().parent().find('#button-cart').attr('disabled', 'disabled');
		}
		var text = 'данный товар закончился.';
	} else {
		var text = 'данного товара осталось всего ' + maximum + ' шт!'
	}
	
	$(this).next().click(function () {
	if ((~~$(this).prev().val()+ ~~minimum) <= ~~maximum) {
		$(this).prev().val(~~$(this).prev().val()+ ~~minimum);
	} else {
	if ($(this).parent().find('.stock_warning').length ==0) { $(this).parent().append($('<span class="stock_warning">На нашем складе ' + text + '</span>').fadeIn()); }
	$(this).parent().find('.stock_warning').fadeIn().delay('2000').fadeOut();
	}
	});
	$(this).prev().click(function () {
	if ($(this).next().val() > ~~minimum) {
		$(this).next().val(~~$(this).next().val()- ~~minimum);
	}
	});
	});
	}
	$(document).ready(function() {
		quantity_control();
	});
</script>
<style>
	.quantity_div {display:block; width:80px; height:26px; position:relative; padding:0; text-align:center; margin: 10px auto; line-height:normal !important;}
	.form-group .quantity_div {display:inline-block; vertical-align:middle;}
	.quantity_input {text-align:center; width:28px; height:24px !important; margin:0 -3px !important; border:solid 1px #d2d2d2 !important; border-radius:0 !important; box-shadow:inset 1px 1px 1px #ddd; background:#fff !important; color:#555 !important; font-family:Arial;}
	.plus, .minus {display:inline-block; vertical-align:top; height:24px !important; padding:3px 5px 3px !important; color:#888; border:solid 1px #d2d2d2; background:#eee; text-shadow:0 1px 0 #fff; box-shadow:inset 0 1px 0 #fff; font-size:14px; cursor:pointer; font-family:Arial;}
	.minus{border-radius:3px 0 0 3px; border-right:none;}
	.plus{border-radius:0 3px 3px 0; border-left:none;}
	.plus:hover, .minus:hover {background:#e5e5e5;}
	.stock_warning {position:absolute; z-index:999; left:-49px; bottom:35px; width:180px !important; padding:10px !important; background:#fefefe; background: linear-gradient(to bottom, #fefefe 0%, #f0f0f0 100%); box-shadow: 1px 1px 10px #ccc; line-height:15px; border:solid 1px #ddd; border-radius:10px; display:block; color:#f00 !important; font-size:12px;}
</style>
</body></html>