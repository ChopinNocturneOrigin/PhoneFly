<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
<h1>이벤트 등록</h1>
	<form name="frm" method="post" enctype="multipart/form-data" >
		<table id="list">
			
			
			<tr>
				<th>이벤트명</th>
				<td width="343" colspan="5">
		       	<input type="text" name="name" size="47" maxlength="100"></td>
		    </tr>
		    		  	
		  	<tr>
		  		<th>상세설명</th><td colspan="5">
				<textarea name="content" rows="8" cols="70"></textarea></td>
			</tr>
		
		</table>
		<input class="btn" type="button" value="이벤트등록" onClick="go_save_e()">           
		<input class="btn" type="button" value="목록으로" onClick="go_mov_e()">
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>




