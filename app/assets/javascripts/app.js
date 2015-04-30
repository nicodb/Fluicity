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

$('#circle1').circleProgress({
  value: 0.39,
  size: 130,
  fill: {
    color: "#333333"
  }
});

$('#circle2').circleProgress({
  value: 0.87,
  size: 130,
  fill: {
    color: "#333333"
  }
});

$('#circle3').circleProgress({
  value: 0.71,
  size: 130,
  fill: {
    color: "#333333"
  }
});