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
	<h3>리뷰 수정</h3>
	<div>
		<form method="post" action="/review/updateok">
			<input type="hidden" name="r_w_m_id" value="${r_w_m_id }"> 
			<input type="hidden" name="r_mat_m_id" value="${r_mat_m_id}"> 
			<input type="hidden" name="mat_num" value="${mat_num}">
			
			<table>
				<tr>
					<td>추천/비추천</td>
					<td>
					<input type="radio" name="r_good" value="G" checked="checked">추천
					<input type="radio" name="r_good" value="B">비추천
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea cols="30" rows="5" name="r_contents"></textarea></td>
				</tr>
			</table>
			<input type="submit" value="수정">
		</form>
	</div>
</body>
</html>