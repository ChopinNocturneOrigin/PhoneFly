<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
	<h1>이벤트 수정  </h1>
	<form name="frm" method="post" >
		<input type="hidden" name="eseq" value="${eventVO.eseq}">
		<input type="hidden" name="command" value= "adminEventUpdate">
				
		<table id="list">			
			<tr>
				<th>이벤트 제목</th>
				<td width="343" colspan="5">
					<input type="text" name="subject" size="47" maxlength="100" value="${eventVO.name}">
				</td>
			</tr>
						
		   	 <tr>
		  	 	<th>이벤트 이미지</th>
		  	 	<td colspan="5">
		      		<img src="color_images/${eventVO.image}" width="200"><br>
		      		<input type="file" name="image">
		      	</td>
		      </tr>	
		</table>
		
		<input class="btn" type="button" value="수정" onClick="go_mod_save_e()">           
		<input class="btn" type="button" value="취소"  
			onClick="location.href='pf.do?command=adminEventDetail&eseq=${eventVO.eseq}'">
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>