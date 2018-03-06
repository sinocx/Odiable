const backColor = document.querySelectorAll(".collection_radio_buttons")
backColor.forEach( function(element){
  element.addEventListener('click', (event) => {
    $(".collection_radio_buttons").removeClass('actives');
  });
});

$(document).ready(function(){
 $(".collection_radio_buttons ").click(function(){
   $(this).toggleClass("actives");
 });
});

