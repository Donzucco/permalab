$(function() {

	// ###### parallax ######
	// Check for powerful desktop platform
	if (
		navigator.userAgent.indexOf('Intel Mac OS X') !== -1 ||
		navigator.userAgent.indexOf('Windows NT') !== -1 ||
		navigator.userAgent.indexOf('x86') !== -1 ||
		navigator.userAgent.indexOf('amd64') !== -1 ||
		navigator.userAgent.indexOf('i686') !== -1
	) {
		// Add a nice parallax effect to waste background
		$(window).on("load resize scroll orientationchange",function(e) {
			$('#content').css({
				'background-position' : '0 -'+($(window).scrollTop()/2)+'px'
			});
		});
	}


	$(window).on("load resize scroll",function() {
		var preNavbarHeight = $('#pre-navbar').height();
		var scrollPosition = $(window).scrollTop();

		if (scrollPosition > preNavbarHeight) {
			$('#navbar').addClass('navbar-fixed-top');
			$('#navbar .navbar-brand').stop().animate({width: 'show'}, 100);
		} else {
			$('#navbar').removeClass('navbar-fixed-top');
			$('#navbar .navbar-brand').stop().animate({width: 'hide'}, 100);
		}
	});

});
