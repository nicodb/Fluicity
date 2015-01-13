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
})