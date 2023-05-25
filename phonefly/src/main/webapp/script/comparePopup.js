/**
 * author : BHS
 */


let compare_box_count = 0;

	let pseq_list = document.getElementsByClassName('pdPseq');
	let image_list = document.getElementsByClassName('pdImg');
	let name_list = document.getElementsByClassName('pdName');
	let price_list = document.getElementsByClassName('pdPrice');
	let compare_price_list = document.getElementsByClassName('card-compare-price');
	let plus_btn_list = document.getElementsByClassName('plus-button');
	
	let comp_pseq_list = document.getElementsByClassName('compare-box-pseq-real');
	let comp_image_list = document.getElementsByClassName('compare-box-image-real');
	let comp_name_list = document.getElementsByClassName('compare-box-name');
	let comp_price_list = document.getElementsByClassName('compare-box-price');

	let comp_pseq_h_list = document.getElementsByClassName('compare-box-pseq-h');
	let comp_image_h_list = document.getElementsByClassName('compare-box-image-real-h');
	let comp_name_h_list = document.getElementsByClassName('compare-box-name-h');
	let comp_price_h_list = document.getElementsByClassName('compare-box-price-h');


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
		alert("비교는 4개까지 가능합니다.");
		return;
	}

	
	for (let i = 0; i < pseq_list.length; i++) {
		if (pseq_from == pseq_list[i].value) {
			compare_price_list[i].classList.add('disabled');
			plus_btn_list[i].classList.add('disabled');

			comp_pseq_list[compare_box_count].value = pseq_from;
			comp_image_list[compare_box_count].src = 'images/productImage/' + image_list[i].value;
			comp_name_list[compare_box_count].innerHTML = name_list[i].value;
			comp_price_list[compare_box_count].innerHTML = price_list[i].value;

			comp_pseq_h_list[compare_box_count].value = pseq_from;
			comp_image_h_list[compare_box_count].value = 'images/productImage/' + image_list[i].value;
			comp_name_h_list[compare_box_count].value = name_list[i].value;
			comp_price_h_list[compare_box_count].value = price_list[i].value;


			$(function(){
				$('.compare-box').eq(compare_box_count-1).removeClass('disabled');
				$('.compare-box-image').eq(compare_box_count-1).removeClass('visibility-hidden');
				$('.compare-box-text').eq(compare_box_count-1).removeClass('visibility-hidden');
				$('.compare-box-price').eq(compare_box_count-1).removeClass('visibility-hidden');
				$('.compare-box-xbtn').eq(compare_box_count-1).removeClass('visibility-hidden');
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

	setCompareSession();
}



function btnReset() {
	compare_box_count = 0;

	$(function(){
		$('.compare-box').addClass('disabled');
		$('.compare-box-image').addClass('visibility-hidden');
		$('.compare-box-text').addClass('visibility-hidden');
		$('.compare-box-price').addClass('visibility-hidden');
		$('.compare-box-xbtn').addClass('visibility-hidden');
		$('.compare-popup').removeClass('compare-popup-close');
		$('.compare-popup').removeClass('compare-popup-open');
		$('.card-compare-price').removeClass('disabled');
		$('.plus-button').removeClass('disabled');
	});

	sessionStorage.removeItem("comparePseqs");
}



function btnX(count) {
	let local_count = 0;
/*	let pseq_list = document.getElementsByClassName('pdPseq');
	let compare_price_list = document.getElementsByClassName('card-compare-price');
	let plus_btn_list = document.getElementsByClassName('plus-button');
	
	let comp_pseq_list = document.getElementsByClassName('compare-box-pseq-real');
	let comp_image_list = document.getElementsByClassName('compare-box-image-real');
	let comp_name_list = document.getElementsByClassName('compare-box-name');
	let comp_price_list = document.getElementsByClassName('compare-box-price');

	let comp_pseq_h_list = document.getElementsByClassName('compare-box-pseq-h');
	let comp_image_h_list = document.getElementsByClassName('compare-box-image-real-h');
	let comp_name_h_list = document.getElementsByClassName('compare-box-name-h');
	let comp_price_h_list = document.getElementsByClassName('compare-box-price-h');*/

	for (let i = 0; i < pseq_list.length; i++) {
		if (comp_pseq_list[count].value == pseq_list[i].value) {
			compare_price_list[i].classList.remove('disabled');
			plus_btn_list[i].classList.remove('disabled');
		}
	}

	for (let i = 0; i < comp_pseq_list.length; i++) {
		if (i !== count) {
			comp_pseq_list[local_count].value = comp_pseq_h_list[i].value;
			comp_image_list[local_count].src = comp_image_h_list[i].value;
			comp_name_list[local_count].innerHTML = comp_name_h_list[i].value;
			comp_price_list[local_count].innerHTML = comp_price_h_list[i].value;
			local_count++;
		}
	}

	$(function(){
		$('.compare-box').eq(compare_box_count).addClass('disabled');
		$('.compare-box-image').eq(compare_box_count).addClass('visibility-hidden');
		$('.compare-box-text').eq(compare_box_count).addClass('visibility-hidden');
		$('.compare-box-price').eq(compare_box_count).addClass('visibility-hidden');
		$('.compare-box-xbtn').eq(compare_box_count).addClass('visibility-hidden');
	});

	compare_box_count--;

	for (let i = 0; i < compare_box_count; i++) {
		comp_pseq_h_list[i].value = comp_pseq_list[i].value;
		comp_image_h_list[i].value = comp_image_list[i].src;
		comp_name_h_list[i].value = comp_name_list[i].innerHTML;
		comp_price_h_list[i].value = comp_price_list[i].innerHTML;
	}

	document.getElementsByClassName('compare-counts').value = compare_box_count;

	setCompareSession();

	if (compare_box_count == 0) {
		btnReset()
	}
}



function toComparePage() {
	if (compare_box_count < 2) {
		alert("상품을 2개이상 선택하세요.");
		return false;
	}

	setCompareSession();

	return true;
}

function setCompareSession() {
/*	let comp_pseq_h_list = document.getElementsByClassName('compare-box-pseq-h');
	let comp_image_h_list = document.getElementsByClassName('compare-box-image-real-h');
	let comp_name_h_list = document.getElementsByClassName('compare-box-name-h');
	let comp_price_h_list = document.getElementsByClassName('compare-box-price-h');
*/	let data_set2 = new Array();
	
	for (let i = 0; i < compare_box_count; i++) {
		let data1 = new Object();
		let data2 = new Object();
		let data3 = new Object();
		let data4 = new Object();
		let data_set = new Array();
		data1.pseq = comp_pseq_h_list[i].value;
		data2.image = comp_image_h_list[i].value;
		data3.name = comp_name_h_list[i].value;
		data4.price = comp_price_h_list[i].value;
		data_set.push(data1);
		data_set.push(data2);
		data_set.push(data3);
		data_set.push(data4);
		data_set2.push(data_set);
	}
	let data_last = new Object();
	data_last.count = compare_box_count;
	data_set2.push(data_last);
	let json_data = JSON.stringify(data_set2);
	sessionStorage.setItem("comparePseqs", json_data);	
}


$(document).ready(function() {
/*	let comp_pseq_list = document.getElementsByClassName('compare-box-pseq-real');
	let comp_image_list = document.getElementsByClassName('compare-box-image-real');
	let comp_name_list = document.getElementsByClassName('compare-box-name');
	let comp_price_list = document.getElementsByClassName('compare-box-price');

	let comp_pseq_h_list = document.getElementsByClassName('compare-box-pseq-h');
	let comp_image_h_list = document.getElementsByClassName('compare-box-image-real-h');
	let comp_name_h_list = document.getElementsByClassName('compare-box-name-h');
	let comp_price_h_list = document.getElementsByClassName('compare-box-price-h');*/

	let data = JSON.parse(sessionStorage.getItem("comparePseqs"));
	/*compare_box_count = data.pop().count;*/
	for (let key in sessionStorage) {
		if (!sessionStorage.hasOwnProperty(key)) {
			continue;
		}
		alert(`${key}: ${sessionStorage.getItem(key)}`);
	}

/*	for (let i = 0; i < comp_pseq_list.length; i++) {
		comp_pseq_list[i].value = comp_pseq_h_list[i].value;
		comp_image_list[i].src = comp_image_h_list[i].value;
		comp_name_list[i].innerHTML = comp_name_h_list[i].value;
		comp_price_list[i].innerHTML = comp_price_h_list[i].value;
	}
*/
	$(function(){
		$('.compare-popup').removeClass('compare-popup-close');
	});
});