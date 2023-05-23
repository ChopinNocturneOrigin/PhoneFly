<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
   <h1>상품 등록</h1>
	<form name="frm" method="post" enctype="multipart/form-data" >
		<table id="list">			
			<tr>
				<th>상품명</th>
				<td width="343" colspan="5">
		       	<input type="text" name="name" size="47" maxlength="100"></td>
		    </tr>
		    
		    <tr>
		    	<th>원가[A]</th>
		    	<td width="70">
		    		<input type="text" name="price1" size="11" onkeyup="cal();"></td>
		  		<th>판매가[B]</th>
		  		<td width="70">
		  			<input type="text" name="price2" size="11" onkeyup="cal();"></td>
		  		<th>마진[B-A]</th>
		  		<td width="72"><input type="text" name="price3" size="11" ></td>
		  	</tr>
		  	
		  	<tr>
		  		<th>상세설명</th><td colspan="5">
				<textarea name="content" rows="8" cols="70"></textarea></td>
			</tr>
			<tr>
				<th>상품이미지</th>
				<td width="343" colspan="5"><input type="file" name="image"></td>
			</tr>  
			
			
		</table>
		<input class="btn" type="button" value="상품등록" onClick="go_save()">           
		<input class="btn" type="button" value="목록으로" onClick="go_mov()">
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>




