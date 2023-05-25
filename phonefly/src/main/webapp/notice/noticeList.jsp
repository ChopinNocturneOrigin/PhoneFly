<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>
<%-- <%@ include file="../header2.jsp"%> --%>


<article>

<!-- 서브 배너 불러오기 -->
<%@ include file="sub_image_menu.html"%>

 
<!-- 공지사항 리스트 -->
<div class="board-inner-wrap">

<h1>공지사항</h1>

<table>
	<tr>
		<th>번호</th><th>제목</th><th>작성일자</th>
	</tr>
	<c:forEach begin="1" end="10">
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</c:forEach>
</table>

<div>
	<div class="search-box"><input type="" /></div>
	<div class="board-btn"><input type="button" value="" /></div>
</div>
<!-- //공지사항 리스트 -->


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