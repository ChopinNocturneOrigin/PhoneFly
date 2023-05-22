<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 체크</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script src="../script/common.js"></script>
<script src="../script/member.js"></script>
<script src="../script/mypage.js"></script>
</head>
<body>
<div class="id-check-wrap">
<h2>ID 중복 확인</h2>
<form method="post" name="idCheckForm" action="shop.do">
	<input type="hidden" name="commmand" value="idCheck" />
	<span>User ID</span> &nbsp;<input type="text" name="id" value="${id}" class="input-text input-text-bg-gray input-text-font-normal" />
	<input type="submit" value="검색" class="submit dup-btn" /><br /><br /><br />
	<div>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.joinForm.id.value="";
				opener.document.joinForm.reid.value="";
			</script>
			${id}는 이미 사용중인 아이디 입니다.
		</c:if>
		<c:if test="${result == -1}">
			${id}는 사용 가능한 ID입니다.
			<input type="button" value="사용" class="submit submit-blue" onclick="idok('${id}');" />
		</c:if>
	</div>
</form>
</div>
</body>
</html>