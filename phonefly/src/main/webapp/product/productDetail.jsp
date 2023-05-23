<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>


<article>
<!-- 제품 상세 전체 프레임 -->
<div class="wrap flex-wrap pdd-wrap">
	<input type="hidden" class="pdPseq" value="${productVO.pseq}" />
	<input type="hidden" class="pdImg" value="${productVO.colorList[0].image}" />
	<input type="hidden" class="pdName" value="${productVO.name}" />
	<input type="hidden" class="pdPrice" value="<fmt:formatNumber value='${productVO.price2}' type='number' maxFractionDigits='3' />원" />
	<!-- 전체 프레임 안쪽 - 중앙 정렬용 -->
	<div class="pdd-inside-wrap">


	<!-- 제품 상세 왼쪽 프레임 -->
	<div class="pdd-left-wrap card-normal">
		<!-- 제품 상세 메인 -->
		<div class="pdd-main">
			<!-- 제품 상세 이미지 및 선택사항 -->
			<div>
			
			
				<!-- 이미지, 컬러 리스트, 가격비교 (제품상세 왼쪽) -->
				<div class="pdd-image-wrap">

					<!-- 제품명 -->
					<div class="card-name pdd-card-name">
						<h3>
							${productVO.name}
						</h3>
					</div>
					<!-- //제품명 -->
					
					
					<!-- 이미지 -->
					<div class="pdd-card-img card-img-1" onclick="${productDetailLH}">
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
					<div class="card-color-buttons card-color-buttons-1">
						<ul>
							<c:forEach items="${productVO.colorList}" var="colorVO" varStatus="statusColor">
								<li onclick="pdDetailcolorClick(1, ${statusColor.count});">
									<div class="color-button" style="background-color:${colorVO.ccode}">
									<c:choose>
										<c:when test="${statusColor.count == 1}">
											<div class="color-button-selector"></div>
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
					<div class="clear"></div>
					<!-- //컬러 리스트 -->
					
					
					<!-- 컬러 이름 -->
					<div class="pdd-color-names">
						<ul>
							<c:forEach items="${productVO.colorList}" var="colorVO" varStatus="statusColor">
								<c:choose>
									<c:when test="${statusColor.count == 1}">
										<li class="pdd-color-name">
											<div>${colorVO.name}</div>
										</li>
									</c:when>
									<c:otherwise>
										<li class="pdd-color-name display-none">
											<div>${colorVO.name}</div>
										</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</ul>
					</div>
					<br /><br />
					<!-- //컬러 이름 -->


					<!-- 가격비교 -->
					<div class="card-compare-price" onclick="compareProduct(${productVO.pseq});">
						<div class="plus-button"><span>&nbsp;가격 비교하기</span></div>
					</div>
					<!-- //가격비교 -->
					<div class="clear"></div>

				</div>
				<!-- //이미지, 컬러 리스트, 가격비교 (제품상세 왼쪽) -->



				<!-- 선택사항 (제품상세 오른쪽) -->
				<div class="pdd-selectors">
					<!-- 사용중인 통신사 (commList) -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name">사용중인 통신사</div>
						<div class="pdd-selector-content">
							<div class="pdd-box pdd-box-selected comm-ci comm-ci-1" value="2"><img src="images/common/tong-kt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-2" value="1"><img src="images/common/tong-skt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-3" value="3"><img src="images/common/tong-lg.png" /></div>
						</div>
					</div>
					
					<!-- 사용하실 통신사 (commList) -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name">사용하실 통신사</div>
						<div class="pdd-selector-content">
							<div class="pdd-box pdd-box-selected comm-ci comm-ci-1" value="2"><img src="images/common/tong-kt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-2" value="1"><img src="images/common/tong-skt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-3" value="3"><img src="images/common/tong-lg.png" /></div>
						</div>
					</div>


					<!-- 기기변경 / 통신사이동 (선택 : 위 값 매칭) -->
					<div class="pdd-selector-wrap pdd-small-wrap">
						<div class="pdd-selector-name pdd-small-wrap"></div>
						<div class="pdd-selector-content pdd-small-wrap">
						</div>
					</div>





					<!-- 요금제 (rplanList) -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name pdd-rplan-wrap">요금제</div>
						<div class="pdd-selector-content pdd-rplan-wrap">
							<div class="pdd-box pdd-rplan-content-wrap">
								<div class="pdd-rplan-cont-up down_btn"></div>
								<div class="pdd-rplan-cont-dn"></div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					
					<!-- 할인방법 (프론트 선택 후 order_detail에 넘겨주기)
					공시지원 할인 / 선택약정할인 => 할부금 할인, 통신요금 할인 각각 적용 -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name pdd-discount-wrap">할인방법</div>
						<div class="pdd-selector-content pdd-discount-wrap">
							<div class="pdd-box pdd-box-selected pdd-discount cntr-i" value="500000">
								공시지원할인<br />
								총 500,000원
							</div>
							<div class="pdd-box pdd-discount cntr-i" value="600000">
								선택약정할인<br />
								총 600,000원
							</div>
						</div>
					</div>
					<!-- 할인방법 - display -->
					<div class="pdd-selector-wrap pdd-small-wrap">
						<div class="pdd-selector-name pdd-small-wrap"></div>
						<div class="pdd-selector-content pdd-small-wrap">
						</div>
					</div>



					<!-- 구매방법 (프론트 선택 후 order_detail에 넘겨주기)
					0, 24, 30, 36 개월 -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name">구매방법</div>
						<div class="pdd-selector-content">
							<div class="pdd-box pdd-mplan cntr-i" value="1"><span>일시불</span></div>
							<div class="pdd-box pdd-box-selected pdd-mplan cntr-i" value="24"><span>24개월</span></div>
							<div class="pdd-box pdd-mplan cntr-i" value="30"><span>30개월</span></div>
							<div class="pdd-box pdd-mplan cntr-i" value="36"><span>36개월</span></div>
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
	<div class="pdd-right-wrap">
		<!-- 스크롤 박스 wrap-->
		<div class="pdd-scrollbox-wrap card-normal">

			<!-- 납부 금액 (A+B) -->
			<div class="pdd-monthly-total-wrap">
				<div class="pdd-text-middle">
					<div class="txt-al-l float-l"><div class="red-circle float-l">A</div><div class="float-l">+</div><div class="red-circle float-l">B</div><div class="float-l"> 월 납부금액</div></div>
					<div class="txt-al-r float-r"><div class="pdd-price-big">0,000</div><div>원</div></div>
				</div>
			</div>
			<div class="clear"></div>
			
			<!-- 월 할부금 (A) -->
			<div class="pdd-monthly-div-wrap">
				<!-- 메인 (c / 구매방법(할부개월) = 월할부금) -->
				<div class="pdd-text-middle">
					<div class="txt-al-l"><div class="red-circle float-l">A</div><div class="float-l"> 월 할부금</div><div class="float-l"> (</div><div class="float-l">24</div><div class="float-l">개월)</div></div>
					<div class="txt-al-r pdd-price-middle float-r">0,000</div><div class="float-r">원</div>
				</div>
				<div class="clear"></div>
				
				<!-- 출고가 (price2) -(a) -->
				<div>
					<div class="txt-al-l">출고가</div><div class="txt-al-r">0,000</div><div class="txt-al-r">원</div>
				</div>
				<div class="clear"></div>
				
				<!-- 공시지원 할인 (hidden toggle) (고정) (b) -->
				<div>
					<div class="txt-al-l">공시지원할인</div><div class="txt-al-r">0,000</div><div class="txt-al-r">원</div>
				</div>
				<div class="clear"></div>
				
				<!-- 할부원금 (a - b => c) -->
				<div>
					<div class="txt-al-l">할부원금</div><div class="txt-al-r pdd-price-middle">0,000</div><div class="txt-al-r">원</div>
				</div>
				<div class="clear"></div>
			</div>
			
			<!-- 월 통신요금 (B) -->
			<div class="pdd-monthly-comm-wrap">
				<!-- 메인 (a -b = 월 통신요금) -->
				<div class="txt-al-r pdd-text-middle">
					<div class="txt-al-l"><div class="red-circle">B</div> 월 통신요금</div>
					<div class="pdd-price-middle">0,000</div><div class="txt-al-r">원</div>
				</div>
				<div class="clear"></div>
				<!-- 스탠다드 (요금제에서 가져옴) (a) -->
				<div>
					<div class="txt-al-l">세이브</div><div class="txt-al-r">0,000</div><div class="txt-al-r">원</div>
				</div>
				<div class="clear"></div>
				<!-- 선택약정 할인 (hidden toggle) (고정) (b) -->
				<div>
					<div class="txt-al-l">선택약정할인(25%)</div><div class="txt-al-r pdd-text-red"><div>-</div><div class="txt-al-r pdd-text-red">0,000</div><div>원</div>
				</div>
				<div class="clear"></div>
			</div>
			
			<!-- 버튼 (온라인 신청하기) -->
			<div>
				<div class="submit submit-blue ppd-submit">온라인 신청하기</div>
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




<br /><br /><br /><br /><br />
<!-- 팝업 KT (2)-->
<div class="comm-kt pdd-popup-wrap card-normal">
	<div class="pdd-popup-title"><img src="images/common/tong-kt.png" />&nbsp;<span>KT 요금표</span></div>
	<table>
		<tr><td class="pdd-popup-subtitle" colspan="2">5G 수퍼플랜</td><td class="pdd-popup-text" colspan="3">5G 데이터가 완전무제한에 해외에서 끊김없는 데이터!</td></tr>
		<c:forEach items="${rplanVO}" var="plan">
			<c:if test="${plan.mseq == 2}">
				<tr onclick='selectPlan("${plan.name}", \"<fmt:formatNumber value="${plan.charge}" type="number" maxFractionDigits="3" />\", "${plan.dataplan}", "${plan.timeplan}", "${plan.textplan}");'>
					<td class="pdd-popup-content pdd-popup-left">${plan.name}</td>
					<td class="pdd-popup-content rb-color">월 <fmt:formatNumber value="${plan.charge}" type="number" maxFractionDigits="3" />원</td>
					<td class="pdd-popup-content">${plan.dataplan}</td>
					<td class="pdd-popup-content">${plan.timeplan}</td>
					<td class="pdd-popup-content">${plan.textplan}</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</div>
<!-- //팝업 KT -->


<!-- 팝업 SKT (1)-->

<!-- //팝업 SKT -->


<!-- 팝업 LGU+ (3)-->

<!-- //팝업 LGU+ -->



</article>
<!-- //MAIN -->



<!-- 비교 상자 불러오기 -->
<%@ include file="../comparePopup.jsp"%>

<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>