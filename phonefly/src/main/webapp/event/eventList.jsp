<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../sub/header.jsp"%>


<article>

<!-- 서브 배너 불러오기 -->
<%@ include file="../sub/sub_image_menu6.jsp"%>

 
<!-- 이벤트 리스트 -->

	<!-- 게시판 페이지 왼쪽 메뉴 -->
	<div class="support-left-menu board-menu card-normal">

	<%@ include file="../sub/sub_board_menu.jsp"%>

	</div>
	<!-- //게시판 페이지 왼쪽 메뉴 -->


	<!-- 게시판 페이지 오른쪽 내용 -->
	<div class="support-right-content card-normal">
		<div class="support-inner-wrap">




		<!-- <div class="board-inner-wrap card-normal"> -->
			<div id="board"></div>
			<h1>이벤트</h1>
			
			<table id="board-table">
				<tr>
					<th>번호</th><th>제목</th><th>작성일자</th>
				</tr>
			<%-- 	<c:forEach begin="1" end="10" varStatus="status"> --%>
				<c:forEach items="${eventList}" var="board" varStatus="status">
					<tr class="board-table-line-mouseover" onclick="location.href='pf.do?command=eventDetail&eseq=${board.eseq}';">
						<td>${board.eseq}</td>
						<td class="board-title">${board.subject}</td>
						<td><fmt:formatDate value="${board.indate}" /></td>
					</tr>
				</c:forEach>
			</table>
		<div id="board-bottom"></div>

		<!-- 페이징 -->
		<div class="paging">
			<div id="board-paging">
				<jsp:include page="/paging/paging.jsp">
				<jsp:param name="command" value="pf.do?command=eventList" />
				</jsp:include>
			</div>
		</div>
		<!-- //페이징 -->
		<div id="board-list-paging-bottom-margin"></div>





	</div>
	<div class="clear"></div>
	<!-- //게시판 페이지 오른쪽 내용 -->

<!-- //이벤트 리스트 -->



</div>





<div class="clear"></div>
</article>
<!-- //MAIN -->




<!-- footer 불러오기 -->
<%@ include file="../sub/footer.jsp"%>