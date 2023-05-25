/**
 * author : BHS
 */


/* 맨위로 돌아가기 */
var backToTopReady = () => {
	// Scroll | button show/hide
	window.addEventListener('scroll', () => {
		if (document.querySelector('html').scrollTop > 100) {
			document.getElementById('go_top').style.display = "block";
		} else {
			document.getElementById('go_top').style.display = "none";
		}
	});
};
backToTopReady();

// back to top
var backToTop = () => {
	window.scrollTo({
		top: 0,
		left: 0,
		behavior: 'smooth'
	});
};

/* // 맨 위로 돌아가기 */



/* 레이어 팝업 */
/* class="layer-popup show" */
// 팝업 열기
$(document).on("click", ".btn-divpopup-open", function (e){
	var target = $(this).attr("href");
	$(target).addClass("show");
});

// 외부영역 클릭 시 팝업 닫기
$(document).mouseup(function (e){
	var LayerPopup = $(".layer-popup");
	if (LayerPopup.has(e.target).length === 0) {
		LayerPopup.removeClass("show");
	}
});
/* // 레이어 팝업 */



/* 스크롤 */
$(window).scroll( function () {
	var
	$floater = $('#pdd-scroll-box'),
	startPoint = 140,
	scrollPoint = parseInt( $(window).scrollTop() );
	if (parseInt( scrollPoint ) > parseInt( startPoint ) ) {
		$floater.css("top", ($(window).scrollTop() - startPoint));
	} else {
		$floater.css("top", 0);
	}
});
/* // 스크롤*/





/* 정수를 통화 단위 콤마 스트링으로 변환 */

 function toCurrencyString(num) {
	var regexp = /\B(?=(\d{3})+(?!\d))/g;
	return num.toString().replace(regexp, ',');
}

/* // 정수를 통화 단위 콤마 스트링으로 변환 */






