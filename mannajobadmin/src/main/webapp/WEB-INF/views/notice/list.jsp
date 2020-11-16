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
		<a href="/notice/insert">[Insert]</a> 
	</c:if>
	<c:if test="${sessionScope.userId == null}">
		<p><a href="/login">login</a></p>
	</c:if>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
				<th>수정일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="notice">
			<tr>
				<td><c:out value="${notice.n_num}" /></td>
				<td><a href='/notice/view?n_num=${notice.n_num}&pageNum=${pageMaker.cri.pageNum}'>${notice.n_subject}</a></td>
				<td><c:out value="${notice.n_contents}" /></td>
				<td><c:out value="${notice.ad_id}" /></td>
				<td><c:out value="${notice.n_cnt}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.n_wdate}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.n_udate}" /></td>
				<td><c:out value="${notice.n_del}" /></td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${pageMaker.prev}">
    	<a href="/notice/list?pageNum=${pageMaker.startPage-1}&amount=10">[이전10개]</a>
    </c:if>
    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
    	<c:if test="${pageMaker.cri.pageNum == num}">
    		${num}	
    	</c:if>
    	<c:if test="${pageMaker.cri.pageNum != num}">
    		[<a href="/notice/list?pageNum=${num}&amount=10">${num}</a>]	
    	</c:if>
    </c:forEach>
    <c:if test="${pageMaker.next}">
    	<a href="/notice/list?pageNum=${pageMaker.endPage+1}&amount=10">[다음10개]</a>
    </c:if>
</body>
</html>