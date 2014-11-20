// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .
//= require smooth_scrolling

$(function(){
 $(document).foundation({
    ///se toca a partir de aqui
    orbit: {
      animation: 'slide',
      timer_speed: 3000,
      pause_on_hover: true,
      animation_speed: 500,
      navigation_arrows: true,
      bullets: true,
    }
    //// se toca hasta aqui
  });
 (function(){
  smooth_scrolling();
 }());


});