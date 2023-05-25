<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>


<article>

<!-- 서브 배너 불러오기 -->
<%@ include file="sub_image_menu.jsp"%>

 
<!-- 이벤트 리스트 -->
<div class="board-inner-wrap card-normal">

<h1>이벤트</h1>

<table id="board-table">
	<tr>
		<th>번호</th><th>제목</th><th>작성일자</th>
	</tr>
<%-- 	<c:forEach begin="1" end="10" varStatus="status"> --%>
	<c:forEach items="${eventList}" var="board" varStatus="status">
		<tr>
			<td>${board.eseq}</td>
			<td class="board-title">${board.subject}</td>
			<td><fmt:formatDate value="${board.indate}" /></td>
		</tr>
	</c:forEach>
</table>
<div id="board-paging">
	<jsp:include page="/paging/paging.jsp">
	<jsp:param name="command" value="pf.do?command=eventList" />
	</jsp:include>
</div>
<div id="board-bottom"></div>
<!-- //이벤트 리스트 -->


<!-- 페이징 -->
<div class="paging"></div>
<!-- //페이징 -->


</div>
<!-- //공지사항 리스트 -->





<div class="clear"></div>
</article>
<!-- //MAIN -->


<!-- 비교 상자 불러오기 -->
<%@ include file="../comparePopup.jsp"%>


<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>