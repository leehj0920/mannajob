<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/notice/insert">
		<p>작성자</p>
		<p><input type="text" name="ad_id" value="admin"></p>
		<p>제목</p>
		<p><input type="text" name="n_subject"></p>
		<p>내용</p>
		<p><textarea rows="10" name="n_contents"></textarea></p>
		<p><input type="submit" value="submit"></p>
	</form>
</body>
</html>