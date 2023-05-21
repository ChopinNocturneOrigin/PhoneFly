<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!-- MAIN  -->
<!-- 
author : PMS, BHS
-->

<article>

<%@ include file="mainBanner.jsp"%>

 
<!-- 베스트 상품 -->


<h1>베스트 상품</h1>

<div id="main_card_box">
	<ul>
		<%--  <c:forEach items="${bestItemList}" var="productVO" >    --%>
		<c:forEach var="i" begin="1" end="4">
			<li class="card">
			<%-- <li class="card" onclick="location.href='pf.do?command=productDetail&pseq=${productVO.pseq}';"> --%>
				<div class="card_img card_img_${i}" onclick="location.href='#'">
					<ul>
<%-- 					<c:forEach items="${productVO.colorDetaiList}" var="colorVO">
 						<li><img src="images/productImage/${colorVO.image}" /></li> --%>
							<li style="z-index:10"><img src="images/productImage/Aippr1401.png" /></li>
							<li><img src="images/productImage/Aippr1402.png" /></li>
							<li><img src="images/productImage/Aippr1403.png" /></li>
							<li><img src="images/productImage/Aippr1404.png" /></li>
<%-- 					</c:forEach> --%>
					</ul>
				</div>
				<div class="card_color_buttons card_color_buttons_${i}">
					<ul>
						<%-- <c:forEach items="${productVO.colorDetailList}" var="colorVO"> --%>
							<li onclick="colorClick(${i}, 1);"><div class="color_button" style="background-color:blue" <%-- style="background-color:${colorVO.ccode}" --%>><div class="color_button_selector"></div></div></li>
							<li onclick="colorClick(${i}, 2);"><div class="color_button" style="background-color:red" <%-- style="background-color:${colorVO.ccode}" --%>><div></div></div></li>
							<li onclick="colorClick(${i}, 3);"><div class="color_button" style="background-color:yellow" <%-- style="background-color:${colorVO.ccode}" --%>><div></div></div></li>
							<li onclick="colorClick(${i}, 4);"><div class="color_button" style="background-color:green" <%-- style="background-color:${colorVO.ccode}" --%>><div></div></div></li>
						<%-- </c:forEach> --%>
					</ul>
				</div>
				<div class="clear"></div>

				<div class="card_name" onclick="location.href='#'">
					<h3>
						iPhone 14 pro MAX
						${productVO.name}
					</h3>
				</div>
				<div class="card_price" onclick="location.href='#'">
					<h3><fmt:formatNumber value="348400" type="number" maxFractionDigits="3" /></h3><h4>원</h4>
					
					<%-- <h3><fmt:formatNumber value="${productVO.price2}" type="number" maxFractionDigits="3" /></h3><h4>원</h4> --%>
				</div>


				<div class="card_buy">구매하기</div>


				<%-- <div class="card_compare_price" onclick="compareProduct(${productVO.pseq}, '${productVO.name}', ${productVO.price2}, '${productVO.colorDetailList[0].image}');"> --%>
				<div class="card_compare_price" onclick="compareProduct(${i}, 'iPhone 14 pro MAX', 348400, 'Aippr1401.png');">
					<div class="plus_button"><div>+</div></div><span>&nbsp;가격 비교하기</span>
				</div>
			</li>
		</c:forEach>
	</ul>
</div>
<div class="clear"></div>

<!-- //베스트 상품 -->



<!-- 메인 Apple 리스트 -->

<div id="main_apple">
	<ul>
		<li>
			<div id="content1" class="card">
				<div>
					iPhone 쇼핑 안내.<br />
					<span>결정을 못하겠다면 여기에서.</span>
				</div>
			</div>
		</li>
		<li>
			<div id="content2" class="card" onclick="location.href='#'">
				<img src="images/iphone-card-50-compare-202209.jpg" />
				<div>
					<span>Apple iPhone 모든 모델 보기</span><br />
					어떤 iPhone이<br />
					당신에게 맞을까요?
				</div>
			</div>
		</li>
		<li>
			<div id="content3" class="card" onclick="location.href='#'">
				<img src="images/iphone-card-50-whyswitch-202209_GEO_KR.jpg" />
				<div>
					<span>iPhone으로 갈아타기</span><br />
					iPhone으로 갈아타기, 무척<br />
					쉽습니다.
				</div>
			</div>
		</li>
	</ul>
</div>
<div class="clear"></div>

<!-- //메인 Apple 리스트 -->





<!-- 이벤트 상품 -->
<h1>이벤트 상품</h1>

<div id="main_card_box">
	<ul>
		<%--  <c:forEach items="${bestItemList}" var="productVO" >    --%>
		<c:forEach var="i" begin="5" end="8">
			<li class="card">
			<%-- <li class="card" onclick="location.href='pf.do?command=productDetail&pseq=${productVO.pseq}';"> --%>
				<div class="card_img card_img_${i}" onclick="location.href='#'">
					<ul>
<%-- 					<c:forEach items="${productVO.colorDetaiList}" var="colorVO">
 						<li><img src="images/productImage/${colorVO.image}" /></li> --%>
							<li style="z-index:10"><img src="images/productImage/Aippr1401.png" /></li>
							<li><img src="images/productImage/Aippr1402.png" /></li>
							<li><img src="images/productImage/Aippr1403.png" /></li>
							<li><img src="images/productImage/Aippr1404.png" /></li>
<%-- 					</c:forEach> --%>
					</ul>
				</div>
				<div class="card_color_buttons card_color_buttons_${i}">
					<ul>
						<%-- <c:forEach items="${productVO.colorDetailList}" var="colorVO"> --%>
							<li onclick="colorClick(${i}, 1);"><div class="color_button" style="background-color:blue" <%-- style="background-color:${colorVO.ccode}" --%>><div class="color_button_selector"></div></div></li>
							<li onclick="colorClick(${i}, 2);"><div class="color_button" style="background-color:red" <%-- style="background-color:${colorVO.ccode}" --%>><div></div></div></li>
							<li onclick="colorClick(${i}, 3);"><div class="color_button" style="background-color:yellow" <%-- style="background-color:${colorVO.ccode}" --%>><div></div></div></li>
							<li onclick="colorClick(${i}, 4);"><div class="color_button" style="background-color:green" <%-- style="background-color:${colorVO.ccode}" --%>><div></div></div></li>
						<%-- </c:forEach> --%>
					</ul>
				</div>
				<div class="clear"></div>

				<div class="card_name" onclick="location.href='#'">
					<h3>
						iPhone 14 pro MAX
						${productVO.name}
					</h3>
				</div>
				<div class="card_price" onclick="location.href='#'">
					<h3><fmt:formatNumber value="348400" type="number" maxFractionDigits="3" /></h3><h4>원</h4>
					
					<%-- <h3><fmt:formatNumber value="${productVO.price2}" type="number" maxFractionDigits="3" /></h3><h4>원</h4> --%>
				</div>


				<div class="card_buy">구매하기</div>


				<%-- <div class="card_compare_price" onclick="compareProduct(${productVO.pseq}, '${productVO.name}', ${productVO.price2}, '${productVO.colorDetailList[0].image}');"> --%>
				<div class="card_compare_price" onclick="compareProduct(${i}, 'iPhone 14 pro MAX', 348400, 'Aippr1401.png');">
					<div class="plus_button"><div>+</div></div><span>&nbsp;가격 비교하기</span>
				</div>
			</li>
		</c:forEach>
	</ul>
</div>
<div class="clear"></div>

<!-- //이벤트 상품 -->







<div class="clear"></div>
</article>
<!-- //MAIN -->



<%@ include file="footer.jsp"%>
