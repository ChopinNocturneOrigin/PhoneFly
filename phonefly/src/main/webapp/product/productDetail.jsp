<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>


<article>
<!-- 제품 상세 전체 프레임 -->
<div class="wrap flex-wrap product-detail-wrap card">
	<input type="hidden" class="pdPseq" value="${productVO.pseq}" />
	<input type="hidden" class="pdImg" value="${productVO.colorList[0].image}" />
	<input type="hidden" class="pdName" value="${productVO.name}" />
	<input type="hidden" class="pdPrice" value="<fmt:formatNumber value='${productVO.price2}' type='number' maxFractionDigits='3' />원" />
	<!-- 전체 프레임 안쪽 - 중앙 정렬용 -->
	<div class="product-detail-inside-wrap">


	<!-- 제품 상세 왼쪽 프레임 -->
	<div class="product-detail-left-wrap card-normal">
		<!-- 제품 상세 메인 -->
		<div class="product-detail-main">
			<!-- 제품명 -->
			<div class="card_name">
				<h3>
					${productVO.name}
				</h3>
			</div>
			<!-- //제품명 -->
			<!-- 제품 상세 이미지 및 선택사항 -->
			<div>
				<!-- 이미지 및 컬러 리스트 (제품상세 왼쪽) -->
				<div class="product-detail-image-wrap">


					<!-- 이미지 -->
					<div class="card-img-pd card_img_1" onclick="${productDetailLH}">
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
					<div class="clear"></div>
					<!-- //이미지 -->
					
					
					<!-- 컬러 리스트 -->
					<div class="card_color_buttons card_color_buttons_1">
						<ul>
							<c:forEach items="${productVO.colorList}" var="colorVO" varStatus="statusColor">
								<li onclick="colorClick(1, ${statusColor.count});">
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
				<!-- //이미지 및 컬러 리스트 (제품상세 왼쪽) -->



				<!-- 선택사항 (제품상세 오른쪽) -->
				<div class="product-detail-selectors chkborder-b">
					<!-- 사용중인 통신사 (commList) -->
					<div class="pd-detail-left-wrap chkborder-r">
						<div class="pdd-left-name chkborder-b">사용중인 통신사</div>
						<div class="pdd-left-content chkborder-b">
							<div class="pd-box comm-ci comm-ci-1"><img src="images/common/tong-kt.png" /></div>
							<div class="pd-box comm-ci comm-ci-2"><img src="images/common/tong-skt.png" /></div>
							<div class="pd-box comm-ci comm-ci-3"><img src="images/common/tong-lg.png" /></div>
						</div>
					</div>
					
					<!-- 사용하실 통신사 (commList) -->
					<div class="pd-detail-left-wrap chkborder-r">
						<div class="pdd-left-name chkborder-b">사용하실 통신사</div>
						<div class="pdd-left-content chkborder-b">
							<div class="pd-box comm-ci comm-ci-1"><img src="images/common/tong-kt.png" /></div>
							<div class="pd-box comm-ci comm-ci-2"><img src="images/common/tong-skt.png" /></div>
							<div class="pd-box comm-ci comm-ci-3"><img src="images/common/tong-lg.png" /></div>
						</div>
					</div>


					<!-- 기기변경 / 통신사이동 (선택 : 위 값 매칭) -->
					<div class="pd-detail-left-wrap pdd-small-wrap chkborder-r">
						<div class="pdd-left-name pdd-small-wrap chkborder-b"></div>
						<div class="pdd-left-content pdd-small-wrap chkborder-b">
						</div>
					</div>





					<!-- 요금제 (rplanList) -->
					<div class="pd-detail-left-wrap chkborder-r">
						<div class="pdd-left-name pdd-rplan-wrap chkborder-b">요금제</div>
						<div class="pdd-left-content pdd-rplan-wrap chkborder-b">
							<div class="pd-box pdd-rplan-content-wrap">
								<div></div>
								<div></div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					
					<!-- 할인방법 (프론트 선택 후 order_detail에 넘겨주기)
					공시지원 할인 / 선택약정할인 => 할부금 할인, 통신요금 할인 각각 적용 -->
					<div class="pd-detail-left-wrap chkborder-r">
						<div class="pdd-left-name pdd-discount-wrap chkborder-b">할인방법</div>
						<div class="pdd-left-content pdd-discount-wrap chkborder-b">
							<div class="pd-box pdd-discount"></div>
							<div class="pd-box pdd-discount"></div>
						</div>
					</div>
					<!-- 할인방법 - display -->
					<div class="pd-detail-left-wrap pdd-small-wrap chkborder-r">
						<div class="pdd-left-name pdd-small-wrap chkborder-b"></div>
						<div class="pdd-left-content pdd-small-wrap chkborder-b">
						</div>
					</div>



					<!-- 구매방법 (프론트 선택 후 order_detail에 넘겨주기)
					0, 24, 30, 36 개월 -->
					<div class="pd-detail-left-wrap chkborder-r">
						<div class="pdd-left-name chkborder-b">구매방법</div>
						<div class="pdd-left-content chkborder-b">
							<div class="pd-box pdd-mplan"></div>
							<div class="pd-box pdd-mplan"></div>
							<div class="pd-box pdd-mplan"></div>
							<div class="pd-box pdd-mplan"></div>
						</div>
					</div>
				</div>
				<!-- //선택사항 (제품상세 오른쪽) -->
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
	<div class="product-detail-right-wrap">
		<!-- 스크롤 박스 wrap-->
		<div class="product-detail-scrollbox-wrap card-normal">
			<!-- 월 할부금 (A) -->
			<div>
				<!-- 메인 (c / 구매방법(할부개월) = 월할부금) -->
				<div></div>
				
				<!-- 출고가 (price2) -(a) -->
				<div></div>
				
				<!-- 공시지원 할인 (hidden toggle) (고정) (b) -->
				<div></div>
				
				<!-- 할부원금 (a - b => c) -->
				<div></div>
			</div>
			
			<!-- 월 통신요금 (B) -->
			<div>
				<!-- 메인 (a -b = 월 통신요금) -->
				<div></div>
				<!-- 스탠다드 (요금제에서 가져옴) (a) -->
				<div></div>
				<!-- 선택약정 할인 (hidden toggle) (고정) (b) -->
				<div></div>
			</div>
			
			<!-- 납부 금액 (A+B) -->
			<div>
				<div></div>
			</div>
			
			<!-- 버튼 (온라인 신청하기) -->
			<div>
				<div></div>
			</div>
		</div>
		<!-- //스크롤 박스 -->
	</div>
	<!-- //제품 상세 오른쪽 프레임 -->
	</div>
	<!-- 전체 프레임 안쪽 - 중앙 정렬용 -->
</div>
<!-- //제품 상세 전체 프레임 -->


<div class="clear"></div>
</article>
<!-- //MAIN -->



<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>