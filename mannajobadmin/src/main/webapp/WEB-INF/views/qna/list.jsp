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
		<a href="/qna/insert">[Insert]</a>
	</c:if>
	<c:if test="${sessionScope.userId == null}">
		<p><a href="/login">login</a></p>
	</c:if>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>카테고리</th>
				<th>제목</th>
				<th>답변</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="qna">
			<tr>
				<td><c:out value="${qna.q_num}" /></td>
				<td><c:out value="${qna.q_category}" /></td>
				<td><a href='/qna/view?q_num=${qna.q_num}&pageNum=${pageMaker.cri.pageNum}'>${qna.q_subject}</a></td>
				<td><c:out value="${qna.reply_chk}" /></td>
				<td><c:out value="${qna.q_contents}" /></td>
				<td><c:out value="${qna.m_id}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${qna.q_wdate}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${qna.q_udate}" /></td>
				<td><c:out value="${qna.q_del}" /></td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${pageMaker.prev}">
    	<a href="/qna/list?pageNum=${pageMaker.startPage-1}&amount=10">[이전10개]</a>
    </c:if>
    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
    	<c:if test="${pageMaker.cri.pageNum == num}">
    		${num}	
    	</c:if>
    	<c:if test="${pageMaker.cri.pageNum != num}">
    		[<a href="/qna/list?pageNum=${num}&amount=10">${num}</a>]	
    	</c:if>
    </c:forEach>
    <c:if test="${pageMaker.next}">
    	<a href="/qna/list?pageNum=${pageMaker.endPage+1}&amount=10">[다음10개]</a>
    </c:if>
</body>
</html>