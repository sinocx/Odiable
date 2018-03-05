import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');

if (mapElement) { // don't try to build a map if there's no div#map to inject in

  const markers = JSON.parse(mapElement.dataset.markers);
  if (markers.length === 0) {
    const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    map.addMarkers(markers);
    map.setZoom(2);
  } else if (markers.length === 1) {
    const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    map.addMarkers(markers);
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else if (markers.length === 2) {
    console.log(markers);
    var depart = markers[0];
    var arrivee = markers[1];

    var map = new google.maps.Map(document.getElementById('map'), {
      center: depart,
      zoom: 7
    });

    var directionsDisplay = new google.maps.DirectionsRenderer({
      map: map
    });

    // Set destination, origin and travel mode.
    var request = {
      destination: arrivee,
      origin: depart,
      travelMode: 'DRIVING'
    };

    // Pass the directions request to the directions service.
    var directionsService = new google.maps.DirectionsService();
    directionsService.route(request, function(response, status) {
      if (status == 'OK') {
        // Display the route on the map.
        directionsDisplay.setDirections(response);
      }
    });
  } else {
    map.fitLatLngBounds(markers);
  }
}





  //    // Set destination, origin and travel mode.
  //    var request = {
  //      destination: markers[0],
  //      origin: markers[1],
  //      travelMode: 'DRIVING'
  //    };

  //    // Pass the directions request to the directions service.
  //    var directionsService = new google.maps.DirectionsService();
  //    directionsService.route(request, function(response, status) {
  //      if (status == 'OK') {
  //        // Display the route on the map.
  //        directionsDisplay.setDirections(response);
  //      }
  //    });
  // }
  //   var directionsDisplay = new google.maps.DirectionsRenderer({
  //      map: map
  //    });
 // code du cours à rajouter

import { autocomplete } from '../components/autocomplete';
autocomplete();

import { autocomplete2 } from '../components/autocomplete2';
autocomplete2();
import { autocomplete3 } from '../components/autocomplete_index';
autocomplete2();
