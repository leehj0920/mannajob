<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		onclick="location.href='/admin/check'">
	<div id="memberSearch">
		<h2>검색조건</h2>
		<div>
		<form method="post" action="/admin/manage">
			<select name="searchType">
				<option value="All">전체</option>
				<option value="Worker">현직자</option>
				<option value="Seeker">취준생</option>
			</select>
			<input type="text" name="keyword" placeholder="아이디 입력">
			<input type="submit" value="조회">
		</form>
		</div>
	</div>
	<div id="memberList">
	<h2>회원정보</h2>
		<h4><c:out value="${searchType}"/></h4>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<!-- <th>회원유형</th> -->
					<th>아이디</th>
					<th>가입일</th>
					<th>정지 일자</th>
					<th>상태</th>
					<th>비밀번호초기화</th>
				</tr>
			</thead>
			<c:forEach items="${memlist}" var="mem">
				<tr>
					<td><c:out value="${rownum}" /></td>
					<%-- <td>
					<c:choose>
						<c:when test="${mem.e_num ne null }">현직자</c:when>
						<c:otherwise>취준생</c:otherwise>
					</c:choose>
					</td> --%>
					<td><c:out value="${mem.m_id }" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${mem.m_cdate}" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${mem.m_stop}" /></td>
					<td>
						<c:choose>
							<c:when test="${mem.m_del eq 'Y'}">탈퇴</c:when>
							<c:otherwise>정상</c:otherwise>
						</c:choose>
					</td>
					<td style="text-align: center;"><input type="button" onclick="location.href='/admin/reset'" value="초기화"></td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${mempageMaker.prev}">
			<a href="/admin/manage?pageNum=${mempageMaker.startPage - 1}&amount=10">[이전]</a>
		</c:if>
		<c:forEach var="num" begin="${mempageMaker.startPage}" end="${mempageMaker.endPage}">
			<c:if test="${mempageMaker.cri.pageNum == num}">
    		${num}	
    		</c:if>
			<c:if test="${mempageMaker.cri.pageNum != num}">
    			[<a href="/admin/manage?pageNum=${num}&amount=10">${num}</a>]	
    		</c:if>
		</c:forEach>
		<c:if test="${mempageMaker.next}">
			<a href="/admin/manage?pageNum=${mempageMaker.endPage + 1}&amount=10">[다음]</a>
		</c:if>
	</div>
</body>
</html>