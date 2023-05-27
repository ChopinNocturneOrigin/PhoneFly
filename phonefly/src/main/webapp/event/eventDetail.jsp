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

 
<!-- 이벤트 상세보기 -->

	<!-- 게시판 페이지 왼쪽 메뉴 -->
	<div class="support-left-menu board-menu card-normal">

	<%@ include file="../sub/sub_board_menu.jsp"%>

	</div>
	<!-- //게시판 페이지 왼쪽 메뉴 -->


	<!-- 게시판 페이지 오른쪽 내용 -->
	<div class="support-right-content card-normal">
		<div class="support-inner-wrap board-notice-detail-inner-warp">




		<!-- <div class="board-inner-wrap board-event-detail-inner-warp card-normal"> -->
		
			<h1>이벤트</h1>
			<hr id="board-detail-title-hr"/>
			
			<table id="board-table-detail">
			
			
				<tr>
					<th class="board-detail-th">번호<hr class="board-event-hr-left"/></th><td class="board-detail-no">${EventVO.eseq}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr>
					<th>제목<hr class="board-event-hr-left"/></th><td class="board-detail-subject">${EventVO.subject}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr>
					<th>작성일자<hr class="board-event-hr-left"/></th><td class="board-detail-date"><fmt:formatDate value="${EventVO.indate}" /><hr class="board-event-hr-right"/></td>
				</tr>
				<tr class="board-table-before-btns">
					<td class="board-detail-content" colspan="2"><img id="board-event-content-image" src="images/event/${EventVO.image}" /></td>
				</tr>
			<tr><td class="board-submit-line" colspan="2"><input type="button" class="submit submit-blue board-detail-submit" value="돌아가기" onclick="location.href='pf.do?command=eventList';" /></td></tr>
			
			
			</table>
			<div id="board-bottom"></div>
			<div id="board-list-paging-bottom-margin"></div>
		
		
		</div>



	</div>
	<div class="clear"></div>
	<!-- //게시판 페이지 오른쪽 내용 -->

<!-- //이벤트 상세보기 -->





<div class="clear"></div>
</article>
<!-- //MAIN -->




<!-- footer 불러오기 -->
<%@ include file="../sub/footer.jsp"%>