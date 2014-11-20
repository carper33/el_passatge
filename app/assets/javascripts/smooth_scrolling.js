  /*
   * Navigation effects
   */
function smooth_scrolling() {
  $( 'a[href=#top]' ).click( function( e ) {
    e.preventDefault;
    animateScroll( 0 )
    styleSection( this );
    return false;
  });
  $( 'a[href*=#]:not([href=#])' ).click( function ( e ) {
    e.preventDefault;
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        animateScroll(target.offset().top - $('.top-bar').height());
        styleSection(this);
        return false;
      }
    }
  });
}
function styleSection( element ) {
  $( 'li.active' ).not( element ).removeClass( 'active' );
  $( element ).parent().toggleClass( 'active' );
}
function animateScroll( scrollY ) {
  $( 'html, body' ).animate( {
    scrollTop: scrollY
  }, 1000);
}