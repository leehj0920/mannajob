<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>프로필 관리</h1>
	<input type="button" value="로그아웃" onclick="location.href='/logout'">
	<hr>
	<input type="button" value="프로필 관리" onclick="location.href='/profile/main'">
	<input type="button" value="매칭 내역 관리" onclick="location.href='/profile/matlist'">
	<input type="button" value="일정 관리" onclick="location.href='/profile/calendar'">
	<c:choose>
	<c:when test="${empl ne null}">
		<input type="button" onclick="location.href='/profile/emplprofile'" value="현직자 프로필 보기">
	</c:when>
	<c:otherwise>
		<input type="button" onclick="location.href='/profile/empl'" value="현직자 지원하기">
	</c:otherwise>
	</c:choose>
	<div id="profile">
		<h2>회원정보</h2>
		<div>
			<table>
				<tr>
					<td rowspan="4"><img src="/resources/member_img/sample.jpg" width="200"></td>
					<td>id</td>
					<td><c:out value="${userId}"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><c:out value="${username}"/></td>
				</tr>
				<tr>
					<td>휴대전화</td>
					<td><c:out value="${userphone}"/></td>
				</tr>
				<tr>
					<td>email</td>
					<td><c:out value="${useremail}"/></td>
				</tr>
				<tr>
					<td><input type="button" onclick="location='/profile/update'" value="프로필 수정"></td>
				</tr>
			</table>
		</div>
	</div>
	
</body>
</html>