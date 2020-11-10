<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<title>Home</title>
</head>
<body>
	<div class="table-responsive">
		<form method="post" action="/join/empl">
			<div>
				<label>아이디</label> <input class="form-control" type="text"
					name="m_id"></input>
			</div>
			<div>
				<label>이미지</label> <input class="form-control" type="text"
					name="e_image"></input>
			</div>
			<div>
				<label>직장</label> <input class="form-control" type="text"
					name="e_corp"></input>
			</div>
			<div>
				<label>부서</label> <input class="form-control" type="text"
					name="e_dept"></input>
			</div>
			<div>
				<label>직급</label> <input class="form-control" type="text"
					name="e_rank"></input>
			</div>
			<div>
				<label>직무</label> <input class="form-control" type="text"
					name="e_task"></input>
			</div>
			<div>
				<label>증명서</label> <input class="form-control" type="text"
					name="e_certifi"></input>
			</div>
			<div>
				<label>경력</label> <input class="form-control" type="text"
					name="e_career"></input>
			</div>
			<div>
				<label>소개글</label> <input class="form-control" type="text"
					name="e_intro"></input>
			</div>
			<input type="submit" value="승인 신청">
		</form>
	</div>
</body>
</html>
