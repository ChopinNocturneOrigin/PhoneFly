<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
	<h1>상품 색상수정 </h1>
	<form name="frm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="cseq" value="${ColorVO.cseq}">
		<input type="hidden" name="oldImage" value="${ColorVO.image}">
		
		<table id="list">			
			<tr>
				<th>색상명</th>
				<td width="343" colspan="5">
					<input type="text" name="name" size="47" maxlength="100" value="${ColorVO.name}">
				</td>
			</tr>
			
	        <tr>
				<th>색상코드</th>
				<td width="343" colspan="5">
					<input type="text" name="ccode" size="47" maxlength="100" value="${ColorVO.ccode}">
				</td>
			</tr>
		    	
		  	 <tr>
		  	 	<th>색상이미지</th>
		  	 	<td colspan="5">
		      		<img src="color_images/${ColorVO.image}" width="200"><br>
		      		<input type="file" name="image">
		      	</td>
		      </tr>			
		</table>
		
		<input class="btn" type="button" value="수정" onClick="go_mod_save_c(${ColorVO.cseq})">           
		<input class="btn" type="button" value="취소"  
			onClick="location.href='pf.do?command=adminProductColorDetail&cseq=${ColorVO.cseq}'">
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>