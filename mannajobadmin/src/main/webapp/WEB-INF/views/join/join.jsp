<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="table-responsive">
		<form method="post" action="/join/join">
		<input type="hidden" name="m_id" value="${userId}">
		<input type="hidden" name="m_api" value="${userapi}">
		<input type="hidden" name="code" value="${code}">
			<div>
				<label>이름</label> <input class="form-control" type="text"
					name="m_name"></input>
			</div>
			<div>
				<label>2차 비밀번호</label> <input class="form-control" type="password"
					name="m_passwd"></input>
			</div>
			<div>
				<label>휴대전화</label> <input class="form-control" type="text"
					name="m_phone"></input>
			</div>
			<div>
				<label>email</label> <input class="form-control" type="text"
					name="m_email" value="${useremail}"></input>
			</div>
			<input type="submit" value="가입하기">
		</form>
	</div>
</body>
</html>