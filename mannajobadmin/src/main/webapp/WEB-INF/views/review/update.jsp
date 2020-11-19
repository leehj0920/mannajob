<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<input type="hidden" name="b_id"
				value="<%=request.getAttribute("b.m_id")%>"> <input
				type="hidden" name="w_id"
				value="<%=request.getAttribute("userId")%>"> <input
				type="hidden" name="mat_num"
				value="<%=request.getAttribute("mat_num")%>">
			<table>
				<tr>
					<td>추천/비추천</td>
					<td>
					<input type="radio" name="good" value="G" checked="checked">추천
					<input type="radio" name="good" value="B">비추천
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea cols="30" rows="5" name="contents" value=""></textarea></td>
				</tr>
			</table>
			<input type="submit" value="수정">
		</form>
	</div>
</body>
</html>