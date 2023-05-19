<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- 
author : PMS
-->

<!-- main <START> -->

<div id align="center">
	<img src="images/text.images.jpg"
		style="border-radius: 20px 20px 20px 20px; border: 2px solid white; width: 700px;">
</div>

<!-- 신상품 -->



<div id  align="center">
	<h2>New Item</h2>
	<div style="border: 1px solid; padding: 10px;">
		<img src="images/text.images.jpg" /> 
		<img src="images/text.images.jpg" /> 
		<img src="images/text.images.jpg" />
	</div>
</div>

<



<!-- 베스트 상품 -->

<h2>Best Item</h2>   
<div id="bestProduct">
	<c:forEach items="${bestList}"  var = "productVO" >
		<div id="item"> <!-- 상품 한개 , 한칸 -->
			<a href="shop.do?command==${productVO.pseq}">
				<img src="images/text.images.jpg/${productVO.image}" />
				<h3> ${productVO.name} 
				<fmt:formatNumber value="${productVO.price2}" type="currency" /></h3>
			</a>
		</div>
	</c:forEach>
</div>
<div class="clear"></div>
<!-- main <END> -->



<%@ include file="footer.jsp" %>