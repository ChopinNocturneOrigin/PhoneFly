<!-- 상품리스트, 주문리스트, 회원리스트, Qna리스트에 공통으로 include 될 페이지 영역입니다 -->
<div id="paging" align="center" >
	<c:url var="action" value="${param.command}" />
	
	<c:if test="${paging.prev}">
		<a href="${action}?page=${paging.beginPage-1}">◀</a>&nbsp;
	</c:if>
	
	<c:forEach begin="${paging.beginPage}" end="${paging.endPage}" var="index">
		<c:choose>
			<c:when test="${paging.page==index}"> [${index}] </c:when>
			<c:otherwise> <a href="${action}?page=${index}">${index}</a> </c:otherwise>
		</c:choose>
	</c:forEach>
	
	<c:if test="${paging.next}">
		<a href="${action}?page=${paging.endPage+1}">▶</a>&nbsp;
	</c:if>
</div>
