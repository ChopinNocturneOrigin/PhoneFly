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

 
<!-- 고객지원 페이지 -->
<div id="support-inner-wrap">





	<!-- 고객지원 페이지 왼쪽 메뉴 -->
	<div class="support-left-menu card-normal">

	<%@ include file="../sub/sub_support_menu.jsp"%>

	</div>
	<!-- //고객지원 페이지 왼쪽 메뉴 -->


	<!-- 고객지원 페이지 오른쪽 내용 -->
	<div class="support-right-content card-normal">
		<div class="support-inner-wrap">
			<div id="board"></div>
			<h1>1:1 문의</h1>
			
			<table id="board-table">
				<tr>
					<th>번호</th><th>제목</th><th>작성일자</th><th>상태</th>
				</tr>
				<c:forEach items="${qnaList}" var="board" varStatus="status">
				
					<tr class="board-table-line-mouseover" onclick="location.href='pf.do?command=qnaDetail&qseq=${board.qseq}';">
						<td>${board.qseq}</td>
						<td class="board-title">${board.subject}</td>
						<td><fmt:formatDate value="${board.indate}" /></td>
						<td>
							<c:choose>
								<c:when test="${board.rep == '1'}">접수중</c:when>
								<c:otherwise>상담완료</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</c:forEach>
				<tr><td class="board-submit-line" colspan="4"><input type="button" class="submit submit-blue board-submit" value="작성하기" onclick="location.href='pf.do?command=';" /></td></tr>
			</table>
			<div id="board-bottom"></div>
			
		
			
			<!-- 페이징 -->
			<div class="paging">
				<div id="board-paging">
					<jsp:include page="/paging/paging.jsp">
					<jsp:param name="command" value="pf.do?command=qnaList" />
					</jsp:include>
				</div>
			</div>
			<!-- //페이징 -->
			<!-- <div id="board-list-paging-bottom-margin"></div> -->
		</div>
	</div>
	<!-- //고객지원 페이지 오른쪽 내용 -->








</div>
<!-- //고객지원 페이지 -->

<div class="clear"></div>
</article>
<!-- //MAIN -->



<!-- footer 불러오기 -->
<%@ include file="../sub/footer.jsp"%>