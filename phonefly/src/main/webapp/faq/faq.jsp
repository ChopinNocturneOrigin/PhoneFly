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

 
<!-- 자주묻는질문 (FAQ) -->
<div class="board-inner-wrap card-normal faq-inner-wrap">
<div id="board"></div>
<h1>자주묻는질문 (FAQ)</h1>

<!-- 메뉴 -->
<div id="faq-sub-wrap">
	<div id="faq-sub-menu">
		<ul>
			<li><input class="submit submit-blue submit-faq" type="button" value="신청 / 개통문의" onclick="faqMenu(1);" /></li>
			<li><input class="submit submit-blue submit-faq" type="button" value="배송문의" onclick="faqMenu(2);" /></li>
			<li><input class="submit submit-blue submit-faq" type="button" value="취소 / 반품문의" onclick="faqMenu(3);" /></li>
		</ul>
	</div>
</div>
<div class="clear"></div>
<!-- //메뉴 -->





<div id="faq-main-wrap">
	<div id="faq-main-inner-wrap">

	<%@ include file="faq_part1.jsp"%>
	<%@ include file="faq_part2.jsp"%>
	<%@ include file="faq_part3.jsp"%>

	</div>
</div>






<div id="board-bottom"></div>


<!-- 자주묻는질문 (FAQ) -->




<!-- 페이징 -->
<%-- <div class="paging">
	<div id="board-paging">
		<jsp:include page="/paging/paging.jsp">
		<jsp:param name="command" value="pf.do?command=faq" />
		</jsp:include>
	</div>
</div> --%>
<!-- //페이징 -->
<div id="board-list-paging-bottom-margin"></div>

</div>





<div class="clear"></div>
</article>
<!-- //MAIN -->


<!-- 비교 상자 불러오기 -->
<%@ include file="../comparePopup.jsp"%>


<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>