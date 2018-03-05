function autocomplete2() {
  document.addEventListener("DOMContentLoaded", function() {
    var searchAddress1 = document.getElementById('product_ad');

    if (searchAddress1) {
      var autocomplete = new google.maps.places.Autocomplete(searchAddress1, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(searchAddress1, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete2 };
