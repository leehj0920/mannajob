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
   	<a href="/notice/update?n_num=${notice.n_num}&pageNum=${cri.pageNum}">[Update]</a>
   	<a href="/notice/delete?n_num=${notice.n_num}&pageNum=${cri.pageNum}">[Delete]</a>
	<p>번호</p>
	<p><c:out value="${notice.n_num}" /></p>
	<p>제목</p>
	<p><c:out value="${notice.n_subject}" /></p>
	<p>작성자</p>
	<p><c:out value="${notice.ad_id}" /></p>
	<p>조회수</p>
	<p><c:out value="${notice.n_cnt}" /></p>
	<p>작성일</p>
	<p><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${notice.n_wdate}" /></p>
	<p>수정일</p>
	<p><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${notice.n_udate}" /></p>
	<p>내용</p>
	<p><c:out value="${notice.n_contents}" escapeXml="false" /></p>
</body>
</html>