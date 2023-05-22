<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
<h1>상품리스트</h1>

<form name="frm"  method="post">
	<table>
		<tr>
			<td width="642">
				상품명 : <input type="text" name="key" value="${key}">&nbsp;&nbsp;&nbsp;
				<input class="btn" type="button" name="btn_search" value="검색" 
						onClick="go_search('adminProductList');">&nbsp;&nbsp;&nbsp;
						
				<input class="btn" type="button" name="btn_total" value="전체보기 " 
						onClick="go_total('adminProductList');">&nbsp;&nbsp;&nbsp;

				<input class="btn" type="button" name="btn_write" value="상품등록"  onClick="go_wrt();">
			</td>
		</tr>
	</table>
</form>

<table id="productList">
	<tr>
	<th>번호</th>
	<th>상품명</th>
	<th>원가</th>
	<th>판매가</th>
	<th>등록일</th>	
	</tr>
	<c:forEach items="${productList}" var="productVO">
		<tr>
			<td style="text-align:left; padding-left:50px;">${productVO.pseq}</td>
			<td>
				<a href="#" onClick="go_detail( '${productVO.pseq}');">
					${productVO.name}
				</a>
			</td>
			<td><fmt:formatNumber value="${productVO.price1}"/></td>
			<td><fmt:formatNumber value="${productVO.price2}"/></td>
			<td><fmt:formatDate value="${productVO.indate}"/></td>
		</tr>
	</c:forEach>
</table>

<br /><br />
<jsp:include page="/admin/paging/page.jsp">
	<jsp:param name="command" value="pf.do?command=adminProductList" />
</jsp:include>
<!-- jsp:param 으로 필요한 내용을 전달하고 완성된 페이지를  include 합니다 -->

</article>

<%@ include file="/admin/footer.jsp"%>
