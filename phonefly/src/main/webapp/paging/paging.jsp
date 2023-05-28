<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="paging">
	<c:if test="${paging.endPage > 1}">
		<c:url var="action" value="${param.command}" />
		<c:if test="${paging.prev}">
			<a href="${action}&page=1#board">&lt;&lt;<span style="font-size:80%">처음으로</span></a>&nbsp;
			<a href="${action}&page=${paging.beginPage - 1}#board">&lt;<span style="font-size:80%">이전</span></a>
		</c:if>
		<c:forEach begin="${paging.beginPage}" end="${paging.endPage}" var="index">
			<c:choose>
				<c:when test="${index == paging.page}">
					<span style="color:red;">[${index}]&nbsp;</span>
				</c:when>
				<c:otherwise>
					<a href="${action}&page=${index}#board">${index}&nbsp;</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.next}">
			<a href="${action}&page=${paging.endPage + 1}#board"><span style="font-size:80%">다음</span>&gt;</a>&nbsp;
			<a href="${action}&page=${paging.totalPage}#board"><span style="font-size:80%">마지막으로</span>&gt;&gt;</a>
		</c:if>
	</c:if>
</div>
<div class="clear"></div>