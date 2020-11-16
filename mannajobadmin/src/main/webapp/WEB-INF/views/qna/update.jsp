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
	<h3>QnA Board</h3>
	<c:if test="${sessionScope.userId != null}">
		<p>${sessionScope.userId}
		<a href="/logout">logout</a></p>
	</c:if>
	<c:if test="${sessionScope.userId == null}">
		<p><a href="/login">login</a></p>
	</c:if>
	<a href="/qna/list?pageNum=${cri.pageNum}">[List]</a>
   	<h3>질문</h3>
   	<form method="post" action="/qna/update">
   		<input type="hidden" name="pageNum" value="${cri.pageNum}">
		<input type="hidden" name="q_num" value="${qna.q_num}">
	   	<table border="1">
			<tr>
				<td>번호</td>
				<td><c:out value="${qna.q_num}" /></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
					<select name="q_category">
						<option value="Q" <c:if test="${qna.q_category == 'Q'}">selected</c:if>>카테1</option>
						<option value="X" <c:if test="${qna.q_category == 'X'}">selected</c:if>>카테2</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="q_subject" value="<c:out value="${qna.q_subject}" />"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><c:out value="${qna.m_id}" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="q_contents"><c:out value="${qna.q_contents}" escapeXml="false" /></textarea>
				<p><input type="submit" value="submit"></p></td>
			</tr>
	   	</table>
   	</form>
</body>
</html>