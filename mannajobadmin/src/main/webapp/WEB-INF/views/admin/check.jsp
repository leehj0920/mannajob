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
	<h1>현직자 지원 신청 검토</h1>
	<input type="button" value="로그아웃" onclick="location.href='/logout'">
	<hr>
	<input type="button" value="회원정보 관리" onclick="location.href='/admin/manage'">
	<input type="button" value="현직자 승인 관리" onclick="location.href='/admin/check'">
	<div id="memberSearch">
		<h2>검색조건</h2>
		<div>
			<form method="get" action="/admin/check">
				<select name="searchType">
					<option value="All">전체</option>
					<option value="Ok">인증</option>
					<option value="Not">미인증</option>
				</select> <input type="text" name="keyword" placeholder="아이디 입력"> <input
					type="submit" value="조회">
			</form>
		</div>
	</div>
	<div id="emplList">
		<h2>지원 신청 검토</h2>
		<h4>
			검색 구분:
			<c:choose>
				<c:when test='${searchType eq null}'>
				전체
				</c:when>
				<c:when test='${searchType eq ""}'>
				전체
				</c:when>
				<c:when test='${searchType eq "Ok"}'>
				인증
				</c:when>
				<c:when test='${searchType eq "Not"}'>
				미인증
				</c:when>
			</c:choose>
		</h4>
		<h4>
			아이디(포함):
			<c:choose>
				<c:when test='${keyword eq null or keyword eq ""}'>
				전체
			</c:when>
				<c:otherwise>
				'<%=request.getAttribute("keyword")%>'
			</c:otherwise>
			</c:choose>
		</h4>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>지원서</th>
					<th>신청일</th>
					<th>첨부파일</th>
					<th>인증여부</th>
					<th>인증처리</th>
				</tr>
			</thead>
			<c:forEach items="${empllist}" var="empl">
				<tr>
					<td><c:out value="${empl.e_num }" /></td>
					<td><c:out value="${empl.m_id }" /></td>
					<td>지원서</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${empl.e_applydate}" /></td>
					<td>첨부파일</td>
					<td>
						<c:choose>
							<c:when test="${empl.e_ok eq 'Y'}">승인</c:when>
							<c:otherwise>미승인</c:otherwise>
						</c:choose>
					</td>
					<td style="text-align: center;">
						<form method="get" action="/admin/emplOk">
							<input type="hidden" name="m_id" value="${empl.m_id }"> <input
								type="submit" value="인증">
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${emplpageMaker.prev}">
			<a
				href="/admin/check?searchType=<%=request.getAttribute("searchType") %>&keyword=<%= request.getAttribute("keyword") %>&pageNum=${emplpageMaker.startPage - 1}&amount=10">[이전]</a>
		</c:if>
		<c:forEach var="num" begin="${emplpageMaker.startPage}"
			end="${emplpageMaker.endPage}">
			<c:if test="${emplpageMaker.cri.pageNum == num}">
    		${num}	
    		</c:if>
			<c:if test="${emplpageMaker.cri.pageNum != num}">
    			[<a
					href="/admin/check?searchType=<%=request.getAttribute("searchType") %>&keyword=<%= request.getAttribute("keyword") %>&pageNum=${num}&amount=10">${num}</a>]	
    		</c:if>

		</c:forEach>
		<c:if test="${emplpageMaker.next}">
			<a
				href="/admin/check?searchType=<%=request.getAttribute("searchType") %>&keyword=<%= request.getAttribute("keyword") %>&pageNum=${emplpageMaker.endPage + 1}&amount=10">[다음]</a>
		</c:if>
	</div>
</body>
</html>