<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header2.jsp"%>
<%@ include file="/admin/sub_menu2.jsp"%>

<article >
<h1>상품 상세 보기</h1> 
<table id="PDList" >
	<tr><th align="center" >상품 명</th><td colspan="5">${productVO.name}</td></tr>
	<tr>
	    <th>원가(입고가) [A]</th><td width="60">${productVO.price1}</td>
		<th>판매가(출고가) [B]</th><td width="60">${productVO.price2}</td>
       	<th>마진[B-A]</th><td>${productVO.price3}</td>
    </tr>
       	
   	<tr><th>상세설명</th><td colspan="5"><pre>${productVO.content}</pre></td></tr>
  
   		 		
</table>

<div class="Bottm-btn-container">
  <div>
    <input class="btn" type="button" value="수정" onClick="go_mod('${productVO.pseq}')">
  </div>
  <div>
    <input class="btn" type="button" value="목록" onClick="go_mov()">
  </div>
  <div>
    <input class="btn" type="button" value="삭제" onClick="go_del(${productVO.pseq})">
  </div>
  <div>
    <input class="btn" type="button" value="색상리스트" onClick="go_col('${productVO.pseq}')">
  </div>
</div>
</article>

<%@ include file="/admin/footer.jsp"%>