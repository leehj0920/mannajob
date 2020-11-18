<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>신청 현황</h3>
	<table>
		<thead>
			<tr>
				<th>선택</th>
				<th>번호</th>
				<th>날짜</th>
				<th>시간</th>
				<th>아이디</th>
			</tr>
		</thead>
		<form method="post" action="profile/match">
			<c:forEach items="${matchlist}" var="mat">
				<tr>
					<td><input type="radio" name=""></td>
					<td>${mat.mat_num}</td>
					<td>${mat.mat_stdate}</td>
					<td>${mat.mat_hour}</td>
					<td>${mat.m_id}</td>
				</tr>
			</c:forEach>
			<tr>
				<td>
					<input type="submit" value="신청수락">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>