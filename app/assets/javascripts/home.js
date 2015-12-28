$(document).on('ready page:load', function () {
  var $imgs = $('#slideshow > a img'), current = 0;
  var nextImage = function() {
    if (current >= $imgs.length)
      current = 0;
    $imgs.eq(current++).fadeIn(function() {
      $(this).delay(5000).fadeOut(nextImage);
    })
  }
  nextImage();
});