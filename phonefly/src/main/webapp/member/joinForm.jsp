<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../sub/header.jsp" %>
<%@ include file="../sub/sub_image_menu5.jsp"%>

<article>
<div class="wrap join-form-wrap card-normal">
	<div class="join-form">
	<form method="post" name="joinForm" action="pf.do">
		<input type="hidden" name="command" value="join" />
		
		<fieldset>
			<legend>기본 정보</legend>
			<label>아이디</label>
			<input type="text" name="id" size="20" class="join-form-input" placeholder=" 아이디를 입력하세요" /><input type="hidden" name="reid" />&nbsp;
			<input type="button" value="중복 체크" class="dup-btn submit" onclick="idcheck();" /><br />
			<label>암호</label><input type="password" name="pwd" class="join-form-input" placeholder=" 암호를 입력하세요" /><br />
			<label>암호 재입력</label><input type="password" name="pwdCheck" class="join-form-input" placeholder=" 암호를 입력하세요"  /><br />
			<label>성명</label><input type="text" name="name" class="join-form-input" placeholder=" 성명을 입력하세요" /><br />
			<label>전화번호</label><input type="text" name="phone" class="join-form-input" placeholder=" 전화번호를 입력하세요"  /><br />
		</fieldset>
		
		<fieldset>
			<legend>추가 정보</legend>
			<label>우편번호</label><input type="text" name="zipnum" size="20" class="join-form-input" placeholder=" 주소찾기를 누르세요" disabled />&nbsp;
			<input type="button" value="주소 찾기" class="dup-btn submit" class="join-form-input" onclick="post_zip();" /><br />
			<label>주소</label><input type="text" name="address1" size="50" class="join-form-input" placeholder=" 주소찾기를 누르세요" disabled /><br />
			<label>상세주소</label><input type="text" name="address2" size="30" class="join-form-input" placeholder=" 상세주소를 입력하세요" /><br />
			<label>이메일</label><input type="text" name="email" size="30" class="join-form-input" placeholder=" 이메일을 입력하세요" /><br />
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

<%@ include file="../sub/footer.jsp" %>