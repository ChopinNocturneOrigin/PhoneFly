/**
 * 
 */

 $(window).scroll( function () {
 
 var
   $floater = $('.floating'),  
  startPoint = 300,
    scrollPoint = parseInt( $(window).scrollTop() + parseInt( window.innerHeight ) );
  if(parseInt( scrollPoint ) < parseInt( startPoint ) ) {
    $floater.addClass('fixed');
  } else {
    $floater.removeClass('fixed');
  }
});