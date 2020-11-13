<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 관리</h1>
	<hr>
	<input type="button" value="회원정보 관리"
		onclick="location.href='/admin/manage'">
	<input type="button" value="현직자 승인 관리"
		onclick="location.href='/admin/'">
	<div id="memberSearch">
		<h2>검색조건</h2>
		<div>
		<form method="post" action="/admin/manage">
			<select name="m_category">
					<option value="All">전체</opption>
					<option value="Worker">현직자</opption>
					<option value="Seeker">취준생</opption>
			</select>
			<input type="text" placeholder="아이디 입력">
			<input type="submit" value="조회">
		</form>
		</div>
	</div>
	<div id="memberList">
	<h2>회원정보</h2>
		<table class="table table-bordered" width="100%" cellspacing="0">
			<thead>
				<tr>
					<th>번호</th>
					<th>회원유형</th>
					<th>아이디</th>
					<th>가입일</th>
					<th>정지 일자</th>
					<th>상태</th>
					<th>비밀번호 초기화</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="board">
				<tr>
					<td><c:out value="${b_num}" /></td>
					<td><a
						href='/board/view?b_no=${board.b_no}&pageNum=${pageMaker.cri.pageNum}'>${board.b_subject}</a></td>
					<td><c:out value="${board.b_name}" /></td>
					<td>가입일</td>
					<td></td>
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