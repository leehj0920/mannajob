<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Notice Board</h3>
	<c:if test="${sessionScope.userId != null}">
		<p>${sessionScope.userId}
		<a href="/logout">logout</a></p>
	</c:if>
	<c:if test="${sessionScope.userId == null}">
		<p><a href="/login">login</a></p>
	</c:if>
	<a href="/notice/list">[List]</a>
	<form method="post" action="/notice/insert">
		<table border="1">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="ad_id" value="admin"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="n_subject"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="n_contents"></textarea>
				<p><input type="submit" value="submit"></p></td>
			</tr>
		</table>
	</form>
</body>
</html>