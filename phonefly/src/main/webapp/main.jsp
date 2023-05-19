<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<!-- main <START> -->

<!-- 
author : PMS
-->


  애니메이션 효과 배너
<div class="silder">
        <div><img src="images/text.images.jpg"></div>
        <div><img src="images/text.images.jpg"></div>
        <div><img src="images/text.images.jpg"></div>
        
        <div id="lbutton" onClick="move(-1);"></div>
        <div id="rbutton" onClick="move(1);"></div>
        
        
</div>

 
<!-- 베스트 상품 -->


<h2>Best Item</h2>

<div class="cardBox" style="width: 1470px; margin: 10px;">

	<div class="inner">
		<ul class="card" style="list-style: none; margin: 0 auto; padding: 0;">

			<%--  <c:forEach items="${bestList}"  var = "productVO" >    --%>


			<c:forEach var="i" begin="1" end="8">


				<li style="float: left;">
					<!--  <img src="images/text.images.jpg">  ${cnt} --> 
					<a href="shop.do?command==${productVO.pseq}">
					 <img src="images/text.images.jpg">


						<div class="card_select_color">
							<ul> ● ● ● ●
							  <div id="button" 
								<c:forEach items="${color}" var="colorVO">
									<li class="color_button"></li>
								</c:forEach>
							</ul>
						</div>

						<div class="card_name">
						     아이폰 14pro
							<c:forEach items="${pname}" var="pnameVO">
							</c:forEach>
						</div>


						<div class="card_price">
							348,400원
							<c:forEach items="${pprice}" var="ppirceVO">
							</c:forEach>
						</div>


						<div class="card_buy"> 바로 구매하기</div>


						<div class=card_compare_pirce>
							<div class=plus_button>+</div>
							가격 비교하기
						</div> <fmt:formatNumber value="${productVO.price2}" type="currency" />						
				</a>
				</li>
			</c:forEach>
		</ul>
	</div>	
</div>





<div class="title wrapper" position:absolute;>
   <div class="cotent-wrapper">
      <h3 class>
        핸드폰, phone fly에서 사면 &nbsp;가장 좋은 이유      
      </h3>   
      <p class>
       자신에게 맞는 결제 옵션 선택은 물론, 구매한 폰의 설정도 신속하게 할 수 있습니다. 
       게다가 채팅 상담을 통해 궁금증을 풀어줄 스페셜리스트들도 기다리고 있습니다.
      </p>            
   </div>
</div>






<div class="clear"></div>
<!-- main <END> -->



<%@ include file="footer.jsp"%>
