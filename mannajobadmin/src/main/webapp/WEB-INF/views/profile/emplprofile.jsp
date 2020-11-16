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
					<td rowspan="7"><img src="/resources/member_img/sample.jpg" width="200" height="260"></td>
					<td>아이디</td>
					<td><%=request.getAttribute("userId") %></td>
				</tr>
				<tr>
					<td>기업명</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td>부서</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td>직무</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td>직급</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td>멘토링건수</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td>추천수</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td>주요경력</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
				<tr>
					<td>소개</td>
					<td><%=request.getAttribute("") %></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="review">
		<h2>리뷰</h2>
		<%-- <div>
			<c:choose>
			<c:when test="${null ne empl}">
			<table>
				<tr>
					<td>회사명</td>
					<td><%=request.getAttribute("emplcorp") %></td>
				</tr>
				<tr>
					<td>부서</td>
					<td><%=request.getAttribute("empldept") %></td>
				</tr>
				<tr>
					<td>직급</td>
					<td><%=request.getAttribute("emplrank") %></td>
				</tr>
				<tr>
					<td>직무</td>
					<td><%=request.getAttribute("empltask") %></td>
				</tr>
				<tr>
					<td>주요 경력</td>
					<td><%=request.getAttribute("emplcareer") %></td>
				</tr>
				<tr>
					<td>소개글</td>
					<td><%=request.getAttribute("emplintro") %></td>
				</tr>
				<tr>
					<td>승인여부</td>
					<td><%=request.getAttribute("emplok") %></td>
				</tr>
			</table>
			</c:when>
			<c:otherwise>
				지원 정보가 없습니다.<br>
				<input type="button" onclick="location.href='/profile/empl'" value="현직자 지원하기">
			</c:otherwise>
			</c:choose>
		</div> --%>
	</div>
</body>
</html>