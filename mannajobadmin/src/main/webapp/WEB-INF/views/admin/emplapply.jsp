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
<h1>지원서 확인</h1>
	<input type="button" value="로그아웃" onclick="location.href='/logout'">
	<hr>
	<input type="button" value="회원정보 관리" onclick="location.href='/admin/manage'">
	<input type="button" value="현직자 승인 관리" onclick="location.href='/admin/check'">
	<div id="emplprofile">
		<h2>현직자 지원서 확인</h2>
		<div>
			<table>
			<c:forEach items="${emplFile}" var="ef">
				<tr>
					<td rowspan="7"><img src="../resources/certifi/${ef.fileVO.stored_file_name}"
						width="200" height="260"></td>
					<td>아이디</td>
					<td>${ef.m_id}</td>
				</tr>
				<tr>
					<td>기업명</td>
					<td>${ef.e_corp}</td>
				</tr>
				<tr>
					<td>부서</td>
					<td>${ef.e_dept}</td>
				</tr>
				<tr>
					<td>직무</td>
					<td>${ef.e_rank}</td>
				</tr>
				<tr>
					<td>직급</td>
					<td>${ef.e_task}</td>
				</tr>
				<tr>
					<td>멘토링건수</td>
					<td>멘토링건수</td>
				</tr>
				<tr>
					<td>추천수</td>
					<td>추천수</td>
				</tr>
				<tr>
					<td>주요경력</td>
					<td>${ef.e_career}</td>
				</tr>
				<tr>
					<td>소개</td>
					<td>${ef.e_intro}</td>
				</tr>
				<tr>
					<td>
					<button onclick="window.open('certif', '증명서 확인', 'width=430, height=500, location=no, status=no, scrollbars=yes');">증명서 확인</button>
					</td>
					<td style="text-align: center;">
						<form method="get" action="/admin/emplOk">
							<input type="hidden" name="e_num" value="${ef.e_num}"> <input
								type="submit" value="인증">
						</form>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>