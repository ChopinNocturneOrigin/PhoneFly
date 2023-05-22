<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 
author : BHS
-->
<!-- HEADER -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PhoneFly</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/mainBanner.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/comparePopup.css">
<script src="script/jquery-3.6.4.min.js"></script>
<script src="script/common.js"></script>
<script src="script/member.js"></script>
<script src="script/mainMenu.js"></script>
<script src="script/mainBanner.js"></script>
<script src="script/mainColorSelect.js"></script>
<script src="script/comparePopup.js"></script>
<!-- <script src="script/member.js"></script>
<script src="script/mypage.js"></script> -->
</head>
<body>
<div class="wrap">
<header id="header">
	<div id="logo">
		<img src="images/logo.png" />
	</div>
				<nav id="sub_menu">
					<ul>

						<c:choose>
							<c:when test="${empty loginUser}">
								<li><a href="pf.do?command=loginForm">로그인</a></li>
								<li><a href="pf.do?command=joinForm">회원가입</a></li>
							</c:when>
							<c:otherwise>

								<li>${loginUser.name}(${loginUser.id})</li> --%>
								<li><a href="pf.do?command=">정보수정</a></li>
								<li><a href="pf.do?command=">로그아웃</a></li>
								<li><a href="pf.do?command=">장바구니</a></li>
								<li><a href="pf.do?command=">마이페이지</a></li>
								<li><a href="pf.do?command=">1:1 문의</a></li>
							</c:otherwise>
						</c:choose>
						<!-- <li><a href="shop.do?cmd=admin">admin</a></li> -->
					</ul>
				</nav>
				<nav id="menu">
					<ul>
						<li><div class="main_menu"></div><a href="pf.do?command=productList">Apple</a></li>
						<li><div class="main_menu"></div><a href="pf.do?command=productList">삼성</a></li>
 						<li><div class="main_menu"></div><a href="pf.do?command=eventList">이벤트</a></li>
						<li><div class="main_menu"></div><a href="pf.do?command=productCompare">상품비교</a></li>
						<li><div class="main_menu"></div><a href="pf.do?command=FAQList">자주묻는질문</a></li>
						<li><div class="main_menu"></div><a href="pf.do?command=noticeList">공지사항</a></li>
					</ul>
				</nav>
</header>




<!-- To top button -->
    <button id="go_top" onclick="backToTop();"><svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" fill="currentColor"
        class="bi bi-arrow-up-circle-fill" viewBox="0 0 16 16">
        <path fill-rule="evenodd"
          d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z" />
      </svg></button>
<!-- //To top button -->





<div class="clear"></div>
<!-- //HEADER -->



