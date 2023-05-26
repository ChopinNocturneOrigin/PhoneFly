<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디(ID) 찾기</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<script src="script/common.js"></script>
</head>
<body>
<div class="zipnum-wrap id-check-wrap">
	<h2>아이디(ID) 찾기</h2>
	<form method="post" name="formm" action="pf.do">
		<input type="hidden" name="command" value="selectId" />
		<table id="find-id">
			<tr>
			<th>이름&nbsp;</th><td><input type="text" name="name" class="input-text input-text-bg-gray input-text-font-normal" /></td>
			</tr>
			<tr>
			<th>이메일&nbsp;</th><td><input type="text" name="email" class="input-text input-text-bg-gray input-text-font-normal" /></td>
			</tr>
		</table>
	</form>
	<br />
	<c:if test="${result == 1}">
		<c:choose>
			<c:when test="${not empty idResult}">
				<h2>확인된 아이디는 ${idResult} 입니다.</h2>
			</c:when>
			<c:otherwise>
				<h2>아이디를 찾을 수 없습니다. 다시 검색해주세요.</h2>
			</c:otherwise>
		</c:choose>
	</c:if>
</div>
</body>
</html>