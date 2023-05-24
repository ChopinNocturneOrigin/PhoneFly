<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
<h1>상품 색상 리스트</h1>

<form name="frm"  method="post">
	<table>
		<tr>
			<td width="642">
				색상명 : <input type="text" name="key" value="${key}">&nbsp;&nbsp;&nbsp;
				<input class="btn" type="button" name="btn_search" value="검색" 
						onClick="go_search_c('adminProductColorList');">&nbsp;&nbsp;&nbsp;
						
				<input class="btn" type="button" name="btn_total" value="전체보기 " 
						onClick="go_total_c('adminProductColorList');">&nbsp;&nbsp;&nbsp;

				<input class="btn" type="button" name="btn_write" value="색상등록"  onClick="go_wrt_c();">
			</td>
		</tr>
	</table>
</form>

<table id="productColorList">
	<tr>
	<th>색상 번호</th>
	<th>상품 번호</th>
	<th>색상 이름</th>	
	<th>색상 코드</th>
	<th>이미지(경로)</th>	
	</tr>
	
	<c:forEach items="${adminColorList}" var="colorVO">
		<tr>		
			<td style="text-align:left; padding-left:50px;">${colorVO.cseq}</td>
			<td>
				<a href="#" onClick="go_detail_c( '${colorVO.cseq}');">
					${colorVO.name}
				</a>
			</td>
			<td>${productVO.pseq}</td>
			<td>${colorVO.ccode}</td>
			<td>${colorVO.image}</td>
			<td>		
			</td>
		</tr>
	</c:forEach>
</table>

<br /><br />
<jsp:include page="/admin/paging/page.jsp">
	<jsp:param name="command" value="pf.do?command=adminProductColorList" />
</jsp:include>
<!-- jsp:param 으로 필요한 내용을 전달하고 완성된 페이지를  include 합니다 -->

</article>

<%@ include file="/admin/footer.jsp"%>
