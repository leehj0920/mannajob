<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NAVER LOGIN TEST</title>
</head>
<body>
	<h1>메인 페이지 입니다.</h1>
	<div>
		<input type="text" name="searchBar" placeholder="키워드를 입력해주세요.">
		<div align="right">
			<a href="profile/main">마이페이지</a>&nbsp;&nbsp;&nbsp;
			<c:choose>
				<c:when test="${userId eq null}">
					<a href="login">로그인</a>
				</c:when>
				<c:otherwise>
					<a href="logout">로그아웃</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<hr>
</body>
</html>
