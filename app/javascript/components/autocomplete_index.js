function autocomplete3() {
  document.addEventListener("DOMContentLoaded", function() {
    var searchIndex = document.getElementById('searchindex');

    if (searchIndex) {
      var autocomplete = new google.maps.places.Autocomplete(searchIndex, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(searchIndex, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete3 };
