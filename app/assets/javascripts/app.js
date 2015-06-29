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
  value: 0.82,
  size: 130,
  fill: {
    color: "#333333"
  }
});

$('#circle3').circleProgress({
  value: 0.53,
  size: 130,
  fill: {
    color: "#333333"
  }
});

$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});


$('.question').click(function (e) {
  e.preventDefault();
  $(this).next('.answer').toggleClass('is-visible');
  $(this).find('i').toggleClass('fa-plus').toggleClass('fa-minus');
});

