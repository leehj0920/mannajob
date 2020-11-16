<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>매칭 내역 관리</h1>
	<input type="button" value="로그아웃" onclick="location.href='/logout'">
	<hr>
	<input type="button" value="프로필 관리" onclick="location.href='/profile/main'">
	<input type="button" value="매칭 내역 관리" onclick="location.href='/profile/matlist'">
	<input type="button" value="일정 관리" onclick="location.href='/profile/calendar'">
	<div id="b_match">
		<h2>매칭 작성 내역</h2>
		<table class="table table-bordered" width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>진행상태</th>
					<th>신청현황</th>
					<th>취소</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="board">
				<tr>
					<td><c:out value="${b_num}" /></td>
					<td><a href='/board/view?b_no=${board.b_no}&pageNum=${pageMaker.cri.pageNum}'>${board.b_subject}</a></td>
					<td><c:out value="${board.b_name}" /></td>
					<td> </td>
					<td> </td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${pageMaker.prev}">
			<a href="/board/list?pageNum=${pageMaker.startPage - 1}&amount=10">[이전]</a>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}"
			end="${pageMaker.endPage}">
                	[<a href="/board/list?pageNum=${num}&amount=10">${num}</a>]
                </c:forEach>
		<c:if test="${pageMaker.next}">
			<a href="/board/list?pageNum=${pageMaker.endPage + 1}&amount=10">[다음]</a>
		</c:if>

	</div>
	<hr>
	<div id="match">
	<h2>매칭 신청 내역</h2>
		<table class="table table-bordered" width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>진행상태</th>
					<th>취소</th>
					<th>리뷰</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="board">
				<tr>
					<td><c:out value="${board.b_no}" /></td>
					<td><a
						href='/board/view?b_no=${board.b_no}&pageNum=${pageMaker.cri.pageNum}'>${board.b_subject}</a></td>
					<td><c:out value="${board.b_name}" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd"
							value="${board.b_wdate}" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd"
							value="${board.b_udate}" /></td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${pageMaker.prev}">
			<a href="/board/list?pageNum=${pageMaker.startPage - 1}&amount=10">[이전]</a>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}"
			end="${pageMaker.endPage}">
                	[<a href="/board/list?pageNum=${num}&amount=10">${num}</a>]
                </c:forEach>
		<c:if test="${pageMaker.next}">
			<a href="/board/list?pageNum=${pageMaker.endPage + 1}&amount=10">[다음]</a>
		</c:if>
	</div>
</body>
</html>