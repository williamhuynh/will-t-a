function initMap() {
        directionsDisplay = new google.maps.DirectionsRenderer;
        directionsService = new google.maps.DirectionsService;
        
        var something = calcRoute();
        console.log (something);
        
      }


function calcRoute() {
  var origin      = new google.maps.LatLng(41.850033, -87.6500523);
  var destination = new google.maps.LatLng(42.850033, -85.6500523);
  var request = {
      origin:      origin,
      destination: destination,
      travelMode:  google.maps.TravelMode.DRIVING
  };
  
  var response = directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
      var something = response;
      console.log(response);
        } 
    else { window.alert('Directions request failed due to ' + status);
        }
    
    return response;
  });
  
  console.log(response);
  console.log(something);
  return response;
  
}
