<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
<h1>상품 상세 보기</h1> 
<table id="list">
	<tr><th align="center" >상품 명</th><td colspan="5">${productVO.name}</td></tr>
	<tr>
	    <th>원가(입고가) [A]</th><td width="60">${productVO.price1}</td>
		<th>판매가(출고가) [B]</th><td width="60">${productVO.price2}</td>
       	<th>마진[B-A]</th><td>${productVO.price3}</td>
    </tr>
       	
   	<tr><th>상세설명</th><td colspan="5"><pre>${productVO.content}</pre></td></tr>
   	<tr><th>상품이미지</th>	<td colspan="5" align="center">
   		<img src="product_images/${colorVO.image}" width="200pt"></td></tr>
   		 		
</table>
<input class="btn"  type="button" value="수정" onClick="go_mod('${productVO.pseq}')">
<input class="btn"  type="button" value="목록" onClick="go_mov()">
<input class="btn"  type="button" value="삭제" onClick="go_del()">
<input class="btn"  type="button" value="색상선택" onClick="go_col('${productVO.pseq}')">
</article>

<%@ include file="/admin/footer.jsp"%>