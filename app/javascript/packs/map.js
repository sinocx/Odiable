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
      travelMode: 'DRIVING',
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
    console.log("hello")

  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    map.addMarkers(markers);
    map.setCenter(markers[0].lat, markers[0].lng);

    map.setZoom(11.5);


  }
}



    var origin1 = markers[0];
    var origin2 = markers[1];
    var destinationA = markers[0];
    var destinationB = markers[1];

    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix(
      {
        origins: [origin1, origin2],
        destinations: [destinationA, destinationB],
        travelMode: 'DRIVING',
        transitOptions: TransitOptions,
        drivingOptions: DrivingOptions,
        unitSystem: UnitSystem,
        avoidHighways: Boolean,
        avoidTolls: Boolean,
      }, callback);

    function callback(response, status) {
      // See Parsing the Results for
      // the basics of a callback function.
    }

import { autocomplete } from '../components/autocomplete';
autocomplete();

import { autocomplete2 } from '../components/autocomplete2';
autocomplete2();
import { autocomplete3 } from '../components/autocomplete_index';
autocomplete2();
