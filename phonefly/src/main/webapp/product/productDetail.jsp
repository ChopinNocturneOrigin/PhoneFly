<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>


<article>
<!-- 제품 상세 전체 프레임 -->
<div class="wrap pdd-wrap">
<form name="productForm" method="post" action="pf.do">
	<input type="hidden" name="command" value="order" />
	<input type="hidden" class="pdImg" value="${productVO.colorList[0].image}" />
	<input type="hidden" class="pdName" value="${productVO.name}" />
	<input type="hidden" class="pdPrice" value="<fmt:formatNumber value='${productVO.price2}' type='number' maxFractionDigits='3' />원" />
	
	
	
	<!-- 온라인 신청하기 submit 전달 값 정리 -->
	<input type="hidden" class="pdPseq" name="pseq" value="${productVO.pseq}" />
	<input type="hidden" name="id" value="${id}" />
	<input type="hidden" name="cseq" value="" />
	<input type="hidden" name="rseq" class="rseq" value="" /> <!-- KT 첫번째 뽑아내기 필요 -->
	<input type="hidden" name="discount" class="discount-id" value="0" /> <!-- (0: 500000, 1: 600000) 금액 / 24 -->
	<input type="hidden" name="buyplan" value="24" /> <!-- (0: 1, 1: 24, 2: 30, 3: 36) -->
	<input type="hidden" name="cc" class="cc-value" value="" /> <!-- (g == h: 기기변경(1), g != h: 통신사이동(0)) -->
	<input type="hidden" name="dctotal" value="" />
	<input type="hidden" name="dcmonth" value="" />
	<input type="hidden" name="mmonth" value="" />
	<input type="hidden" name="mtotal" value="" />
	<!-- //온라인 신청하기 submit 전달 값 정리 -->

	<!-- 온라인 신청하기 가져오는 값 정리 --> <!-- KT 첫번째 뽑아내기 필요 -->
<!-- 	<input type="hidden" name="rplan-name" class="rplan-name" value="" />
	<input type="hidden" name="rplan-charge" class="rplan-charge" value="" />
	<input type="hidden" name="rplan-dataplan" class="rplan-dataplan" value="" />
	<input type="hidden" name="rplan-timeplan" class="rplan-timeplan" value="" />
	<input type="hidden" name="rplan-textplan" class="rplan-textplan" value="" /> -->
	<!-- //온라인 신청하기 가져오는 값 정리 -->


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
							<div class="pdd-box pdd-box-selected comm-ci comm-ci-1 comm-old comm-old-2" onclick="clickOldComm(2);"><img src="images/common/tong-kt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-2 comm-old comm-old-1" onclick="clickOldComm(1);"><img src="images/common/tong-skt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-3 comm-old comm-old-3" onclick="clickOldComm(3);"><img src="images/common/tong-lg.png" /></div>
						</div>
					</div>
					
					<!-- 사용하실 통신사 (commList) -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name">사용하실 통신사</div>
						<div class="pdd-selector-content">
							<div class="pdd-box pdd-box-selected comm-ci comm-ci-1 comm-new comm-new-2" onclick="clickNewComm(2);"><img src="images/common/tong-kt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-2 comm-new comm-new-1" onclick="clickNewComm(1);"><img src="images/common/tong-skt.png" /></div>
							<div class="pdd-box comm-ci comm-ci-3 comm-new comm-new-3" onclick="clickNewComm(3);"><img src="images/common/tong-lg.png" /></div>
						</div>
					</div>


					<!-- 기기변경 / 통신사이동 (선택 : 위 값 매칭) -->
					<div class="pdd-selector-wrap pdd-small pdd-small-wrap">
						<div class="pdd-selector-name pdd-small"></div>
						<div class="pdd-selector-content pdd-small">
							<div class="pdd-small-blk-wrap pdd-small-txt cc-title">통신사이동</div>
							<div class="pdd-small-txt cc-text">&nbsp;쓰던번호 그대로 <span class="comm-txt">KT</span>로 통신사만 바꿀래요</div>
						</div>
					</div>





					<!-- 요금제 (rplanList) -->
					<!-- 레이어 팝업 #layer-popup-kt skt lg-->
					<div id="btn-popup-open" class="pdd-selector-wrap btn-divpopup-open" href="#layer-popup-kt">
						<div class="pdd-selector-name pdd-rplan-wrap">요금제</div>
						<div class="pdd-selector-content pdd-rplan-wrap">
							<div class="pdd-box pdd-rplan-content-wrap">
								<div class="pdd-rplan-cont-up down_btn">
								<span class="rplan-name"></span> | 월 <span class="rplan-charge"></span>원
								</div>
								<div class="pdd-rplan-cont-dn">
								데이터 <span class="rplan-dataplan"></span> / 음성 <span class="rplan-timeplan"></span> 
								<span class="rplan-textplan"></span>
								</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					
					<!-- 할인방법 (프론트 선택 후 order_detail에 넘겨주기)
					공시지원 할인 / 선택약정할인 => 할부금 할인, 통신요금 할인 각각 적용 -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name pdd-discount-wrap">할인방법</div>
						<div class="pdd-selector-content pdd-discount-wrap">
							<div class="pdd-box pdd-box-selected pdd-discount cntr-i discount-0" onclick="clickDiscountMethod(0);">
								공시지원할인<br />
								총 500,000원
							</div>
							<div class="pdd-box pdd-discount cntr-i discount-1" onclick="clickDiscountMethod(1);">
								선택약정할인<br />
								총 600,000원
							</div>
						</div>
					</div>
					<!-- 할인방법 - display -->
					<div class="pdd-selector-wrap pdd-small pdd-small-wrap">
						<div class="pdd-selector-name pdd-small"></div>
						<div class="pdd-selector-content pdd-small">
							<div class="pdd-small-blk-wrap discount-title">단말기 할인</div>
							<div class="pdd-small-txt discount-text">&nbsp;개통당시 1회 단말기 구매 비용 할인</div>
							<input type="hidden" name="rplan-discount" value="0" />
						</div>
					</div>



					<!-- 구매방법 (프론트 선택 후 order_detail에 넘겨주기)
					0, 24, 30, 36 개월 -->
					<div class="pdd-selector-wrap">
						<div class="pdd-selector-name">구매방법</div>
						<div class="pdd-selector-content">
							<div class="pdd-box pdd-mplan cntr-i buy-type buy-type-0" onclick="clickBuyType(0, 1);"><span>일시불</span></div>
							<div class="pdd-box pdd-box-selected pdd-mplan cntr-i buy-type buy-type-1" onclick="clickBuyType(1, 24);"><span>24개월</span></div>
							<div class="pdd-box pdd-mplan cntr-i buy-type buy-type-2" onclick="clickBuyType(2, 30);"><span>30개월</span></div>
							<div class="pdd-box pdd-mplan cntr-i buy-type buy-type-3" onclick="clickBuyType(3, 36);"><span>36개월</span></div>
						</div>
					</div>
				</div>
				<!-- //선택사항 (제품상세 오른쪽) -->
			</div>
			<!-- //제품 상세 이미지 및 선택사항 -->
		</div>
		<div class="clear"></div>
		<!-- //제품 상세 메인 -->





		<!-- 제품 상세 설명 {product : content} -->
		<div>
		<hr class="pdd-detail-hr" />
		<div class="pdd-detail-txt">${productVO.content}
		타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다. 대한민국은 통일을 지향하며, 자유민주적 기본질서에 입각한 평화적 통일 정책을 수립하고 이를 추진한다.

대한민국의 주권은 국민에게 있고, 모든 권력은 국민으로부터 나온다. 일반사면을 명하려면 국회의 동의를 얻어야 한다. 지방의회의 조직·권한·의원선거와 지방자치단체의 장의 선임방법 기타 지방자치단체의 조직과 운영에 관한 사항은 법률로 정한다.

감사원의 조직·직무범위·감사위원의 자격·감사대상공무원의 범위 기타 필요한 사항은 법률로 정한다. 국회의 정기회는 법률이 정하는 바에 의하여 매년 1회 집회되며, 국회의 임시회는 대통령 또는 국회재적의원 4분의 1 이상의 요구에 의하여 집회된다.

국방상 또는 국민경제상 긴절한 필요로 인하여 법률이 정하는 경우를 제외하고는, 사영기업을 국유 또는 공유로 이전하거나 그 경영을 통제 또는 관리할 수 없다.

제1항의 해임건의는 국회재적의원 3분의 1 이상의 발의에 의하여 국회재적의원 과반수의 찬성이 있어야 한다. 선거에 있어서 최고득표자가 2인 이상인 때에는 국회의 재적의원 과반수가 출석한 공개회의에서 다수표를 얻은 자를 당선자로 한다.

헌법재판소의 조직과 운영 기타 필요한 사항은 법률로 정한다. 모든 국민은 주거의 자유를 침해받지 아니한다. 주거에 대한 압수나 수색을 할 때에는 검사의 신청에 의하여 법관이 발부한 영장을 제시하여야 한다.

모든 국민은 거주·이전의 자유를 가진다. 대한민국의 국민이 되는 요건은 법률로 정한다. 국회의원은 법률이 정하는 직을 겸할 수 없다. 모든 국민은 사생활의 비밀과 자유를 침해받지 아니한다.

정당은 법률이 정하는 바에 의하여 국가의 보호를 받으며, 국가는 법률이 정하는 바에 의하여 정당운영에 필요한 자금을 보조할 수 있다. 국가는 법률이 정하는 바에 의하여 재외국민을 보호할 의무를 진다.</div>
		</div>
		<!-- //제품 상세 설명 -->

	</div>
	<!-- //제품 상세 왼쪽 프레임 -->


	<!-- 제품 상세 오른쪽 프레임 -->
	
	<div class="pdd-right-wrap">
		<!-- 스크롤 박스 wrap-->
		<div class="pdd-scrollbox-wrap" id="pdd-scroll-box">




			<ul>

			<!-- 납부 금액 (A+B) -->
			<li class="pdd-monthly-total-wrap pdd-text-middle pdd-bg-black-label pdd-bg-black-label-big ppd-card-normal">
				<ul class="pdd-right-inside-padding">
					<li>
						<div class="float-l"><div class="red-circle float-l">A</div><div class="float-l">&nbsp;+&nbsp;</div><div class="red-circle float-l">B</div><div class="float-l">&nbsp; 월 납부금액</div></div><br />
					</li>
					<li>
						<div class="txt-al-r float-r"><span class="float-r pdd-price-big"><span class="float-r pdd-big-inside">&nbsp;원</span>0,000</span></div>
					</li>
				</ul>
				<div class="clear"></div>
			</li>

			
			<!-- 월 할부금 (A) -->
			<li class="pdd-monthly-div-wrap ppd-card-normal">
			
			
			
				<ul>
				<!-- 메인 (c / 구매방법(할부개월) = 월할부금) -->
					<li class="pdd-text-middle pdd-bg-black-label">
						<div class="pdd-right-inside-padding">
							<div><div class="red-circle float-l">A</div><div class="float-l">&nbsp;월 할부금</div><div class="float-l"> (</div><div class="float-l">24</div><div class="float-l">개월)</div></div>
							<div class="float-r">&nbsp;원</div><div class="txt-al-r pdd-price-middle float-r">0,000</div>
						</div>
					<div class="clear"></div>
					</li>
					
					<!-- 출고가 (price2) -(a) -->
					<li>
						<div class="pdd-right-inside-padding pdd-right-inside-padding-white">
							<div class="txt-al-l float-l">출고가</div>
							<div class="float-r">&nbsp;원</div><div class="float-r">0,000</div>
						</div>
					<div class="clear"></div>
					</li>
					
					<!-- 공시지원 할인 (hidden toggle) (고정) (b) -->
					<li class="discount-method-1">
						<div class="pdd-right-inside-padding pdd-right-inside-padding-white">
							<div class="txt-al-l float-l">공시지원할인</div>
							<div class="float-r">&nbsp;원</div><div class="float-r pdd-text-red discount-value-a-text">0,000</div>
						</div>
					<div class="clear"></div>
					</li>
					
					<!-- 할부원금 (a - b => c) -->
					<li>
						<div class="pdd-right-inside-padding pdd-right-inside-padding-white">
							<div class="txt-al-l float-l">할부원금</div>
							<div class="float-r">&nbsp;원</div><div class="float-r pdd-price-middle">0,000</div>
						</div>
					<div class="clear"></div>
					</li>
				
				</ul>
				
				
				
				
			</li>
			
			<!-- 월 통신요금 (B) -->
			<li class="pdd-monthly-comm-wrap ppd-card-normal">
			
			
			
				<ul>
					<!-- 메인 (a -b = 월 통신요금) -->
					<li class="txt-al-r pdd-text-middle pdd-bg-black-label">
						<div class="pdd-right-inside-padding">
							<div class="txt-al-l"><div class="red-circle float-l">B</div><div class="float-l">&nbsp;월 통신요금</div></div>
							<div class="float-r">&nbsp;원</div><div class="pdd-price-middle float-r">0,000</div>
						</div>
					<div class="clear"></div>
					</li>
					<!-- 스탠다드 (요금제에서 가져옴) (a) -->
					<li>
						<div class="pdd-right-inside-padding pdd-right-inside-padding-white">
							<div class="txt-al-l float-l rplan-name">세이브</div>
							<div class="float-r">&nbsp;원</div><div class="float-r rplan-charge">0,000</div>
						</div>
					<div class="clear"></div>
					</li>
					<!-- 선택약정 할인 (hidden toggle) (고정) (b) -->
					<li class="discount-method-2 display-none">
						<div class="pdd-right-inside-padding pdd-right-inside-padding-white">
							<div class="txt-al-l float-l">선택약정할인(25%)</div>
							<div class="float-r">&nbsp;원</div><div class="float-r pdd-text-red discount-value-b-text">0,000</div>
						</div>
					</li>
				</ul>
				
				
				
				<div class="clear"></div>
			</li>
			
			<!-- 버튼 (온라인 신청하기) -->
			<li>
				<div class="submit submit-blue ppd-submit">온라인 신청하기</div>
			</li>



			</ul>

		</div>
		<!-- //스크롤 박스 (wrap) -->
	</div>
	<!-- //제품 상세 오른쪽 프레임 -->
	</div>
	<!-- 전체 프레임 안쪽 - 중앙 정렬용 -->
</form>
</div>
<!-- //제품 상세 전체 프레임 -->


<div class="clear"></div>





<!-- 구매 후기 프레임 -->
<div class="wrap pdd-wrap">
<div class="pdd-inside-wrap">
	<div class="pdd-review-wrap card-normal">
		<!-- 입력 파트 -->
		<c:if test="${orderPseqCount > 0}">
			<form name="reviewForm" method="post"  action="pf.do">
			<input type="hidden" name="command" value="reviewWrite" />
				<input type="hidden" name="id" value="${id}" />
				<input type="hidden" name="pseq" value="${pseq}" />
				<div class="pdd-review-inputarea">
					<ul>
						<li class="pdd-review-title">구매후기</li>
						<li class="float-l"><textarea name="content" cols="90" rows="5" placeholder="&#10&#10 구매후기를 입력하세요"></textarea></li>
						<li class="float-l pdd-review-submit">&nbsp;<input class="submit submit-blue"type="submit" value="구매후기 작성" /></li>
					</ul>
				</div>
			</form>
		</c:if>
		<div class="clear"></div>
		<!-- //입력 파트 -->
		
		<!-- 출력 파트 -->
		<div>
			<ul>
				<!-- 구매후기 테스트 더미 데이터 -->

<%-- 			<c:forEach begin="1" end="8">
				<li class="pdd-review-line">
					<div class="float-l pdd-review-ln-name">홍길동</div>
					<div class="float-l pdd-review-ln-content">혼인과 가족생활은 개인의 존엄과 양성의 평등을 기초로 성립되고 유지되어야 하며, 국가는 이를 보장한다. 국가는 청원에 대하여 심사할 의무를 진다.
이 헌법시행 당시의 법령과 조약은 이 헌법에 위배되지 아니하는 한 그 효력을 지속한다. 모든 국민은 학문과 예술의 자유를 가진다. 대통령은 필요하다고 인정할 때에는 외교·국방·통일 기타 국가안위에 관한 중요정책을 국민투표에 붙일 수 있다.</div>
					<div class="float-l">2023. 5.24.</div>
				</li>
			</c:forEach>
 --%>
				<!-- //구매후기 테스트 더미 데이터 -->
			<c:forEach items="${reviewList}" var="review" varStatus="statusReview">
				<c:choose>
					<c:when test="not empty review">
						<li class="pdd-review-line float-l">
							<div>${review.name}</div>
							<div>${review.content}</div>
							<div><fmt:formatDate value="${review.indate}" /></div>
						</li>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			</ul>
		</div>
	</div>
	<div class="pdd-right-wrap">
	</div>
</div>
</div>
<!-- //구매 후기 프레임 -->










<br /><br /><br /><br /><br />
<!-- 팝업 KT (2)-->
<div class="comm-kt pdd-popup-wrap card-normal layer-popup" id="layer-popup-kt">
	<div class="pdd-popup-title"><img src="images/common/tong-kt.png" />&nbsp;<span>KT 요금표</span></div>
	<table>
		<tr><td class="pdd-popup-subtitle" colspan="2">5G 수퍼플랜</td><td class="pdd-popup-text" colspan="3">5G 데이터가 완전무제한에 해외에서 끊김없는 데이터!</td></tr>
		<c:forEach items="${rplanVO}" var="plan">
			<c:if test="${plan.mseq == 2}">
				<tr onclick='selectPlan("${plan.name}", ${plan.charge}, "${plan.dataplan}", "${plan.timeplan}", "${plan.textplan}", "${plan.rseq}");'>
					<td class="pdd-popup-content pdd-popup-left" value="${plan.name}">${plan.name}</td>
					<td class="pdd-popup-content rb-color" value="${plan.charge}">월 <fmt:formatNumber value="${plan.charge}" type="number" maxFractionDigits="3" />원</td>
					<td class="pdd-popup-content" value="${plan.dataplan}">${plan.dataplan}</td>
					<td class="pdd-popup-content" value="${plan.timeplan}">${plan.timeplan}</td>
					<td class="pdd-popup-content" value="${plan.textplan}">${plan.textplan}</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</div>
<!-- //팝업 KT -->


<!-- 팝업 SKT (1)-->
<div class="comm-skt pdd-popup-wrap card-normal layer-popup" id="layer-popup-skt">
	<div class="pdd-popup-title"><img src="images/common/tong-skt.png" />&nbsp;<span>SKT 요금표</span></div>
	<table>
		<tr><td class="pdd-popup-subtitle" colspan="2">5GX 플랜</td><td class="pdd-popup-text" colspan="3">데이터 콘텐츠도 자유롭게! 초시대의 요금플랜</td></tr>
		<c:forEach items="${rplanVO}" var="plan">
			<c:if test="${plan.mseq == 1}">
				<tr onclick='selectPlan("${plan.name}", ${plan.charge}, "${plan.dataplan}", "${plan.timeplan}", "${plan.textplan}", "${plan.rseq}");'>
					<td class="pdd-popup-content pdd-popup-left" value="${plan.name}">${plan.name}</td>
					<td class="pdd-popup-content rb-color" value="${plan.charge}">월 <fmt:formatNumber value="${plan.charge}" type="number" maxFractionDigits="3" />원</td>
					<td class="pdd-popup-content" value="${plan.dataplan}">${plan.dataplan}</td>
					<td class="pdd-popup-content" value="${plan.timeplan}">${plan.timeplan}</td>
					<td class="pdd-popup-content" value="${plan.textplan}">${plan.textplan}</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</div>
<!-- //팝업 SKT -->


<!-- 팝업 LGU+ (3)-->
<div class="comm-lg pdd-popup-wrap card-normal layer-popup" id="layer-popup-lg">
	<div class="pdd-popup-title"><img src="images/common/tong-lg.png" />&nbsp;<span>LGU+ 요금표</span></div>
	<table>
		<tr><td class="pdd-popup-subtitle" colspan="2">5G 요금제</td><td class="pdd-popup-text" colspan="3">U+ 5G 서비스에 다양한 콘텐츠까지!</td></tr>
		<c:forEach items="${rplanVO}" var="plan">
			<c:if test="${plan.mseq == 3}">
				<tr onclick='selectPlan("${plan.name}", ${plan.charge}, "${plan.dataplan}", "${plan.timeplan}", "${plan.textplan}", "${plan.rseq}");'>
					<td class="pdd-popup-content pdd-popup-left" value="${plan.name}">${plan.name}</td>
					<td class="pdd-popup-content rb-color" value="${plan.charge}">월 <fmt:formatNumber value="${plan.charge}" type="number" maxFractionDigits="3" />원</td>
					<td class="pdd-popup-content" value="${plan.dataplan}">${plan.dataplan}</td>
					<td class="pdd-popup-content" value="${plan.timeplan}">${plan.timeplan}</td>
					<td class="pdd-popup-content" value="${plan.textplan}">${plan.textplan}</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</div>
<!-- //팝업 LGU+ -->



</article>
<!-- //MAIN -->



<!-- 비교 상자 불러오기 -->
<%@ include file="../comparePopup.jsp"%>

<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>