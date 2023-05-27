<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../sub/header.jsp"%>


<article>

<!-- 서브 배너 불러오기 -->
<%@ include file="../sub/sub_image_menu6.jsp"%>

 
<!-- 고객지원 페이지 -->
<div id="support-inner-wrap">





	<!-- 고객지원 페이지 왼쪽 메뉴 -->
	<div class="support-left-menu card-normal">

	<%@ include file="../sub/sub_support_menu.jsp"%>

	</div>
	<!-- //고객지원 페이지 왼쪽 메뉴 -->


	<!-- 고객지원 페이지 오른쪽 내용 -->
	<div class="support-right-content card-normal">
		<div id="qna-wrap-inner"class="support-inner-wrap">
			<div id="board"></div>
			<h1>주문 상세보기</h1>
			
			<table id="board-table-detail">





				<tr>
					<th class="board-detail-th">번호<hr class="board-event-hr-left"/></th><td class="board-detail-no">${qnaVO.qseq}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr>
					<th>제목<hr class="board-event-hr-left"/></th><td class="board-detail-subject">${qnaVO.subject}<hr class="board-event-hr-right"/></td>
				</tr>
				<tr>
					<th>작성일자<hr class="board-event-hr-left"/></th><td class="board-detail-date"><fmt:formatDate value="${qnaVO.indate}" /><hr class="board-event-hr-right"/></td>
				</tr>
				<tr>
					<th id="board-event-detail-content-title">내용<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap"><pre>${qnaVO.content} // 대통령은 내우·외환·천재·지변 또는 중대한 재정·경제상의 위기에 있어서 국가의 안전보장 또는 공공의 안녕질서를 유지하기 위하여 긴급한 조치가 필요하고 국회의 집회를 기다릴 여유가 없을 때에 한하여 최소한으로 필요한 재정·경제상의 처분을 하거나 이에 관하여 법률의 효력을 가지는 명령을 발할 수 있다.

대통령이 궐위된 때 또는 대통령 당선자가 사망하거나 판결 기타의 사유로 그 자격을 상실한 때에는 60일 이내에 후임자를 선거한다. 헌법재판소는 법관의 자격을 가진 9인의 재판관으로 구성하며, 재판관은 대통령이 임명한다.

학교교육 및 평생교육을 포함한 교육제도와 그 운영, 교육재정 및 교원의 지위에 관한 기본적인 사항은 법률로 정한다. 국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외에서 책임을 지지 아니한다.
					</pre></div></td>
				</tr>

				<c:if test="${not empty qnaVO.reply}">
					<tr class="board-table-before-btns">
						<th id="board-event-detail-content-title">상담답변<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap"><pre>${qnaVO.reply} // 대통령은 내우·외환·천재·지변 또는 중대한 재정·경제상의 위기에 있어서 국가의 안전보장 또는 공공의 안녕질서를 유지하기 위하여 긴급한 조치가 필요하고 국회의 집회를 기다릴 여유가 없을 때에 한하여 최소한으로 필요한 재정·경제상의 처분을 하거나 이에 관하여 법률의 효력을 가지는 명령을 발할 수 있다.
	
	대통령이 궐위된 때 또는 대통령 당선자가 사망하거나 판결 기타의 사유로 그 자격을 상실한 때에는 60일 이내에 후임자를 선거한다. 헌법재판소는 법관의 자격을 가진 9인의 재판관으로 구성하며, 재판관은 대통령이 임명한다.
	
	학교교육 및 평생교육을 포함한 교육제도와 그 운영, 교육재정 및 교원의 지위에 관한 기본적인 사항은 법률로 정한다. 국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외에서 책임을 지지 아니한다.
						</pre></div></td>
					</tr>
				</c:if>





				<tr><td class="board-submit-line" colspan="3">
					<c:if test="${orderVO.result == '1'}">
						<input type="button" class="submit submit-blue board-submit" value="주문취소" onclick="cancelOrder(${orderVO.odseq});" />
					</c:if>
					<input type="button" class="submit submit-blue board-submit" value="목록으로" onclick="location.href='pf.do?command=orderList';" />				</td></tr>
			</table>
			<!-- <div id="board-bottom"></div> -->



			<!-- <div id="board-list-paging-bottom-margin"></div> -->
		</div>
	</div>
	<!-- //고객지원 페이지 오른쪽 내용 -->








</div>
<!-- //고객지원 페이지 -->

<div class="clear"></div>
</article>
<!-- //MAIN -->



<!-- footer 불러오기 -->
<%@ include file="../sub/footer.jsp"%>