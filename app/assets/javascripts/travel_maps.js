function initMap() {
  var directionsDisplay = new google.maps.DirectionsRenderer;
  var directionsService = new google.maps.DirectionsService;
  

  var origin = new google.maps.LatLng(41.850033, -87.6500523);
  
  var destination = new google.maps.LatLng(42.850033, -85.6500523);
  
  var request = {
      origin:      origin,
      destination: destination,
      travelMode:  google.maps.TravelMode.DRIVING
      };


  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
      
      console.log(response);
        } 
    else { window.alert('Directions request failed due to ' + status);
        }
    
      console.log(response.routes[0].legs[0].duration.value);
      test += parseFloat(response.routes[0].legs[0].duration.value);
      console.log(test);
      return test;
  });

console.log(test);

}

