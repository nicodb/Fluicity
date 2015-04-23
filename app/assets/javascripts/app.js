function ShrinkNavbar(){
  $window = $(window);
  $window.scroll(function(){
    if($window.scrollTop() > 50){
      $('#navbar').addClass('navbar-scrolled');
    }else{
      $('#navbar').removeClass('navbar-scrolled');
    }
  })
}

$(document).ready(function(){
  ShrinkNavbar();

  $('.count').each(function () {
      $(this).prop('Counter',0).animate({
          Counter: $(this).text()
      }, {
          duration: 2000,
          easing: 'swing',
          step: function (now) {
              $(this).text(Math.ceil(now));
          }
      });
  });

})