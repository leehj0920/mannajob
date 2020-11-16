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
	<a href="/notice/list?pageNum=${cri.pageNum}">[List]</a>
	<form method="post" action="/notice/update">
		<input type="hidden" name="pageNum" value="${cri.pageNum}">
		<input type="hidden" name="n_num" value="${notice.n_num}">
		<table border="1">
			<tr>
				<td>번호</td>
				<td><c:out value="${notice.n_num}" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="n_subject" value="<c:out value="${notice.n_subject}" />"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><c:out value="${notice.ad_id}" /></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><c:out value="${notice.n_cnt}" /></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${notice.n_wdate}" /></td>
			</tr>
			<tr>
				<td>수정일</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${notice.n_udate}" /></td>
			</tr>
			<tr>
				<td>삭제</td>
				<td><c:out value="${notice.n_del}" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="n_contents"><c:out value="${notice.n_contents}" /></textarea>
				<p><input type="submit" value="submit"></p></td>
			</tr>
	   	</table>
	</form>
</body>
</html>