<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>


<article>
<!-- 제품 상세 전체 프레임 -->
<div class="wrap product-detail-wrap">
	<input type="hidden" class="pdPseq" value="${productVO.pseq}" />
	<input type="hidden" class="pdImg" value="${productVO.colorList[0].image}" />
	<input type="hidden" class="pdName" value="${productVO.name}" />
	<input type="hidden" class="pdPrice" value="<fmt:formatNumber value='${productVO.price2}' type='number' maxFractionDigits='3' />원" />

	<!-- 제품 상세 왼쪽 프레임 -->
	<div class="product-detail-left-wrap">
		<!-- 제품 상세 메인 -->
		<div class="product-detail-main">
			<!-- 제품 상세 타이틀 -->
			<div></div>
			<!-- 제품 상세 이미지 및 선택사항 -->
			<div>


				<!-- 이미지 및 컬러 리스트 (왼쪽) -->
				<div class="product-detail-image-wrap">


					<!-- 이미지 -->
					<div class="card_img card_img_${status.count}" onclick="${productDetailLH}">
						<ul>
	 					<c:forEach items="${productVO.colorList}" var="colorVO" varStatus="statusColor">
							<c:choose>
								<c:when test="${statusColor.count == 1}">
									<li style="z-index:10"><img src="images/productImage/${colorVO.image}" /></li>
								</c:when>
								<c:otherwise>
									<li><img src="images/productImage/${colorVO.image}" /></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						</ul>
					</div>
					<!-- //이미지 -->
					
					
					<!-- 컬러 리스트 -->
					<div class="card_color_buttons card_color_buttons_${status.count}">
						<ul>
							<c:forEach items="${productVO.colorList}" var="colorVO" varStatus="statusColor">
								<li onclick="colorClick(${status.count}, ${statusColor.count});">
									<div class="color_button" style="background-color:${colorVO.ccode}">
									<c:choose>
										<c:when test="${statusColor.count == 1}">
											<div class="color_button_selector"></div>
										</c:when>
										<c:otherwise>
											<div></div>
										</c:otherwise>
									</c:choose>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- //컬러 리스트 -->
					<div class="clear"></div>

				</div>
				<!-- //이미지 및 컬러 리스트 (왼쪽) -->




				<!-- 선택사항 (오른쪽) -->
				<div class="product-detail-selectors">
					<!-- 사용중인 통신사 (commList) -->
					<div></div>
					
					<!-- 사용하실 통신사 (commList) -->
					<div></div>
					
					<!-- 기기변경 / 통신사이동 (선택 : 위 값 매칭) -->
					<div></div>
					
					<!-- 요금제 (rplanList) -->
					<div></div>
					
					<!-- 할인방법 (프론트 선택 후 order_detail에 넘겨주기)
					공시지원 할인 / 선택약정할인 => 할부금 할인, 통신요금 할인 각각 적용 -->
					<div></div>
					
					<!-- 구매방법 (프론트 선택 후 order_detail에 넘겨주기)
					0, 24, 30, 36 개월 -->
					<div></div>
				</div>
				<!-- //선택사항 (오른쪽) -->
			</div>
			<!-- //제품 상세 이미지 및 선택사항 -->
		</div>
		<!-- //제품 상세 메인 -->





		<!-- 제품 상세 설명 {product : content} -->
		<div></div>
		<!-- //제품 상세 설명 -->


		<!-- 구매 후기 프레임 -->
		<div></div>
		<!-- //구매 후기 프레임 -->
	</div>
	<!-- //제품 상세 왼쪽 프레임 -->


	<!-- 제품 상세 오른쪽 프레임 -->
	<div class="product-detail-right-warp">
	</div>
	<!-- //제품 상세 오른쪽 프레임 -->
</div>
<!-- //제품 상세 전체 프레임 -->


<div class="clear"></div>
</article>
<!-- //MAIN -->



<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>