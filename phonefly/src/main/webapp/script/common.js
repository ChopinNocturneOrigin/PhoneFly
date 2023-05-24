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



/* 제품 상세 */ 

// 페이지 로딩시 기본값 세팅
var varCommOld = 2;
var varCommNew = 2;
var arrayCommArray = ["", "SKT", "KT", "LGT"];
var varDiscountMethod = 0;
var arrayDiscountText = ["공시지원할인", "선택약정할인"];
var arrayDiscountValue = [200000, 0];
var varBuyType = 1;
var varButTypeValue = [1, 24, 30, 36];


// 결과 값들
var varCc = 1;
var varCcTitleString = "기기변경";
var varCcTextString = "통신사는 그대로, 휴대폰만 바꾸고 싶어요.";
var varDiscountTitleString = "단말기 할인";
var varDiscountTextString = "개통당시 1회 단말기 구매 비용 할인";

var var_rplan_name = "";
var var_rplan_charge = 0;
var var_rplan_dataplan = "";
var var_rplan_timeplan = "";
var var_rplan_textplan = "";
selectPlan("플래티넘", 125000, "무제한", "유무선 무제한", "문자 무제한");

/* 함수 */
// 사용중인 통신사
function clickOldComm (nCommOld) {
	varCommOld = nCommOld;
	if (varCommOld === varCommNew) {
		varCc = 1;
		varCcTitleString = "기기변경";
		varCcTextString = "통신사는 그대로, 휴대폰만 바꾸고 싶어요.";
	} else {
		varCc = 0;
		varCcTitleString = "통신사이동";
		varCcTextString = "&nbsp;쓰던번호 그대로 "+arrayCommArray(varCommNew)+"로 통신사만 바꿀래요";
	}
	setFields();
}

// 사용하실 통신사
function clickNewComm (nCommNew) {
	varCommNew = nCommNew;
	if (varCommOld === varCommNew) {
		varCc = 1;
		varCcTitleString = "기기변경";
		varCcTextString = "통신사는 그대로, 휴대폰만 바꾸고 싶어요.";
	} else {
		varCc = 0;
		varCcTitleString = "통신사이동";
		varCcTextString = "&nbsp;쓰던번호 그대로 "+arrayCommArray(varCommNew)+"로 통신사만 바꿀래요";
	}
	if (varCommNew === 1) {
		selectPlan(1, "프라임플러스", 99000, "무제한", "유무선 무제한", "문자 무제한");
	} else if (varCommNew === 2) {
		selectPlan(2, "플래티넘", 125000, "무제한", "유무선 무제한", "문자 무제한");
	} else {
		selectPlan(3, "프리미어플러스", 105000, "무제한", "유무선 무제한", "문자 무제한");
	}
	setFields();
}


// 요금제
function selectPlan(n_rplan_name, n_rplan_charge, n_rplan_dataplan, n_rplan_timeplan, n_rplan_textplan) {
	var_rplan_name = n_rplan_name;
	var_rplan_charge = n_rplan_charge;
	var_rplan_dataplan = n_rplan_dataplan;
	var_rplan_timeplan = n_rplan_timeplan;
	var_rplan_textplan = n_rplan_textplan;
	setFields();
}

// 할인방법
function clickDiscountMethod(nDiscountMethod) {
	varDiscountMethod = nDiscountMethod;
	if (nDiscountMethod == 0) {
		arrayDiscountValue[0] = 200000;
		arrayDiscountValue[1] = 0;
		varDiscountTitleString = "단말기 할인";
		varDiscountTextString = "개통당시 1회 단말기 구매 비용 할인";
	} else {
		arrayDiscountValue[0] = 0;
		arrayDiscountValue[1] = 300000;
		varDiscountTitleString = "25% 요금할인";
		varDiscountTextString = "약정기간동안 매월 기본료 25%할인";
	}
	setFields();
}

// 구매방법





/* // 제품 상세 */ 
