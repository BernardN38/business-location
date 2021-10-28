function allRatingsCount(){
    ratingsCount = $('.ratings-count').val()
    console.log(ratingsCount)
    if ($(window).width() < 600) {
      console.log('test')
    $('.col-4').addClass('col-6');
    $('.col-4').removeClass('col-4');
    $('.types').hide()
  } 
}

$(window).on('resize', function() {
    var win = $(this);
    if (win.width() < 600) {
        console.log('test')
      $('.col-4').addClass('col-6');
      $('.col-4').removeClass('col-4');
      $('.types').hide()
    } 
  });

if ($(window).width() < 600) {
  $('.col-4').addClass('col-6');
  $('.col-4').removeClass('col-4');
  $('.types').hide()
} 