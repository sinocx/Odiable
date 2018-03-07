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
    // map.addMarkers(markers);
    console.log(markers)
    var depart = markers[0];
    var arrivee = markers[1];

    const url = 'https://png.icons8.com/material/32/F43D40/marker.png'
    const url2 = 'https://png.icons8.com/material/32/009F7B/marker.png'

    const mapz = document.getElementById('map')

    var map = new google.maps.Map(mapz, {
      center: depart,
      icon: url,
      zoom: 7

    });
    // mapz.addMarker({ lat: 48.86, lng: 2.36});
    const stuff = new google.maps.Marker({
      position: markers[0],
      map: map,
      icon: url
    })

    const stuff2 = new google.maps.Marker({
      position: markers[1],
      map: map,
      icon: url2
    })

    var directionsDisplay = new google.maps.DirectionsRenderer({
      map: map,
      suppressMarkers: true
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


import { autocomplete } from '../components/autocomplete';
autocomplete();

import { autocomplete2 } from '../components/autocomplete2';
autocomplete2();
import { autocomplete3 } from '../components/autocomplete_index';
autocomplete2();
