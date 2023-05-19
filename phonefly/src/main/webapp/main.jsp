<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!-- main <START> -->

<!-- 
author : PMS
-->


<!-- 
<div class="silder">
        <div><img src="images/text.images.jpg"></div>
        <div><img src="images/text.images.jpg"></div>
        <div><img src="images/text.images.jpg"></div>
        
        <div id="lbutton" onClick="move(-1);"></div>
        <div id="rbutton" onClick="move(1);"></div>
</div> -->


<!-- 베스트 상품 -->

<c:forEach var="i" begin="0" end="3">
    <p><c:out value="${i}" /></p>
</c:forEach>


<h2>Best Item</h2>   

<div class="cardBox" style="width: 1470px; margin:0 auto;">
  <ul class="card" style="list-style:none;">
       <%--  <c:forEach items="${bestList}"  var = "productVO" >    --%>
         <c:forEach  var = "i"   begin="0" end="5">   
         
         
         
              <li style="float: left;">
              <img src="images/text.images.jpg"> ${cnt}
              </li>
              
            <%--  <!-- <a href="shop.do?command==${productVO.pseq}">
                <img src="images/text.images.jpg">

                
                <div>
                  <ul>                 
                 <c:forEach items="${color}"  var = "colorVO" >     
                <li class="color_button">  
               
                                     
                </li>
                 </c:forEach> 
                 </ul>
                 </div>  -->
 
                 
            <div>
                  <ul>                 
                 <c:forEach items="${color}"  var = "colorVO" >     
                <li class="color_button">                        
                </li>
                 </c:forEach> 
                 </ul>
                 </div> 
          
          
          <div> 348,400원</div>
          
          
          <div>구매하기</div>
          
          
          <div>
          
          <div clas=plus_button> +</div>
          비교하기
          
          
          </div>
          
         <fmt:formatNumber value="${productVO.price2}" type="currency" /></h3>
         </a> --%>
        
        </c:forEach> 
          </ul>
      </div>       
</div>



<div class="clear"></div>
<!-- main <END> -->



<%@ include file="footer.jsp" %>
