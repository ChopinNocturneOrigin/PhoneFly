/**
 * author : BHS
 */


let compare_box_count = 0;

/* 비교하기 카드(펼치기 숨기기) */
function openCloseArrow(){// console.log("비교하기 카드(펼치기 숨기기)");
	$(function(){
		if ($('.compare-popup').hasClass('compare-popup-open')) {
			$('.compare-popup').removeClass('compare-popup-open');
			$('.compare-popup').addClass('compare-popup-close');
			$('.arrow-i').removeClass('disabled');
		} else {
			$('.compare-popup').removeClass('compare-popup-close');
			$('.compare-popup').addClass('compare-popup-open');
			$('.arrow-i').addClass('disabled');
		}
	});
}



function compareProduct(pseq_from) {
	if (compare_box_count > 3) {
		return;
	}
	let pseq_list = document.getElementsByClassName('pdPseq');
	let image_list = document.getElementsByClassName('pdImg');
	let name_list = document.getElementsByClassName('pdName');
	let price_list = document.getElementsByClassName('pdPrice');
	let compare_price_list = document.getElementsByClassName('card_compare_price');
	let plus_btn_list = document.getElementsByClassName('plus_button');
	
	let comp_image_list = document.getElementsByClassName('compare-box-image-real');
	let comp_name_list = document.getElementsByClassName('compare-box-name');
	let comp_price_list = document.getElementsByClassName('compare-box-price');
	let comp_x_btn_list = document.getElementsByClassName('compare-box-xbtn');

	let comp_image_h_list = document.getElementsByClassName('compare-box-image-real-h');
	let comp_name_h_list = document.getElementsByClassName('compare-box-name-h');
	let comp_price_h_list = document.getElementsByClassName('compare-box-price-h');
	let comp_x_btn_h_list = document.getElementsByClassName('compare-box-xbtn-h');
	
	for (let i = 0; i < pseq_list.length; i++) {
		if (pseq_from == pseq_list[i].value) {
			compare_price_list[i].classList.add('disabled');
			plus_btn_list[i].classList.add('disabled');

			comp_image_list[compare_box_count].src = 'images/productImage/' + image_list[i].value;
			comp_name_list[compare_box_count].innerHTML = name_list[i].value;
			comp_price_list[compare_box_count].innerHTML = price_list[i].value;
			comp_x_btn_list[compare_box_count].value = pseq_from;

			comp_image_h_list[compare_box_count].value = 'images/productImage/' + image_list[i].value;
			comp_name_h_list[compare_box_count].value = name_list[i].value;
			comp_price_h_list[compare_box_count].value = price_list[i].value;
			comp_x_btn_h_list[compare_box_count].value = pseq_from;


			$(function(){
				$('.compare-box').eq(compare_box_count-1).removeClass('disabled');
				$('.compare-box-image').eq(compare_box_count-1).removeClass('display-none');
				$('.compare-box-text').eq(compare_box_count-1).removeClass('display-none');
				$('.compare-box-price').eq(compare_box_count-1).removeClass('display-none');
				$('.compare-box-xbtn').eq(compare_box_count-1).removeClass('display-none');
			});

			compare_box_count++;
		}
	}
	if (pseq_list.length > 0) {
		$(function(){
			$('.compare-popup').removeClass('compare-popup-close');
			$('.compare-popup').addClass('compare-popup-open');
		});
	}
}



function btnReset() {
	compare_box_count = 0;

	$(function(){
		$('.compare-box').addClass('disabled');
		$('.compare-box-image').addClass('display-none');
		$('.compare-box-text').addClass('display-none');
		$('.compare-box-price').addClass('display-none');
		$('.compare-box-xbtn').addClass('display-none');
		$('.compare-popup').removeClass('compare-popup-close');
		$('.compare-popup').removeClass('compare-popup-open');
		$('.card_compare_price').removeClass('disabled');
		$('.plus_button').removeClass('disabled');
	});
}



function btnX(count) {
	let local_count = 0;
	let pseq_list = document.getElementsByClassName('pdPseq');
	let compare_price_list = document.getElementsByClassName('card_compare_price');
	let plus_btn_list = document.getElementsByClassName('plus_button');
	
	let comp_image_list = document.getElementsByClassName('compare-box-image-real');
	let comp_name_list = document.getElementsByClassName('compare-box-name');
	let comp_price_list = document.getElementsByClassName('compare-box-price');
	let comp_x_btn_list = document.getElementsByClassName('compare-box-xbtn');

	let comp_image_h_list = document.getElementsByClassName('compare-box-image-real-h');
	let comp_name_h_list = document.getElementsByClassName('compare-box-name-h');
	let comp_price_h_list = document.getElementsByClassName('compare-box-price-h');
	let comp_x_btn_h_list = document.getElementsByClassName('compare-box-xbtn-h');

	for (let i = 0; i < pseq_list.length; i++) {
		if (comp_x_btn_list[count].value == pseq_list[i].value) {
			compare_price_list[i].classList.remove('disabled');
			plus_btn_list[i].classList.remove('disabled');
		}
	}

	for (let i = 0; i < comp_x_btn_list.length; i++) {
		if (i !== count) {
			comp_image_list[local_count].src = comp_image_h_list[i].value;
			comp_name_list[local_count].innerHTML = comp_name_h_list[i].value;
			comp_price_list[local_count].innerHTML = comp_price_h_list[i].value;
			comp_x_btn_list[local_count].value = comp_x_btn_h_list[i].value;
			local_count++;
		}
	}

	$(function(){
		$('.compare-box').eq(compare_box_count).addClass('disabled');
		$('.compare-box-image').eq(compare_box_count).addClass('display-none');
		$('.compare-box-text').eq(compare_box_count).addClass('display-none');
		$('.compare-box-price').eq(compare_box_count).addClass('display-none');
		$('.compare-box-xbtn').eq(compare_box_count).addClass('display-none');
	});

	compare_box_count--;

	for (let i = 0; i < compare_box_count; i++) {
		comp_image_h_list[i].value = comp_image_list[i].src;
		comp_name_h_list[i].value = comp_name_list[i].innerHTML;
		comp_price_h_list[i].value = comp_price_list[i].innerHTML;
		comp_x_btn_h_list[i].value = comp_x_btn_list[i].value;
	}

	if (compare_box_count == 0) {
		btnReset()
	}
}



function toComparePage() {
	if (compare_box_count < 2) {
		alert("상품을 2개이상 선택하세요.");
		return;
	}
	
	let comp_x_btn_list = document.getElementsByClassName('compare-box-xbtn-h');
	let data_set = new Array();
	
	for (let i = 0; i < compare_box_count; i++) {
		let data = new Object();
		data.pseq = comp_x_btn_list[i].value;
		data_set.push(data);
	}
	let json_data = JSON.stringify(data_set);
	alert(json_data);
	sessionStorage.setItem("comparePseqs", json_data);
}