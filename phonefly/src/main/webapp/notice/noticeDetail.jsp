<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>


<article>

<!-- 서브 배너 불러오기 -->
<%@ include file="sub_image_menu.jsp"%>

 
<!-- 공지사항 상세보기 -->
<div class="board-inner-wrap card-normal board-notice-detail-inner-warp">

<h1>공지사항</h1>
<div id="board-nd-wrap-inner">

<table id="board-table-detail">


	<tr>
		<th class="board-detail-th">번호<hr class="board-event-hr-left"/></th><td class="board-detail-no">${NoticeVO.nseq}<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th>작성일자<hr class="board-event-hr-left"/></th><td class="board-detail-date"><fmt:formatDate value="${NoticeVO.indate}" /><hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th>제목<hr class="board-event-hr-left"/></th><td class="board-detail-subject">${NoticeVO.subject}<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th id="board-event-detail-content-title">내용<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap"><pre>${NoticeVO.content}</pre></div></td>
	</tr>
	<tr><td class="board-submit-line" colspan="3"><input type="button" class="submit submit-blue board-detail-submit" value="돌아가기" onclick="location.href='pf.do?command=noticeList';" /></td></tr>




<!-- 
	<tr>
		<th class="board-detail-th">번호<hr class="board-event-hr-left"/></th><td class="board-detail-no">111<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th>작성일자<hr class="board-event-hr-left"/></th><td class="board-detail-date">2023.05.26.<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th>제목<hr class="board-event-hr-left"/></th><td class="board-detail-subject">제목 제목 제목 제목<hr class="board-event-hr-right"/></td>
	</tr>
	<tr>
		<th>내용<hr class="board-event-hr-left"/></th><td class="board-detail-content"><div id="board-detail-content-inner-wrap">
<p>대통령은 법률안의 일부에 대하여 또는 법률안을 수정하여 재의를 요구할 수 없다. 군인은 현역을 면한 후가 아니면 국무총리로 임명될 수 없다. 형사피해자는 법률이 정하는 바에 의하여 당해 사건의 재판절차에서 진술할 수 있다. 제2항과 제3항의 처분에 대하여는 법원에 제소할 수 없다. 모든 국민은 주거의 자유를 침해받지 아니한다. 주거에 대한 압수나 수색을 할 때에는 검사의 신청에 의하여 법관이 발부한 영장을 제시하여야 한다.</p>

<p>국무총리 또는 행정각부의 장은 소관사무에 관하여 법률이나 대통령령의 위임 또는 직권으로 총리령 또는 부령을 발할 수 있다. 법률안에 이의가 있을 때에는 대통령은 제1항의 기간내에 이의서를 붙여 국회로 환부하고, 그 재의를 요구할 수 있다. 국회의 폐회중에도 또한 같다. 신체장애자 및 질병·노령 기타의 사유로 생활능력이 없는 국민은 법률이 정하는 바에 의하여 국가의 보호를 받는다.</p>

<p>대통령의 임기연장 또는 중임변경을 위한 헌법개정은 그 헌법개정 제안 당시의 대통령에 대하여는 효력이 없다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 국무총리는 국회의 동의를 얻어 대통령이 임명한다. 국회는 국무총리 또는 국무위원의 해임을 대통령에게 건의할 수 있다.</p>

<p>대통령은 국민의 보통·평등·직접·비밀선거에 의하여 선출한다. 대한민국의 주권은 국민에게 있고, 모든 권력은 국민으로부터 나온다. 대통령은 취임에 즈음하여 다음의 선서를 한다. 탄핵소추의 의결을 받은 자는 탄핵심판이 있을 때까지 그 권한행사가 정지된다. 모든 국민은 능력에 따라 균등하게 교육을 받을 권리를 가진다.</p>
</div></td>
	</tr>

 -->


</table>
<div id="board-bottom"></div>


</div>
</div>
<!-- //공지사항 상세보기 -->





<div class="clear"></div>
</article>
<!-- //MAIN -->


<!-- 비교 상자 불러오기 -->
<%@ include file="../comparePopup.jsp"%>


<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>