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

 
<!-- 고객지원 페이지 -->

<div id="support-inner-wrap">






	<div class="support-left-menu card-normal">
	
		<ul>
			<li>회원정보수정</li>
			<li>회원탈퇴</li>
			<li>내가 작성한 후기</li>
			<li>주문내역보기</li>
			<li>1:1 문의</li>
		</ul>
	
	</div>



	<div class="support-right-content card-normal">

		<h1>1:1 문의하기</h1>
		
		<table id="board-table">
			<tr>
				<th>번호</th><th>제목</th><th>작성일자</th>
			</tr>
				<tr class="board-table-line-mouseover" onclick="location.href='pf.do?command=noticeDetail&nseq=${board.nseq}';">
					<td>${board.nseq}</td>
					<td class="board-title">${board.subject}</td>
					<td><fmt:formatDate value="${board.indate}" /></td>
				</tr>
		<!-- 	<tr><td class="board-submit-line" colspan="3"><input type="button" class="submit submit-blue board-submit" value="작성하기" /></td></tr> -->
		</table>
		<div id="board-bottom"></div>
		
	
		
		<!-- 페이징 -->
		<div class="paging">
			<div id="board-paging">
				<jsp:include page="/paging/paging.jsp">
				<jsp:param name="command" value="pf.do?command=faq" />
				</jsp:include>
			</div>
		</div>
		<!-- //페이징 -->
		<div id="board-list-paging-bottom-margin"></div>

	</div>








</div>

<!-- //고객지원 페이지 -->

<div class="clear"></div>
</article>
<!-- //MAIN -->


<!-- 비교 상자 불러오기 -->
<%@ include file="../comparePopup.jsp"%>


<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>