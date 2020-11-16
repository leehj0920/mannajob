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
	<c:if test="${sessionScope.userId == qna.m_id}">
	   	<a href="/notice/update?n_num=${notice.n_num}&pageNum=${cri.pageNum}">[Update]</a>
	   	<a href="/notice/delete?n_num=${notice.n_num}&pageNum=${cri.pageNum}">[Delete]</a>
   </c:if>
   	<table border="1">
		<tr>
			<td>번호</td>
			<td><c:out value="${notice.n_num}" /></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><c:out value="${notice.n_subject}" /></td>
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
			<td><c:out value="${notice.n_contents}" escapeXml="false" /></td>
		</tr>
   	</table>
</body>
</html>