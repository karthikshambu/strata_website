$(document).on('ready page:load', function () {
  var $imgs = $('#slideshow > a img'), current = 0;
  var nextImage = function() {
    if (current >= $imgs.length)
      current = 0;
    $imgs.eq(current++).fadeIn(function() {
      $(this).delay(3000).fadeOut(nextImage);
    })
  }
  nextImage();
});

// li_arr = $("#animat-screenshot li");
// size = $("#animat-screenshot li").size();
// while (1)
// {
//   for (i = 0; i < li_arr.length; i++) {
//     obj = li_arr[i];
//     previous_obj = li_arr[i==0?li_arr.length-1:i-1];
//     previous_obj.style.display = 'none';
//     obj.style.display = 'block';
//   }
// }
