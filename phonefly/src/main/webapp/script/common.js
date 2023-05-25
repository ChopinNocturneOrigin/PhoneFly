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







/* 제품 상세 */ 

// 페이지 로딩시 기본값 세팅
var varCommOld = 2;
var varCommNew = 2;
var arrayCommArray = ["", "SKT", "KT", "LGT"];
var varDiscount = 0;  // 결과값에 포함
var arrayDiscountText = ["공시지원할인", "선택약정할인"];
var arrayDiscountValue = [200000, 300000];
var varDiscountValueA = arrayDiscountValue[0];
var varDiscountValueB = arrayDiscountValue[1] / 24;
var varBuyplan = 1;
var varBuyplanValue = [1, 24, 30, 36]; // 결과값에 포함


// 결과 값들
var varRseq = 0;
var varCc = 1;
var varCcTitleString = "기기변경";
var varCcTextString = "&nbsp;통신사는 그대로, 휴대폰만 바꾸고 싶어요.";
var varDiscountTitleString = "단말기 할인";
var varDiscountTextString = "&nbsp;개통당시 1회 단말기 구매 비용 할인";

var var_rplan_name = "";
var var_rplan_charge = 0;
var var_rplan_dataplan = "";
var var_rplan_timeplan = "";
var var_rplan_textplan = "";


$(document).ready(function() {
	selectPlan("스페셜", 100000, "무제한", "유무선 무제한", "문자 무제한", "15");
	setFields();
});
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
		varCcTextString = "&nbsp;쓰던번호 그대로 "+arrayCommArray[varCommNew]+"로 통신사만 바꿀래요";
	}

	$(function(){
		$(".comm-old").removeClass("pdd-box-selected");
		$(".comm-old-"+nCommOld).addClass("pdd-box-selected");
	});

	setFields();
}

// 사용하실 통신사
function clickNewComm (nCommNew) {
	var commUrlArray = ['', '#layer-popup-skt', '#layer-popup-kt', '#layer-popup-lg'];
	varCommNew = nCommNew;
	if (varCommOld === varCommNew) {
		varCc = 1;
		varCcTitleString = "기기변경";
		varCcTextString = "&nbsp;통신사는 그대로, 휴대폰만 바꾸고 싶어요.";
	} else {
		varCc = 0;
		varCcTitleString = "통신사이동";
		varCcTextString = "&nbsp;쓰던번호 그대로 "+arrayCommArray[varCommNew]+"로 통신사만 바꿀래요";
	}
	if (varCommNew === 1) {
		selectPlan("플래티넘", 125000, "무제한", "유무선 무제한", "문자 무제한", "8");
	} else if (varCommNew === 2) {
		selectPlan("스페셜", 100000, "무제한", "유무선 무제한", "문자 무제한", "15");
	} else {
		selectPlan("프리미어슈퍼", 115000, "무제한", "유무선 무제한", "문자 무제한", "23");
	}

	$(function(){
		$(".comm-new").removeClass("pdd-box-selected");
		$(".comm-new-"+nCommNew).addClass("pdd-box-selected");
	});
	
	$("#btn-popup-open").attr("href", commUrlArray[nCommNew]);

	setFields();
}


// 요금제
function selectPlan(n_rplan_name, n_rplan_charge, n_rplan_dataplan, n_rplan_timeplan, n_rplan_textplan, n_rseq) {
	var_rplan_name = n_rplan_name;
	var_rplan_charge = n_rplan_charge;
	var_rplan_dataplan = n_rplan_dataplan;
	var_rplan_timeplan = n_rplan_timeplan;
	var_rplan_textplan = n_rplan_textplan;
	varRseq = n_rseq;
	setFields();
	$(".layer-popup").removeClass("show");
}

// 할인방법
function clickDiscountMethod(nDiscount) {
	varDiscount = nDiscount;
	if (nDiscount == 0) {
		arrayDiscountValue[0] = 200000;
		arrayDiscountValue[1] = 0;
		varDiscountTitleString = "단말기 할인";
		varDiscountTextString = "&nbsp;개통당시 1회 단말기 구매 비용 할인";
		$(function(){
			$(".discount-method-1").removeClass("display-none");
			$(".discount-method-2").addClass("display-none");
		});
	} else {
		arrayDiscountValue[0] = 0;
		arrayDiscountValue[1] = 300000;
		varDiscountTitleString = "25% 요금할인";
		varDiscountTextString = "&nbsp;약정기간동안 매월 기본료 25%할인";
		$(function(){
			$(".discount-method-2").removeClass("display-none");
			$(".discount-method-1").addClass("display-none");
		});
	}

	$(function(){
		$(".pdd-discount").removeClass("pdd-box-selected");
		$(".discount-"+nDiscount).addClass("pdd-box-selected");
	});

	setFields();
}

// 구매방법
function clickBuyType(nBuyplan, nBuyplanValue) {
	varBuyplan = nBuyplan;
	varBuyplanValue = nBuyplanValue;

	$(function(){
		$(".buy-type").removeClass("pdd-box-selected");
		$(".buy-type-"+nBuyplan).addClass("pdd-box-selected");
	});

	setFields();
}

// 데이터 화면에 세팅하기
function setFields () {
	//document.getElementById("rplan-name").innerText = var_rplan_name;
	var rplan_name_array = document.getElementsByClassName("rplan-name");
	var rplan_charge_array = document.getElementsByClassName("rplan-charge");
	var rplan_dataplan_array = document.getElementsByClassName("rplan-dataplan");
	var rplan_timeplan_array = document.getElementsByClassName("rplan-timeplan");
	var rplan_textplan_array = document.getElementsByClassName("rplan-textplan");

	var rseq_array = document.getElementsByClassName("rseq");
	
	var cc_array = document.getElementsByClassName("cc-value");
	var cc_title_array = document.getElementsByClassName("cc-title");
	var cc_text_array = document.getElementsByClassName("cc-text");

	var discount_id_array = document.getElementsByClassName("discount-id");
	var discount_title_array = document.getElementsByClassName("discount-title");
	var discount_text_array = document.getElementsByClassName("discount-text");
	var discount_value_a_array = document.getElementsByClassName("discount-value-a-text");
	var discount_value_b_array = document.getElementsByClassName("discount-value-b-text");

	for (var i = 0; i < rplan_name_array.length; i++) {
		rplan_name_array[i].innerText = var_rplan_name;
		rplan_name_array[i].value = var_rplan_name;
	}
	for (var i = 0; i < rplan_charge_array.length; i++) {
		rplan_charge_array[i].innerText = toCurrencyString(var_rplan_charge);
		rplan_charge_array[i].value = var_rplan_charge;
	}
	for (var i = 0; i < rplan_dataplan_array.length; i++) {
		rplan_dataplan_array[i].innerText = var_rplan_dataplan;
		rplan_dataplan_array[i].value = var_rplan_dataplan;
	}
	for (var i = 0; i < rplan_timeplan_array.length; i++) {
		rplan_timeplan_array[i].innerText = var_rplan_timeplan;
		rplan_timeplan_array[i].value = var_rplan_timeplan;
	}
	for (var i = 0; i < rplan_textplan_array.length; i++) {
		rplan_textplan_array[i].innerText = var_rplan_textplan;
		rplan_textplan_array[i].value = var_rplan_textplan;
	}

	for (var i = 0; i < rseq_array.length; i++) {
		rplan_textplan_array[i].value = varRseq;
	}

	for (var i = 0; i < cc_array.length; i++) {
		cc_array[i].value = varCc;
	}
	for (var i = 0; i < cc_title_array.length; i++) {
		cc_title_array[i].innerText = varCcTitleString;
	}
	for (var i = 0; i < cc_text_array.length; i++) {
		cc_text_array[i].innerHTML = varCcTextString;
	}

	for (var i = 0; i < discount_id_array.length; i++) {
		discount_id_array[i].value = varDiscount;
	}
	for (var i = 0; i < discount_title_array.length; i++) {
		discount_title_array[i].innerText = varDiscountTitleString;
	}
	for (var i = 0; i < discount_text_array.length; i++) {
		discount_text_array[i].innerHTML = varDiscountTextString;
	}
	discount_value_a_array
	discount_value_b_array
	for (var i = 0; i < discount_value_a_array.length; i++) {
		discount_value_a_array[i].innerText = '-' + toCurrencyString(varDiscountValueA);
	}
	for (var i = 0; i < discount_value_b_array.length; i++) {
		varDiscountValueB = arrayDiscountValue[1] / 24;
		discount_value_b_array[i].innerText = '-' + toCurrencyString(varDiscountValueB);
	}

}

/* // 제품 상세 */ 
