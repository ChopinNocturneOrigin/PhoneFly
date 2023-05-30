<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
	<h1>공지사항 수정</h1>
	<form name="frm" method="post">
		<input type="hidden" name="nseq" value="${noticeVO.nseq}">
		
		<table id="list">
			<tr>
				<th>공지사항명</th>
				<td width="343" colspan="5">
					<input type="text" name="subject" size="47" maxlength="100" value="${noticeVO.subject}">
				</td>
			</tr>
		    <tr>
		    	<th>상세설명</th>
		    	<td colspan="5">
			 		<textarea name="content" rows="8" cols="70" >${noticeVO.content}</textarea>
			 	</td>
			 </tr>
		</table>
		
		<input class="btn" type="button" value="수정" onClick="go_mod_save_n()">           
		<input class="btn" type="button" value="취소"
			onClick="location.href='pf.do?command=adminNoticeDetail&nseq=${noticeVO.nseq}'">
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>