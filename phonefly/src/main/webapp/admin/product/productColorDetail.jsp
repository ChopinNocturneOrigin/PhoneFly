<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
<h1>상품 색상 상세 보기</h1> 
<table id="list">
	<tr><th align="center" >상품 색상 명</th><td colspan="5">${ColorVO.name}</td></tr>      	
   	<tr><th>색상 코드</th><td colspan="5">${ColorVO.ccode}</td></tr>  	
   	<tr><th>색상 이미지</th><td colspan="5" align="center">
   		<img src="images/productImage/${ColorVO.image}" width="200pt"></td></tr>
   		
   		
</table>
<input class="btn"  type="button" value="수정" onClick="go_mod_c('${ColorVO.cseq}')">
<input class="btn"  type="button" value="목록" onClick="go_mov_c('${ColorVO.pseq}')">
<input class="btn"  type="button" value="삭제" onClick="go_del_c('${ColorVO.cseq}')">
</article>

<%@ include file="/admin/footer.jsp"%>