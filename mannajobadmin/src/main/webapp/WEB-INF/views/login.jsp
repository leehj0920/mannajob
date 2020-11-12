<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>NAVER LOGIN TEST</title>
</head>
<body>
	<h1>Login Form</h1>
	<hr>
	<br>
	<center>
		<a href="/logout">로그아웃</a>
		<form action="/logincheck" method="post" name="frm" style="width: 470px;">
			<h2>로그인</h2>
			<input type="text" name="m_id" id="id" class="w3-input w3-border" placeholder="아이디" value="${id}"><br>
			<input type="password" id="passwd" name="m_passwd" class="w3-input w3-border" placeholder="비밀번호"><br>
			<input type="submit" value="로그인" onclick="#"><br>
		</form>
		<input type="button" value="회원가입" onclick="location.href='/join/member'"><br>
		
		<!-- 네이버 로그인 -->
		<div id="naver_id_login" style="text-align: center">
			<a href="${naverurl}"> <img width="223"
				src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
		</div>
		
		<!-- 카카오 로그인 -->
		<div id="kakao_id_login" style="text-align: center">
			<a href="${kakaourl}"><img width="223"
				src="resources/images/kakao_login_medium_narrow.png" /></a>
		</div>

		<br>
	</center>
</body>
</html>
