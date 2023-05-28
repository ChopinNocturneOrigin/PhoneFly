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
	<div class="support-left-menu card-normal" id="sub-scroll-box">

	<%@ include file="../sub/sub_support_menu.jsp"%>

	</div>
	<!-- //고객지원 페이지 왼쪽 메뉴 -->


	<!-- 고객지원 페이지 오른쪽 내용 -->
	<div class="support-right-content card-normal">
		<div id="qna-wrap-inner" class="support-inner-wrap">
			<div id="board"></div>
			<h1>1:1 문의 보기</h1>
			
			<table id="board-table-detail">



				<tr>
					<th class="board-detail-th">번호<hr class="board-event-hr-left"/></th><td class="board-detail-no">${qnaVO.qseq}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr>
					<th>제목<hr class="board-event-hr-left"/></th><td class="board-detail-subject">${qnaVO.subject}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr class="board-table-before-btns-gray">
					<th>작성일자<hr class="board-event-hr-left"/></th><td class="board-detail-date"><fmt:formatDate value="${qnaVO.indate}" /><hr class="board-event-hr-right"/></td>
				</tr>
				<tr class="board-table-before-btns">
					<th id="board-event-detail-content-title">내용<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap"><pre>${qnaVO.content}</pre></div></td>
				</tr>

				<c:if test="${not empty qnaVO.reply}">
					<tr class="board-table-before-btns">
						<th id="board-event-detail-content-title">상담답변<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap"><pre>${qnaVO.reply}</pre></div></td>
					</tr>
				</c:if>



				<tr><td class="board-submit-line" colspan="3">
					<c:if test="${qnaVO.rep == '1'}">
						<input type="button" class="cancel board-submit" value="삭제하기" onclick="confirmDeleteQna(${qnaVO.qseq});" />
						<input type="button" class="submit submit-blue board-submit" value="수정하기" onclick="location.href='pf.do?command=qnaUpdateform&qseq=${qnaVO.qseq}';" />
					</c:if>
					<input type="button" class="submit submit-blue board-submit" value="목록으로" onclick="location.href='pf.do?command=qnaList';" />				</td></tr>
			</table>
			<!-- <div id="board-bottom"></div> -->



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