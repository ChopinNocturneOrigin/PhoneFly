/**
 * author : BHS
 */
"use strict"






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








