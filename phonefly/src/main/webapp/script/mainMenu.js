/**
 * author : BHS
 */


$(function(){
	let sIndex = parseInt(sessionStorage.getItem("menuIndex"));
	function setHover() {
		let idx = $(this).index();
		if (sIndex === idx) {
			$(".main_menu").eq(sIndex).removeClass("main_menu_select");
		}
		$(".main_menu").eq(idx).addClass("main_menu_hover");
	}
	function clearHover() {
		let idx = $(this).index();
		if (sIndex === idx) {
			$(".main_menu").eq(sIndex).addClass("main_menu_select");
		}
		$(".main_menu").eq(idx).removeClass("main_menu_hover");
	}
	function setClick() {
		let idx = $(this).index();
		sessionStorage.setItem("menuIndex", String(idx));
 		if (sessionStorage.getItem("menuIndex") === null) {
			$(".main_menu").eq(idx).addClass("main_menu_select");
		} else {
			$(".main_menu").eq(sIndex).removeClass("main_menu_select");
			$(".main_menu").eq(idx).addClass("main_menu_select");
		}
	}
	function reload() {
		$(".main_menu").eq(sIndex).addClass("main_menu_select");
	}
	$("#menu li").hover(setHover,clearHover);
	$("#menu>ul>li").click(setClick);
	$().ready(reload);
});
