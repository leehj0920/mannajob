<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form method="post" action="/profile/update">
			<input type="hidden" name="m_id" value="${userId}">
			<div>
				<label>비밀번호</label> <input class="form-control" type="password"
						name="m_passwd"></input>
			</div>
			<div>
				<label>휴대전화</label> <input class="form-control" type="text"
					name="m_phone" value="<%=request.getAttribute("userphone") %>"></input>
			</div>
			<div>
				<label>email</label> <input class="form-control" type="text"
					name="m_email" value="<%=request.getAttribute("useremail")%>"></input>
			</div>
			<input type="submit" value="수정하기">
		</form>
	</div>
</body>
</html>