<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function popclose(form) {
		form.target = opener.name;
		form.submit();
		
		if(opener != null) {
			opener.insert = null;
			self.close();
		}
	}
</script>
</head>
<body>
	<h1>리뷰 등록</h1>
	<hr>
	<div>
		<h3>글쓴이 정보</h3>
		<div>
			<table>
				<tr>
					<td>아이디</td>
					<td><%= request.getAttribute("b.m_id") %></td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<h3>리뷰 등록</h3>
		<div>
			<form method="post" name="insertform" target="matlist" action="/review/insertok">
			<input type="hidden" name="r_w_m_id" value="${r_w_m_id}">
			<input type="hidden" name="r_mat_m_id" value="${r_mat_m_id}">
			<input type="hidden" name="mat_num" value="${mat_num}">
				<table>
					<tr>
						<td>추천/비추천</td>
						<td><input type="radio" name="r_good" value="G" checked="checked">추천 
						<input type="radio" name="r_good" value="B">비추천</td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea cols="30" rows="5" name="r_contents"></textarea></td>
					</tr>
				</table>
				<input type="submit" value="등록" onClick="window.close()">
				<input type="button" value="닫기" onClick="window.close()">
			</form>
		</div>
	</div>
</body>
</html>