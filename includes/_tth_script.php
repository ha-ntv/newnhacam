<script src="<?php echo HOME_URL; ?>/js/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
function showLoader() {
  $("#_loading").html("<div style=\"position: fixed; top: 50%; right: 50%; text-align: center; background: transparent; z-index: 99999999999999999999999999999;\"><div class=\"windows8\"> <div class=\"wBall\" id=\"wBall_1\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_2\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_3\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_4\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_5\"> <div class=\"wInnerBall\"> </div> </div> </div></div>").show().fadeIn(10);
  block = true;
}
function closeLoader() {
  $("#_loading").html("").hide().fadeOut(100);
  block = false;
}
</script>
 <?php if($slug_cat == 'feedback'){ ?>   
    <link rel="stylesheet" type="text/css" href="/olala-admin/js/jquery.calendar/jquery.datetimepicker.css"/>
 <script type="text/javascript" src="/olala-admin/js/jquery.calendar/jquery.datetimepicker.js"></script>
<?php
}
    if($slug_cat == "home" || $slug_cat == 'delivery' ){
        ?>
        <link rel="stylesheet" type="text/css" href="<?php echo HOME_URL ?>/css/swiper.min.css">
        <script type="text/javascript" src="<?php echo HOME_URL ?>/js/swiper.min.js"></script>
        <?php
    }else if($slug_cat == 'gallery'){ ?>
    <script type="text/javascript" src="/js/modernizr.custom.js"></script>
    <script type="text/javascript" src="/js/masonry.pkgd.min.js"></script>
    <script type="text/javascript" src="/js/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="/js/classie.js"></script>
    <script type="text/javascript" src="/js/colorfinder-1.1.js"></script>
    <script type="text/javascript" src="/js/gridScrollFx.js"></script>
    <?php 
}else if($slug_cat == "product" ){
    ?>
    <script type="text/javascript" src="/js/swiper.js"></script>
    <style type="text/css" src="/css/swiper.min.css"></style>
    <script type="text/javascript">
    var galleryTop = new Swiper('.gallery-top', {
      spaceBetween: 0,
      loop:true,
      loopedSlides: 1,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      breakpoints: {
        1024: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 1,
        },
        640: {
          slidesPerView: 1,
        },
        320: {
          slidesPerView: 1,
        }
      }
    });
    </script>
    <?php
 }
 if($slug_cat == 'payment'){
 ?>
 <script type="text/javascript">
function addCommas(nStr){
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + '.' + '$2');
    }
    return x1 + x2;
}
  function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    directionsService.route({
      origin: document.getElementById('start').value,
      destination: document.getElementById('end').value,
      travelMode: google.maps.TravelMode.DRIVING
    }, function(response, status) {
      if (status === google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
        var htmlReturn = '';
        var route = response.routes[0];
        var km = route.legs[0].distance.text;
        km = km.split(" ")[0];
        km = km.replace(',', '.');
        if (km <= 2){
          var tien = isNaN(parseInt(<?=getPage('shipping_rate1','comment')?>))? 10000: parseInt(<?=getPage('shipping_rate1','comment')?>);
        }else{
        var km1 = km;
        var tien = km1*( isNaN(parseInt(<?=getPage('shipping_rate2','comment')?>))? 5000: parseInt(<?=getPage('shipping_rate2','comment')?>));
      }
      document.getElementById('distance-value').value = km;
      var total = $('.total').text();
      total = total.replace('.', '');
      tong = Number(total) + Number(tien);
<?php if($_SESSION["language"] == 'vi'){ ?>
        htmlReturn += "Số KM: <strong>" + route.legs[0].distance.text + "</strong> -  Phí vận chuyển: <strong>" + addCommas(tien) + "</strong> vnđ" + ' Tổng cộng:<strong> '+ addCommas(tong) +' vnđ</strong>';
<?php  }else{ ?>
  htmlReturn += " KM Number: <strong>" + route.legs[0].distance.text + "</strong> -  Transport fee: <strong>" + addCommas(tien) + "</strong> vnđ"+ ' Total: <strong> '+ addCommas(tong) +' vnđ</strong>';
  <?php } ?>
        var tongtien = parseFloat($('.tongtien').attr('id'));
      var tienkm = parseFloat($('#tienkm').html());
      if(isNaN(tienkm)) tienkm = 0;
      var th_tongtien = parseFloat(tongtien + tien - tienkm);
      $('.tongtien').html('');
      $('#mda_ds').html(tien);
      $('.tongtien1').val(tong);
      $('#md_mod').val(tien);
      document.getElementById('infoDirections').innerHTML  = htmlReturn;
      }
    });
  }
function initMap() {
    var directionsService = new google.maps.DirectionsService;
    var directionsDisplay = new google.maps.DirectionsRenderer;
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 15,
      center: {lat: 16.0717516, lng: 108.200348}
    });
    directionsDisplay.setMap(map);
    var searchBox = new google.maps.places.SearchBox(document.getElementById('end'));
  google.maps.event.addListener(searchBox, 'places_changed', function(){
      var places = searchBox.getPlaces();
      if (places.length == 0) {
          return;
      }
      markers = [];
      var bounds = new google.maps.LatLngBounds();
      for (var i = 0, place; place = places[i]; i++) {
          var marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location,
            draggable: true,
            animation: google.maps.Animation.DROP
          });

          markers.push(marker);
          bounds.extend(place.geometry.location);
      }
      map.fitBounds(bounds);

      calculateAndDisplayRoute(directionsService, directionsDisplay);
  });
    var onChangeHandler = function() {
      calculateAndDisplayRoute(directionsService, directionsDisplay);
  };
    document.getElementById('end').addEventListener('keydown', onChangeHandler);
    calculateAndDisplayRoute(directionsService, directionsDisplay);
function initialize(){
  var marker = new google.maps.Marker({
      position: myCenter,
  });
  marker.setMap(map);
  }
}

</script>
<?php } ?>
<script src="<?php echo HOME_URL; ?>/base_config.js"></script>
<script src="<?php echo HOME_URL; ?>/js/config.js"></script>
<script src="<?php echo HOME_URL; ?>/js/script.js"></script>
<script src="<?php echo HOME_URL; ?>/js/bootstrap/bootstrap.min.js"></script>
<!--<script src="<?php echo HOME_URL; ?>/js/libs/require/require.js"></script>
<script type="text/javascript">
requirejs(['/js/style.js']);
</script>-->
<script type="text/javascript">
    var API_CART_LIST  = '';
</script>