// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require jquery.turbolinks
//= require_tree .


$(document).ready(function(){
  
  // Responsive Nav
  $('.menu-btn').click(function(){
    $('.mobile-menu').slideToggle("slow");
  });
  
  // Flash message timer
  setTimeout(function(){
    $('.alert-notice').fadeOut("slow", function(){
      $('this').remove();
    })
  }, 2000);
  setTimeout(function(){
    $('.alert-alert').fadeOut("slow", function(){
      $('this').remove();
    })
  }, 2000);
  
  // Back to top button
  $(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('.to-top').fadeIn();
		} else {
			$('.to-top').fadeOut();
		}
	});
  
  $('.to-top').click(function(e){
    e.preventDefault();
    $('html, body').animate({scrollTop : 0},800);
  });
  
});

// Google Map
function initialize() {
  var myCenter=new google.maps.LatLng(33.759753,-117.991321);
  var mapProp = {
    center: myCenter,
    zoom: 13,
    scrollwheel: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
  var marker=new google.maps.Marker({
    position:myCenter
    });
  google.maps.event.addListener(map, 'click', function(event){
        this.setOptions({scrollwheel:true});
    });
  marker.setMap(map);
}


