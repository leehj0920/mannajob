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
	<a href="/notice/list?pageNum=${cri.pageNum}">[List]</a>
	<form method="post" action="/notice/update">
		<input type="hidden" name="pageNum" value="${cri.pageNum}">
		<input type="hidden" name="n_num" value="${notice.n_num}">
		<p>번호</p>
		<p><c:out value="${notice.n_num}" /></p>
		<p>제목</p>
		<p><input type="text" name="n_subject" value="<c:out value="${notice.n_subject}" />"></p>
		<p>작성자</p>
		<p><c:out value="${notice.ad_id}" /></p>
		<p>조회수</p>
		<p><c:out value="${notice.n_cnt}" /></p>
		<p>작성일</p>
		<p><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${notice.n_wdate}" /></p>
		<p>수정일</p>
		<p><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${notice.n_udate}" /></p>
		<p>내용</p>
		<p><textarea rows="10" name="n_contents"><c:out value="${notice.n_contents}" /></textarea></p>
		<p><input type="submit" value="submit"></p>
	</form>
</body>
</html>