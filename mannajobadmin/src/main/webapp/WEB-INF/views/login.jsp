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
		<c:choose>
			<c:when test="${sessionId != null}">
				<h2>네이버 아이디 로그인 성공하셨습니다!!</h2>
				<h3>'${sessionId}' 님 환영합니다!</h3>
				<h3>
					<a href="logout">로그아웃</a>
				</h3>
			</c:when>
			<c:otherwise>
				<form action="login.userdo" method="post" name="frm"
					style="width: 470px;">
					<h2>로그인</h2>
					<input type="text" name="id" id="id" class="w3-input w3-border"
						placeholder="아이디" value="${id}"> <br> <input
						type="password" id="pwd" name="pwd" class="w3-input w3-border"
						placeholder="비밀번호"> <br> <input type="submit"
						value="로그인" onclick="#"> <br>
				</form>
				<input type="button" value="회원가입" onclick="location.href='/join/member'">
				<br>
				<!-- 네이버 로그인 -->
				<div id="naver_id_login" style="text-align: center">
					<a href="${naverurl}"> <img width="223"
						src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
				</div>
				<!-- 카카오 로그인 -->
				<div id="kakao_id_login" style="text-align: center">
					<!-- 로그인 되어있지 않을 때, 카카오 로그인 버튼 생성 -->
					<c:if test="${userId eq null}">
						<a href="${kakaourl}"><img width="223" src="resources/images/kakao_login_medium_narrow.png" /></a>
				    </c:if>
				    <!-- 로그인 되었을 때 -->
				    <c:if test="${userId ne null}">
				        <h1>로그인 성공입니다</h1>
				    </c:if>
				</div>

				<br>
			</c:otherwise>
		</c:choose>
	</center>
</body>
</html>
