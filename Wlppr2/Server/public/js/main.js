var c = new WppController();
	  
$(function() {
	c.setLatestWlppr();
	
	$('body').on('click', '.WppListItem', function() {
		$('.selected').removeClass('selected');
		$(this).addClass('selected');
	});
	
	$(window).resize(function() {
		$('#WppMainWindow').css({height: $(window).height()});
		$('#WppBody').css({width: $(window).width() - 198});
	});
	
	$(window).resize();
	
});