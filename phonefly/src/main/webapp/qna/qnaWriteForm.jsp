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
		<div id="qna-detail-wrap-inner"class="support-inner-wrap">
			<div id="board"></div>
			<h1>1:1 문의 작성</h1>
			<form name="qnafrm" method="post" action="pf.do">
				<input type="hidden" name="command" value="qnaWrite" />
				<table id="board-table-detail">
					<tr>
						<th class="qna-th">제목<hr class="board-event-hr-left"/></th>
						<td class="board-detail-subject">
							<input name="subject" type="text" class="join-form-input" size="60" maxlength="100" placeholder=" 제목을 입력하세요 (100 bytes)" />
						</td>
					</tr>
					<tr class="board-table-before-btns">
						<th id="board-event-detail-content-title">내용<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap" class="qna-textarea-wrap">
							<textarea name="content" rows="20" cols="116" maxlength="3000" placeholder="&#10&#10 내용을 입력하세요 (3000 bytes)"></textarea>
						</div></td>
					</tr>
					<tr><td class="board-submit-line" colspan="3">
						<input type="button" class="submit submit-blue board-submit" value="작성하기" onclick="qna_write();" />
						<input type="button" class="submit submit-blue board-submit" value="목록으로" onclick="location.href='pf.do?command=qnaList';" />				</td></tr>
				</table>
			</form>
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