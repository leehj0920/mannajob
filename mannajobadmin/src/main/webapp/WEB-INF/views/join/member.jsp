<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Home</title>
</head>
<body>
	<div class="table-responsive">
		<form method="post" action="/join/member">
			<div>
				<label>아이디</label> <input class="form-control" type="text"
					name="m_id"></input>
			</div>
			<div>
				<label>passwd</label> <input class="form-control" type="password"
					name="m_passwd"></input>
			</div>
			<div>
				<label>이름</label> <input class="form-control" type="text"
					name="m_name"></input>
			</div>
			<div>
				<label>휴대전화</label> <input class="form-control" type="text"
					name="m_phone"></input>
			</div>
			<div>
				<label>이메일</label> <input class="form-control" type="text"
					name="m_email"></input>
			</div>
			<input type="submit" value="가입하기">
		</form>
	</div>
</body>
</html>
