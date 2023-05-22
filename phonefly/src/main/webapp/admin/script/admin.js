function workerCheck(){
	  if(document.frm.workId.value==""){
	      	alert("아이디를 입력하세요.");
	      	return false;
	  }else if(document.frm.workPwd.value==""){
	     	alert("비밀번호를 입력하세요.");
	      	return false;
	  }
	  return true;  
}



function go_detail( pseq ){
	document.frm.action = "pf.do?command=adminProductDetail&pseq=" + pseq; 
	document.frm.submit();
	// location.href="pf.do?command=adminProductDetail&pseq=" + pseq;
}

function go_detail_e( eseq ){
	document.frm.action = "pf.do?command=adminEventDetail&eseq=" + eseq; 
	document.frm.submit();
	// location.href="pf.do?command=adminEventDetail&eseq=" + eseq;
}

function go_detail_n( nseq ){
	document.frm.action = "pf.do?command=adminNoticeDetail&nseq=" + nseq; 
	document.frm.submit();
	// location.href="pf.do?command=adminEventDetail&nseq=" + nseq;
}


function go_mov(){
	location.href = "pf.do?command=adminProductList";
}

function go_mov_e(){
	location.href = "pf.do?command=adminEventList";
}

function go_mov_n(){
	location.href = "pf.do?command=adminNoticeList";
}


function go_search( comm ){
	if( document.frm.key.value == "" ){
		alert("검색버튼 사용시에는 검색어 입력이 필수입니다");
	 	return;
	}
	var url = "pf.do?command=" + comm + "&page=1";   // 검색어로 검색한 결과의 1페이지로 이동
	document.frm.action = url;
	document.frm.submit();
}




function go_total( comm ){
	document.frm.key.value="";
	document.frm.action = "pf.do?command=" + comm + "&page=1";
	document.frm.submit();
}




function go_wrt(){
	document.frm.action = "pf.do?command=adminProductWriteForm";
	document.frm.submit();
}



function go_wrt_e(){
	document.frm.action = "pf.do?command=adminEventWriteForm";
	document.frm.submit();
}



function go_wrt_n(){
	document.frm.action = "pf.do?command=adminNoticeWriteForm";
	document.frm.submit();
}


function cal(){
	if( document.frm.price2.value == "" || document.frm.price1.value=="") return; 
	document.frm.price3.value = document.frm.price2.value - document.frm.price1.value; 
}


function go_save(){
	var theForm = document.frm;
	if( theForm.kind.value==""){     // if( document.frm.kind.value=="" )
		alert('상품분류를 선택하세요');
		theForm.kind.focus();
	}else if (theForm.name.value == "") {
		alert('상품명을 입력하세요.'); 	
		theForm.name.focus();	
	} else if (theForm.price1.value == "") {
		alert('원가를 입력하세요.'); 		
		theForm.price1.focus();
	} else if (theForm.price2.value == "") {
		alert('판매가를 입력하세요.'); 		
		theForm.price2.focus();
	} else if (theForm.content.value == "") {
		alert('상품상세를 입력하세요.'); 		
		theForm.content.focus();
	} else if (theForm.image.value == "") {
		alert('상품이미지들 입력하세요.'); 	
		theForm.image.focus();	
	} else{
		theForm.action = "pf.do?command=adminProductWrite";
		theForm.submit();
	}
}

function go_save_e(){
	var theForm = document.frm;
	if( theForm.name.value == "") {
		alert('이벤트명을 입력하세요.'); 	
		theForm.name.focus();	
	} else if (theForm.content.value == "") {
		alert('이벤트상세를 입력하세요.'); 		
		theForm.content.focus();
	} else{
		theForm.action = "pf.do?command=adminEventWrite";
		theForm.submit();
	}
}




function go_mod(pseq){
	var url = "pf.do?command=adminProductUpdateForm&pseq=" + pseq;
	location.href=url;
	// document.frm.action = url;
	// document.frm.submit();
}

function go_mod_e(eseq){
	var url = "pf.do?command=adminEventUpdateForm&eseq=" + eseq;
	location.href=url;
	// document.frm.action = url;
	// document.frm.submit();
}

function go_mod_n(nseq){
	var url = "pf.do?command=adminNoticeUpdateForm&nseq=" + nseq;
	location.href=url;
	// document.frm.action = url;
	// document.frm.submit();
}


function go_mod_save(){
	if (document.frm.kind.value == '') {
		  alert('상품분류를 선택하세요'); 	  
		  document.frm.kind.focus();
	 } else if (document.frm.name.value == '') {
		  alert('상품명을 입력하세요');	  
		  document.frm.name.focus();
	 } else if (document.frm.price1.value == '') {
		  alert('원가를 입력하세요');	 
 		  document.frm.price1.focus();
	 } else if (document.frm.price2.value == '') {
		  alert('판매가를 입력하세요');	  
		  document.frm.price2.focus();
	 } else if (document.frm.content.value == '') {
		  alert('상품상세를 입력하세요');	  
		  document.frm.content.focus();
	 }else{
		if( confirm('수정하시겠습니까?') ){
			 document.frm.action = "pf.do?command=adminProductUpdate";
			 document.frm.submit();
		}
	}
}

function go_mod_save_e(){
	if  (document.frm.name.value == '') {
		  alert('이벤트 명을 입력하세요');	  
		  document.frm.name.focus();
	 } else if (document.frm.content.value == '') {
		  alert('이벤트 상세를 입력하세요');	  
		  document.frm.content.focus();
	 }else{
		if( confirm('수정하시겠습니까?') ){
			 document.frm.action = "pf.do?command=adminEventUpdate";
			 document.frm.submit();
		}
	}
}





function go_mod_save_n(){
	if  (document.frm.name.value == '') {
		  alert('공지사항 이름을 입력하세요');	  
		  document.frm.name.focus();
	 } else if (document.frm.content.value == '') {
		  alert('공지사항 상세를 입력하세요');	  
		  document.frm.content.focus();
	 }else{
		if( confirm('수정하시겠습니까?') ){
			 document.frm.action = "pf.do?command=adminNoticeUpdate";
			 document.frm.submit();
		}
	}
}



function go_order_save(){
		
	// 현재 화면에 보여지고 있는 주문들의 체크박스들의 체크된 상태가  몇개나 체크되어 있는지 갯수를  count  합니다
	var count=0;
	if( document.frm.result.length == undefined ){   // 화면에 표시된 체크박스가 한개인경우
		if( cocument.frm.result.checked == true ) count++;
	}else{  //  화면에 표시된 체크박스가 두개 이상인경우
		for( var i=0; i<document.frm.result.length ; i++)
			if( document.frm.result[i].checked==true)
				count++;
	}
	
	if (count == 0) {
	    alert("주문처리할 항목을 선택해 주세요.");
	}else{
		document.frm.action = "pf.do?command=adminOrderSave";
		document.frm.submit();
	}
	// 주문 처리하고(주문의 result 값을 '1' -> '2' 로 변경)    orderList.jsp 로 되돌아 갑니다.
}





function go_view( qseq ){
	location.href = "pf.do?command=adminQnaDetail&qseq=" + qseq;
}




function go_rep( qseq ){
	document.frm.action="pf.do?command=adminQnaRepSave";
	document.frm.submit();
	// 답변 글 등록 & rep 필드를 2로 업데이트
}











