$(function() {
	// Tooltip
	$(function () {
	  $('[data-toggle="tooltip"]').tooltip();
	});
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
			if ($('#navbar').data('fixed')) return;
			$('#navbar').data('fixed',true);
			$('#navbar').addClass('navbar-fixed-top');
			$('#navbar .navbar-brand').stop().css({"opacity": 0}).animate({width: 'show'}, 100).animate({"opacity": 1},500);
		} else {
			if (!$('#navbar').data('fixed')) return;
			$('#navbar').data('fixed',false);
			$('#navbar').removeClass('navbar-fixed-top');
			$('#navbar .navbar-brand').stop().animate({"opacity": 0},500).animate({width: 'hide'}, 100);
		}
	});

});
