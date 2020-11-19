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
	<h1>리뷰 등록</h1>
	<hr>
	<div>
		<h3>글쓴이 정보</h3>
		<div>
			<table>
				<tr>
					<td>아이디</td>
					<td><%= request.getAttribute("b.m_id") %></td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<h3>리뷰 등록</h3>
		<div>
			<form method="post" action="/review/insertok">
			<input type="hidden" name="b_id" value="<%= request.getAttribute("b.m_id") %>">
			<input type="hidden" name="w_id" value="<%= request.getAttribute("userId") %>">
			<input type="hidden" name="mat_num" value="<%= request.getAttribute("mat_num") %>">
				<table>
					<tr>
						<td>추천/비추천</td>
						<td><input type="radio" name="good" value="G" checked="checked">추천 
						<input type="radio" name="good" value="B">비추천</td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea cols="30" rows="5" name="contents"></textarea></td>
					</tr>
				</table>
				<input type="submit" value="등록">
			</form>
		</div>
	</div>
</body>
</html>