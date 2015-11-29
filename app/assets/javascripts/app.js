function ShrinkNavbar(){
  $window = $(window);
  $window.scroll(function(){
    if($window.scrollTop() > 0){
      $('#navbar').addClass('navbar-scrolled');
      //$('#brand').removeClass('hidden');
    }else{
      $('#navbar').removeClass('navbar-scrolled');
      //$('#brand').addClass('hidden');
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

// HOME - FEATURES SECTION

$(function () {
  var $lists = $('#item-list li').click(function(e) {
    $lists.filter('.active').removeClass('active');
    $(this).addClass('active');
    e.preventDefault() /*ignores actual link*/
});

  $('#item-1').click(function(e) {
    $('#screen li').filter('.active').removeClass('active');
    $('#slide_1').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#item-2').click(function(e) {
    $('#screen li').filter('.active').removeClass('active');
    $('#slide_2').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#item-3').click(function(e) {
    $('#screen li').filter('.active').removeClass('active');
    $('#slide_3').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });
});

// HOME - AWARDS SECTION

$(function () {
  var $lists = $('#awards-list li').click(function(e) {
    $lists.filter('.active').removeClass('active');
    $(this).addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#award-1').click(function(e) {
    $('#awards-ref-list li').filter('.active').removeClass('active');
    $('#award-ref-1').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#award-2').click(function(e) {
    $('#awards-ref-list li').filter('.active').removeClass('active');
    $('#award-ref-2').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#award-3').click(function(e) {
    $('#awards-ref-list li').filter('.active').removeClass('active');
    $('#award-ref-3').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#award-4').click(function(e) {
    $('#awards-ref-list li').filter('.active').removeClass('active');
    $('#award-ref-4').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });
});

// HOME - TESTIMONIALS

$(function () {
  var $lists = $('#testimonials-nav li').click(function(e) {
    $lists.filter('.active').removeClass('active');
    $(this).addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#testimonials-nav-1').click(function(e) {
    $('#testimonials-list li').filter('.active').removeClass('active');
    $('#testimonial-1').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#testimonials-nav-2').click(function(e) {
    $('#testimonials-list li').filter('.active').removeClass('active');
    $('#testimonial-2').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });

  $('#testimonials-nav-3').click(function(e) {
    $('#testimonials-list li').filter('.active').removeClass('active');
    $('#testimonial-3').addClass('active');
    e.preventDefault() /*ignores actual link*/
  });
});

// TEAM - CARD DESCRIPTION

$(document).on('click', '#members > li', function (e) {
  e.preventDefault();
  $(this).siblings('li').find('#member-description').not('description-hidden').addClass('description-hidden');
  $(this).closest('li').find('#member-description').toggleClass('description-hidden');
});

// WEBSITE - TRANSITION

$(document).ready(function() {
  $(".animsition").animsition({
    inClass: 'fade-in',
    outClass: 'fade-out',
    inDuration: 1500,
    outDuration: 800,
    linkElement: '.animsition-link',
    // e.g. linkElement: 'a:not([target="_blank"]):not([href^=#])'
    loading: true,
    loadingParentElement: 'body', //animsition wrapper element
    loadingClass: 'animsition-loading',
    loadingInner: '', // e.g '<img src="loading.svg" />'
    timeout: false,
    timeoutCountdown: 5000,
    onLoadEvent: true,
    browser: [ 'animation-duration', '-webkit-animation-duration'],
    // "browser" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser.
    // The default setting is to disable the "animsition" in a browser that does not support "animation-duration".
    overlay : false,
    overlayClass : 'animsition-overlay-slide',
    overlayParentElement : 'body',
    transition: function(url){ window.location.href = url; }
  });
});