<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<article>
<div class="wrap join-form-wrap card-normal">
	<div class="join-form">
	<form method="post" name="joinForm">
		<input type="hidden" name="command" value="join" />
		
		<fieldset>
			<legend>기본 정보</legend>
			<label>User ID</label><input type="text" name="id" size="12" class="join-form-input" /><input type="hidden" name="reid" />
			<input type="button" value="중복 체크" class="dup-btn submit" onclick="idcheck();" /><br />
			<label>Password</label><input type="password" name="pwd" class="join-form-input" /><br />
			<label>Retype password</label><input type="password" name="pwdCheck" class="join-form-input" /><br />
			<label>Name</label><input type="text" name="name" class="join-form-input" /><br />
			<label>Phone number</label><input type="text" name="phone" class="join-form-input" /><br />
		</fieldset>
		
		<fieldset>
			<legend>추가 정보</legend>
			<label>Zip code</label><input type="text" name="zip_num" size="10" class="join-form-input" />
			<input type="button" value="주소 찾기" class="dup-btn submit" class="join-form-input" onclick="post_zip();" /><br />
			<label>Address</label><input type="text" name="address1" size="50" class="join-form-input" /><br />
			<label>Details</label><input type="text" name="address2" size="25" class="join-form-input" /><br />
			<label>E-mail</label><input type="text" name="email" class="join-form-input" /><br />
		</fieldset>
		
		<div class="clear"></div>
		<div class="buttons">
			<input type="button" value="회원가입" class="submit submit-blue" onclick="go_save();" />&nbsp;
			<input type="reset" value="취소" class="cancel" />
		</div>
	</form>
	</div>
</div>
</article>

<%@ include file="../footer.jsp" %>