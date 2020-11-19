<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function review(index) {
		if(index == 0) {
			document.manageRe.action = '/';
		}
		if(index == 1) {
			document.manageRe.action = '';
		}
		document.manageRe.submit();
	}
</script>
</head>
<body>
	<h1>프로필 관리</h1>
	<input type="button" value="로그아웃" onclick="location.href='/logout'">
	<hr>
	<input type="button" value="프로필 관리" onclick="location.href='/profile/main'">
	<input type="button" value="매칭 내역 관리" onclick="location.href='/profile/matlist'">
	<input type="button" value="일정 관리" onclick="location.href='/profile/calendar'">
	<div id="emplprofile">
		<h2>현직자 프로필</h2>
		<div>
			<table>
				<tr>
					<td rowspan="6"><img src="../resources/certifi/<%=request.getAttribute("imageFile") %>" width="200" height="260"></td>
					<td colspan="2">아이디</td>
					<td colspan="2"><%=request.getAttribute("userId") %></td>
				</tr>
				<tr>
					<td>기업명</td>
					<td><%=request.getAttribute("emplcorp") %></td>
					<td>부서</td>
					<td><%=request.getAttribute("empldept") %></td>
				</tr>
				<tr>
					<td>직무</td>
					<td><%=request.getAttribute("empltask") %></td>
					<td>직급</td>
					<td><%=request.getAttribute("emplrank") %></td>
				</tr>
				<tr>
					<td colspan="2">주요경력</td>
					<td colspan="2"><%=request.getAttribute("emplcareer") %></td>
				</tr>
				<tr>
					<td>멘토링건수</td>
					<td><%=request.getAttribute("") %></td>
					<td>추천수</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td colspan="2">소개</td>
					<td colspan="2"><%=request.getAttribute("emplintro") %></td>
				</tr>
			</table>
		</div>
		<input type="button" onclick="location='/profile/updateEmpl'" value="현직자 프로필 수정">
	</div>
	<div id="review">
		<h2>리뷰</h2>
		<div>
		<!-- 리스트로 -->
			<table>
				<tr>
					<th>추천/비추천</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="re" items="${emplreview}">
				<tr>
					<td>
					<c:choose>
						<c:when test="${re.r_good eq 'G'}">추천</c:when>
						<c:otherwise>비추천</c:otherwise>
					</c:choose>
					</td>
					<td>${re.r_contents}</td>
					<td>${re.r_mat_m_id}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${re.r_wdate}" /></td>
					<td>
					<%-- <c:if test="${re.r_mat_m_id eq }">
					<form name="mamageRe" method="post">
						<input type="hidden" name="r_num" value="${re.r_num}">
						<input type="hidden" name="r_" value="">
						<input type="submit" value="수정" onclick="review(0)">
						<input type="button" value="삭제" onclick="review(1)">
					</form>
					</c:if> --%>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>
