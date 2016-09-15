$( document ).ready(function() {

  $(".dropdown-button").dropdown();
  $('.modal-trigger').leanModal();
  $('#loginSubmit').closeModal();
  $('.carousel').carousel();
  autoplay()   
  function autoplay() {
      $('.carousel').carousel('next');
      setTimeout(autoplay, 4000);
  }

});


 $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });

      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -33.8688, lng: 151.2195},
          zoom: 11
        });
        var input = /** @type {!HTMLInputElement} */(
            document.getElementById('pac-input'));

        var types = document.getElementById('type-selector');
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(types);

        var autocomplete = new google.maps.places.Autocomplete(input);
        autocomplete.bindTo('bounds', map);

        var infowindow = new google.maps.InfoWindow();
        var marker = new google.maps.Marker({
          map: map,
          anchorPoint: new google.maps.Point(0, -29)
        });

        $.getJSON("/api/listings", function(json1) {
        $.each(json1, function(key, data) {
        var latLng = new google.maps.LatLng(data.latitude, data.longitude); 
        // Creating a marker and putting it on the map
        var marker = new google.maps.Marker({
                        position: latLng,
                        map: map,
                        title: data.title
                    });
        var infowindow = new google.maps.InfoWindow({
          content: "hello world"
        });

        marker.addListener('click', function() {
          infowindow.open(map, marker);
        });
                });
            });
        

        autocomplete.addListener('place_changed', function() {
          infowindow.close();
          marker.setVisible(false);
          var place = autocomplete.getPlace();
          if (!place.geometry) {
            window.alert("Autocomplete's returned place contains no geometry");
            return;
          }

          // If the place has a geometry, then present it on a map.
          if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
          } else {
            map.setCenter(place.geometry.location);
            map.setZoom(17);  // Why 17? Because it looks good.
          }
          marker.setIcon(/** @type {google.maps.Icon} */({
            url: place.icon,
            size: new google.maps.Size(71, 71),
            origin: new google.maps.Point(0, 0),
            anchor: new google.maps.Point(17, 34),
            scaledSize: new google.maps.Size(35, 35)
          }));
          marker.setPosition(place.geometry.location);
          marker.setVisible(true);

          var address = '';
          if (place.address_components) {
            address = [
              (place.address_components[0] && place.address_components[0].short_name || ''),
              (place.address_components[1] && place.address_components[1].short_name || ''),
              (place.address_components[2] && place.address_components[2].short_name || '')
            ].join(' ');
          }

          infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
          infowindow.open(map, marker);
        });

        // Sets a listener on a radio button to change the filter type on Places
        // Autocomplete.
        // function setupClickListener(id, types) {
        //   var radioButton = document.getElementById(id);
        //   radioButton.addEventListener('click', function() {
        //     autocomplete.setTypes(types);
        //   });
        // }

      //   setupClickListener('changetype-all', []);
      //   setupClickListener('changetype-address', ['address']);
      //   setupClickListener('changetype-establishment', ['establishment']);
      //   setupClickListener('changetype-geocode', ['geocode']);
      }



// var Geocoder = google.maps.Geocoder;


// $.ajax({
//   url: '/api/listing'
// })


// listing.forEach(function(element) {
// Geocoder.geocode({
//   address: element.address,
// }, function(res, status) {
//   console.log(res);
// })

// })






