<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../sub/header.jsp"%>
<script src="script/removeMenuSession.js"></script>


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
		<div class="support-inner-wrap review-inner-wrap">
			<div id="board"></div>
			<h1>내가 작성한 후기</h1>

			<table id="board-table">
				<tr>
					<th>구매하신 휴대폰</th><th>후기 내용</th><th>작성일자</th><th>수정</th><th>삭제</th>
				</tr>
				<c:forEach items="${reviewList}" var="review" varStatus="status">
				
					<tr class="board-table-line-mouseover">
						<td>${review.pname}</td>
						<td class="board-content"><textarea name="content" cols="80" rows="3">${review.content}</textarea></td>
						<td><fmt:formatDate value="${review.indate}" /></td>
						<td>
							<input type="button" class="submit submit-blue board-submit" value="수정" onclick="location.href='pf.do?command=qnaWriteForm';" />
						</td>
						<td>
							<input type="button" class="cancel board-submit" value="삭제" onclick="deleteReview(rvseq);" />
						</td>
					</tr>
				</c:forEach>
				<!-- <tr><td class="board-submit-line" colspan="4"><input type="button" class="submit submit-blue board-submit" value="작성하기" onclick="location.href='pf.do?command=qnaWriteForm';" /></td></tr> -->
			</table>
			<div id="board-bottom"></div>
			
		
			
			<!-- 페이징 -->
			<div class="paging">
				<div id="board-paging">
					<jsp:include page="/paging/paging.jsp">
					<jsp:param name="command" value="pf.do?command=reviewList" />
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