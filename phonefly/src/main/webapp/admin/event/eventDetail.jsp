<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
<h1>이벤트 상세 보기</h1> 
<table id="list"> 
	<tr><th align="center" >이벤트 명</th><td colspan="5">${eventVO.name}</td></tr>
   	<tr><th>상세설명</th><td colspan="5"><pre>${eventVO.content}</pre></td></tr>
</table>
<input class="btn"  type="button" value="수정" onClick="go_mod_e('${eventVO.eseq}')">
<input class="btn"  type="button" value="목록" onClick="go_mov_e()">
<input class="btn"  type="button" value="삭제" onClick="go_del_e()">
</article>

<%@ include file="/admin/footer.jsp"%>