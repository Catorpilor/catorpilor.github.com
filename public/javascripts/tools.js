// NOTICE!! DO NOT USE ANY OF THIS JAVASCRIPT
// IT'S ALL JUST JUNK FOR OUR DOCS!
// ++++++++++++++++++++++++++++++++++++++++++

!function ($) {

  $(function(){

    var $window = $(window)
	$('ul.nav > li').click(function (e) {
            e.preventDefault();
            $('ul.nav > li').removeClass('active');
            $(this).addClass('active');                
     }); 
	 var $backtotop = $('#backtotop');
		var top = $(window).height() - $backtotop.height() - 90;
	    $backtotop.css({ top: top, right: 100 });
	    $backtotop.click(function () {
			$('html,body').animate({ scrollTop: 0 });
			 return false;
		});
		$(window).scroll(function () {
			var windowHeight = $(window).scrollTop();
			if (windowHeight > 200) {
			  $backtotop.fadeIn();
			} else {
			  $backtotop.fadeOut();
			}
		});
		alert("dfsddfadf")

}(window.jQuery)