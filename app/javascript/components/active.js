const backColor = document.querySelectorAll(".collection_radio_buttons")
backColor.forEach( function(element){
  element.addEventListener('click', (event) => {
    $(".collection_radio_buttons").removeClass('actives');
  });
})
$(document).ready(function(){
 $(".collection_radio_buttons").click(function(){
   $(this).toggleClass("actives");
 });
});

// // $("input:radio[name= 'offer[hypothese_id]']").click(function(){
// //    $("input[name='offer[hypothese_id]']").removeClass('actives');
// //    $(this).addClass('actives');
// // });
// (".collection_radio_buttons").on('click', function(){
//     var n=$(this).attr("name");
//    $("input[name='"+n+"']").parent().removeClass('actives').removeAttr('checked');  ;
//    $(this).parent().addClass('actives').attr('checked', 'checked');
// });
