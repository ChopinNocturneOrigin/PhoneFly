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
<div class="board-inner-wrap board-event-detail-inner-warp card-normal">

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
	<tr>
		<td class="board-detail-content" colspan="2"><img id="board-event-content-image" src="images/event/${EventVO.image}" /></td>
	</tr>
<tr><td class="board-submit-line" colspan="2"><input type="button" class="submit submit-blue board-detail-submit" value="돌아가기" onclick="location.href='pf.do?command=eventList';" /></td></tr>


<!--  템플릿 
	<tr>
		<th class="board-detail-th">번호<hr class="board-event-hr-left"/></th><td class="board-detail-no">11<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th>작성일자<hr class="board-event-hr-left"/></th><td class="board-detail-date">2023.05.26.<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th>제목<hr class="board-event-hr-left"/></th><td class="board-detail-subject">제목제목제목<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<td class="board-detail-content" colspan="2"><img id="board-event-content-image" src="images/productImage/Aip1403.png" /></td>
	</tr>
-->

</table>
<div id="board-bottom"></div>
<div id="board-list-paging-bottom-margin"></div>


</div>
<!-- //이벤트 상세보기 -->





<div class="clear"></div>
</article>
<!-- //MAIN -->




<!-- footer 불러오기 -->
<%@ include file="../sub/footer.jsp"%>