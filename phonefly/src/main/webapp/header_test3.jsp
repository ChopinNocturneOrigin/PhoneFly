<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PhoneFly</title>
<link rel="stylesheet" type="text/css" href="css/test.css">
<script src="script/jquery-3.6.4.min.js"></script>
<script src="script/mainmenu.js"></script>
<!-- <script src="script/member.js"></script>
<script src="script/mypage.js"></script> -->
</head>
<body>
<div id="wrap">
<header id="header">
	<div id="logo">
	CI
	</div>
				<nav id="sub_menu">
					<ul>

<%-- 						<c:choose>
							<c:when test="${empty loginUser}">
								<li><a href="shop.do?cmd=loginForm">로그인</a></li>
								<li><a href="shop.do?cmd=contract">회원가입</a></li>
							</c:when>
							<c:otherwise>
 --%>
<%-- 								<li>${loginUser.name}(${loginUser.id})</li> --%>
								<li><a href="#">정보수정</a></li>
								<li><a href="#">로그아웃</a></li>
								<li><a href="#">장바구니</a></li>
								<li><a href="#">마이페이지</a></li>
								<li><a href="#">1:1 문의</a></li>
								<li><a href="#">자주묻는질문</a></li>
								<li><a href="#">공지사항</a></li>
<%-- 							</c:otherwise>
						</c:choose>
 --%>
						<!-- <li><a href="shop.do?cmd=admin">admin</a></li> -->
					</ul>
				</nav>
				<nav id="menu">
					<ul>
						<li><div class="main_menu"></div><a href="header_test.jsp">Apple</a></li>
						<li><div class="main_menu"></div><a href="header_test2.jsp">삼성</a></li>
						<li><div class="main_menu"></div><a href="header_test3.jsp">특가품</a></li>
						<li><div class="main_menu"></div><a href="header_test4.jsp">이벤트</a></li>
						<li><div class="main_menu"></div><a href="header_test5.jsp">상품비교</a></li>
					</ul>
				</nav>
</header>
<img src="images/test.png" />
</div>
</body>
</html>