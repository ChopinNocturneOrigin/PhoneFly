<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
<h1>이벤트 리스트</h1>

<form name="frm"  method="post">
	<table>
		<tr>
			<td width="642">
				이벤트 이름: <input type="text" name="key" value="${key}">&nbsp;&nbsp;&nbsp;
				<input class="btn" type="button" name="btn_search" value="검색" 
						onClick="go_search('adminEventList');">&nbsp;&nbsp;&nbsp;
						
				<input class="btn" type="button" name="btn_total" value="전체보기 " 
						onClick="go_total('adminEventList');">&nbsp;&nbsp;&nbsp;

				<input class="btn" type="button" name="btn_write" value="회원등록"  onClick="go_wrt();">
			</td>
		</tr>
	</table>
</form>

<table id="eventList">
	<tr>
	<th>번호</th>
	<th>이벤트명</th>
	<th>원가</th>
	<th>판매가</th>
	<th>등록일</th>
	<th>사용유무</th>
	</tr>
	<c:forEach items="${eventList}" var="eventVO">
		<tr>
			<td style="text-align:left; padding-left:50px;">${eventVO.eseq}</td>
			<td>
				<a href="#" onClick="go_detail( '${eventVO.eseq}');">
					${eventVO.name}
				</a>
			</td>
			<td><fmt:formatNumber value="${productVO.price1}"/></td>
			<td><fmt:formatNumber value="${productVO.price2}"/></td>
			<td><fmt:formatDate value="${productVO.indate}"/></td>
			<td>
				<c:choose>
	      			<c:when test='${productVO.useyn=="N"}'>미사용</c:when>
	   	 			<c:otherwise>사용</c:otherwise> 
				</c:choose>
			</td>
		</tr>
	</c:forEach>
</table>

<br /><br />
<jsp:include page="/admin/paging/page.jsp">
	<jsp:param name="command" value="pf.do?command=adminEventList" />
</jsp:include>
<!-- jsp:param 으로 필요한 내용을 전달하고 완성된 페이지를  include 합니다 -->

</article>

<%@ include file="/admin/footer.jsp"%>
