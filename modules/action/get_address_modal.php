
<?php
$phone = isset($_POST['phone'])? $_POST['phone']: '';
$address = isset($_POST['address'])? $_POST['address']: '';
$km = isset($_POST['km'])? $_POST['km']: 0;
$cost = isset($_POST['cost'])? $_POST['cost']: 0;
?>
  <div class="modal-dialog mobile-modal" role="document">
    <div class="modal-content">
      <div class="modal-nav ">
        <div class="container">
          <nav class="navbar navbar-blue row  justify-content-between align-items-center">
            <div class="navbar-left col-auto"><span class="navbar-link navbar-link-txt text-left modal-close svg-md" data-dismiss="modal" aria-label="Close"><img src="/images/close.svg" class="svg-inline"></span></div>
			<div class="navbar-title text-center col text-truncate">Nhà Cám</div>
			<div class="navbar-right col-auto"><span class="navbar-link modal-close-address svg-md" data-dismiss="modal" aria-hidden="true"><img class="svg-inline" src="/images/check.svg"></span></div>
          </nav>
        </div>
      </div>
	  <div class="modal-body" style="margin-top:50px;">
	  <script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBfPZhOobyQI9SCUhFCAxO7FaSBWIKTrRQ&libraries=places&callback=initMap"></script>
	<script type='text/javascript'>
		function calculateAndDisplayRoute(directionsService, directionsDisplay) {
			directionsService.route({
			origin: "<?php echo getConstant('address_contact') ?>",
			destination: document.getElementById('main_address').value,
			travelMode: google.maps.TravelMode.DRIVING
			}, function(response, status) {
				if (status === google.maps.DirectionsStatus.OK) {
					directionsDisplay.setDirections(response);
					var htmlReturn = '';
					var route = response.routes[0];
					var km = route.legs[0].distance.text;
					
					km = km.split(" ")[0];
					console.log('km is', km)
					km = km.replace(',', '.');
					document.getElementById('distance').innerHTML = 'Khoảng cách là '+ km + ' km';
					document.getElementById('km_distance').value = km;
					var leg1 = <?php  echo getPage('shipping_rate1', 'comment'); ?>;
					var leg2 = <?php echo getPage('shipping_rate2', 'comment'); ?>;
					var shippingCost = km <=2 ? leg1 : ((+leg1) + (+km-2)*(+leg2))
					document.getElementById('cal_shipping').value = shippingCost;
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
			var options = {
				types: ['address'],
				componentRestrictions: {
				country: 'vn'
				}
			};
			var searchBox = new google.maps.places.Autocomplete(document.getElementById('main_address'), options);
			searchBox.setFields(['address_component', 'name']);
			google.maps.event.addListener( searchBox, 'places_changed', function(){
				var places = searchBox.getPlaces();
				if (places.length == 0) {
					document.getElementById('distance').innerHTML = '';
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
			document.getElementById('main_address').addEventListener('change', onChangeHandler);
		}
		function geolocate() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
				var geolocation = {
					lat: position.coords.latitude,
					lng: position.coords.longitude
				};
				var circle = new google.maps.Circle(
					{center: geolocation, radius: position.coords.accuracy});
				autocomplete.setBounds(circle.getBounds());
				});
			}
		}
	</script>
        <div >
            <div id="map" style="display:none"></div>
            <div class="embed-responsive-item">
                <div class="woocommerce-billing-fields__field-wrapper">
                    <p class="form-row form-row-wide address-field validate-required validate-required" id="main_address_field">
                        <label for="main_address" class="">Địa chỉ<span class="required">*</span></label>
                        <input type="text" class="input-text pac-target-input" name="main_address" id="main_address" placeholder="Street address" value="<?php echo $address?>" onFocus="geolocate()" required="">
                    </p>
					<div class="label_error" id="error_address"></div>
					<p class="form-row form-row-wide validate-required validate-phone validate-required validate-phone" id="billing_phone_field">
                        <label for="billing_phone" class="">Số điện thoại<span class="required">*</span></label>
                        <input type="text" class="input-text" name="billing_phone" id="billing_phone" placeholder="" value="<?php echo $phone?>" autocomplete="tel">
                    </p>
                    <div class="label_error" id="error_phone"></div>
                </div>
			</div>
			<div id="distance"></div>
			<input type="hidden" name="hidden_input" id="km_distance" value="<?php echo $km ?>">
			<input type="hidden" name="hidden_cal" id="cal_shipping" value="<?php echo $cost ?> ">
		</div>
		
      </div>
    </div>
  </div>