/**
 * author : BHS
 */

function colorClick(i, j) {
	$(function(){
		$(".card_color_buttons_"+i+" li>div>div").removeClass("color_button_selector");
		$(".card_color_buttons_"+i+" li>div>div").eq(j-1).addClass("color_button_selector");
		$(".card_img_"+i+" li img").fadeOut(100);
		$(".card_img_"+i+" li img").eq(j-1).fadeIn(0);
	});
}
