$(document).ready(function(){

	$('p').css('border', '1px dotted blue');
	$('h1').css('font-family', 'helvetica');

	$('img').fadeOut(5000, function(){
		$(this).attr('src', 'thumbs.jpg').fadeIn(5000);
			});
	$('button').click(function(){
		$('img').css('border', '15px dotted red');
	});
});