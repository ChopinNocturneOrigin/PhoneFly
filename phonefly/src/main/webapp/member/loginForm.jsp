<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- MAIN  -->
<!-- 
author : BHS
-->


<!-- 헤더 불러오기 -->
<%@ include file="../header.jsp"%>
<script src="script/removeMenuSession.js"></script>


<article>
<div class="wrap login-form-wrap card-normal">
	<div class="login-form">
		<form method="post" action="pf.do" name="loginForm">
				<input type="hidden" name="command" value="login" />
				<div class="title">PhoneFly계정으로 로그인</div>
				<fieldset>
					<legend></legend>
					<div class="loginID login-box-outside">
					<label>User ID</label><br />
					<input name="id" type="text" class="input-trans" />
					</div>
					<div class="loginPwd login-box-outside">
					<label>Password</label><br />
					<input name="pwd" type="password" class="input-trans" />
					</div>
				</fieldset>
				<div class="buttons">
					<input type="submit" value="로그인" onclick="return loginCheck();" />
					<input type="button" value="회원가입" onclick="location.href='pf.do?command=contract';" />
					<input type="button" value="아이디 찾기" onclick="findId();" />
					<input type="button" value="비밀번호 찾기" onclick="findPwd();"/>
				</div><br /><br />
				<c:if test="${not empty param.message}">
					<div>&nbsp;&nbsp;&nbsp;${param.message}</div>
				</c:if>
				<c:if test="${not empty message}">
					<div>&nbsp;&nbsp;&nbsp;${message}</div>
				</c:if>
		</form>
	</div>
</div>

<div class="clear"></div>
</article>
<!-- //MAIN -->



<!-- footer 불러오기 -->
<%@ include file="../footer.jsp"%>