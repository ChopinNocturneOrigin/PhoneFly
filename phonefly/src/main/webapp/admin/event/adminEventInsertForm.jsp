<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/admin/header2.jsp"%>
<%@ include file="/admin/sub_menu2.jsp"%>
	
<article>
<h1>이벤트 등록</h1>
	<form name="frm" method="post" enctype="multipart/form-data" >
		<table id="list">
			
			
			<tr>
				<th>이벤트 제목</th>
				<td width="343" colspan="5">
		       	<input type="text" name="subject" size="47" maxlength="100"></td>
		    </tr>
		    		  	
		  	<tr>
		  		<th>이벤트 이미지</th>
		  		<td width="343" colspan="5">
		       	<input type="file" name="image"></td>
		    </tr>
		
			
		
		</table>
		<input class="btn" type="button" value="이벤트등록" onClick="go_save_insert()">           
		<input class="btn" type="button" value="목록으로" onClick="go_mov_e()">
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>




