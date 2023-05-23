<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/header.jsp"%>
<%@ include file="/admin/sub_menu.jsp"%>

<article>
	<h1>상품수정  ${productVO.kind}</h1>
	<form name="frm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="pseq" value="${productVO.pseq}">
		<input type="hidden" name="oldImage" value="${productVO.image}">
		
		<table id="list">			
			<tr>
				<th>상품명</th>
				<td width="343" colspan="5">
					<input type="text" name="name" size="47" maxlength="100" value="${productVO.name}">
				</td>
			</tr>
			
			<tr>
		  		<th>원가[A]</th>
		  		<td width="70">
		  			<input type="text" name="price1" size="11" value="${productVO.price1}"></td>
		  		<th>판매가[B]</th>
		  		<td width="70">
		  			<input type="text" name="price2" size="11" value="${productVO.price2}"></td>
			    <th>마진[B-A]</th>
			    <td width="72">
			    	<input type="text" name="price3" size="11" value="${productVO.price2-productVO.price1}">
		    	</td>
		    </tr>
		    
		    <tr>
		    		<th>베스트상품</th>
				 	<td>
				 		<c:choose>
				  			<c:when test='${productVO.bestyn=="Y"}'>
				  				<input type="radio" name="bestyn" value="Y" checked="checked">사용
				  				<input type="radio" name="bestyn" value="N">미사용
				  			</c:when>
							<c:otherwise>
								<input type="radio" name="bestyn" value="Y">사용
								<input type="radio" name="bestyn" value="N" checked="checkd">미사용
							</c:otherwise>
						</c:choose>
					</td>				
			</tr>
				
				
		    <tr>
		    	<th>상세설명</th>
		    	<td colspan="5">
			 		<textarea name="content" rows="8" cols="70" >${productVO.content}</textarea>
			 	</td>
			 </tr>
		  	 <tr>
		  	 	<th>상품이미지</th>
		  	 	<td colspan="5">
		      		<img src="product_images/${productVO.image}" width="200"><br>
		      		<input type="file" name="image">
		      	</td>
		      </tr>			
		</table>
		
		<input class="btn" type="button" value="수정" onClick="go_mod_save()">           
		<input class="btn" type="button" value="취소"  
			onClick="location.href='pf.do?command=adminProductDetail&pseq=${productVO.pseq}'">
	</form>
</article>

<%@ include file="/admin/footer.jsp"%>