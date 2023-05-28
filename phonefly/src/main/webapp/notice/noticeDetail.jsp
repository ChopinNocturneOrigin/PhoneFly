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

 
<!-- 공지사항 상세보기 -->

	<!-- 게시판 페이지 왼쪽 메뉴 -->
	<div class="support-left-menu board-menu card-normal">

	<%@ include file="../sub/sub_board_menu.jsp"%>

	</div>
	<!-- //게시판 페이지 왼쪽 메뉴 -->


	<!-- 게시판 페이지 오른쪽 내용 -->
	<div class="support-right-content card-normal">
		<div class="support-inner-wrap board-notice-detail-inner-warp">



		<!-- <div class="board-inner-wrap card-normal board-notice-detail-inner-warp"> -->
		
			<h1>공지사항</h1>
			<div id="board-nd-wrap-inner">
			
			<table id="board-table-detail">
			
			
				<tr>
					<th class="board-detail-th">번호<hr class="board-event-hr-left"/></th><td class="board-detail-no">${NoticeVO.nseq}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr>
					<th>제목<hr class="board-event-hr-left"/></th><td class="board-detail-subject">${NoticeVO.subject}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr class="board-table-before-btns-gray">
					<th>작성일자<hr class="board-event-hr-left"/></th><td class="board-detail-date"><fmt:formatDate value="${NoticeVO.indate}" /><hr class="board-event-hr-right"/></td>
				</tr>
				<tr class="board-table-before-btns">
					<th id="board-event-detail-content-title">내용<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap"><pre>${NoticeVO.content}</pre></div></td>
				</tr>
				<tr><td class="board-submit-line" colspan="2"><input type="button" class="submit submit-blue board-detail-submit" value="돌아가기" onclick="location.href='pf.do?command=noticeList';" /></td></tr>
			
			
			</table>
			<!-- <div id="board-bottom"></div> -->
			
			
			</div>
		</div>



	</div>
	<div class="clear"></div>
	<!-- //게시판 페이지 오른쪽 내용 -->

<!-- //공지사항 상세보기 -->


<div class="clear"></div>
</article>
<!-- //MAIN -->




<!-- footer 불러오기 -->
<%@ include file="../sub/footer.jsp"%>