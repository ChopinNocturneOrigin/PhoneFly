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
			<th>전화번호&nbsp;</th><td><input type="text" name="phone" class="input-text input-text-bg-gray input-text-font-normal" /></td>
			</tr>
		</table>
		<br />
		<input type="submit" value="찾기" class="submit submit-blue dup-btn" />
	</form>
	<br />
	<c:if test="${not empty member}">
		<h2>확인된 아이디는 ${member.id} 입니다.</h2>
	</c:if>
</div>
</body>
</html>