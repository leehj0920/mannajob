<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function empl(index) {
		if (index == 1) {
			document.updateEmpl.action = '/profile/updateEmpl';
		}
		if(index == 2) {
			document.updateEmpl.action = '/profile/deleteEmpl';
		}
		document.updateEmpl.submit();
	}
</script>
</head>
<body>
	<form method="post" name="updateEmpl" enctype="multipart/form-data">
		<input type="hidden" name="m_id" value="${userId}">
		<div>
			<label>기업명</label> <input type="text" name="e_corp"></input>
		</div>
		<div>
			<label>부서</label> <input type="text" name="e_dept" value=""></input>
		</div>
		<div>
			<label>직급</label> <input type="text" name="e_rank" value=""></input>
		</div>
		<div>
			<label>직무</label> <input type="text" name="e_task" value=""></input>
		</div>
		<div>
			<label>주요 경력</label> <input type="text" name="e_career" value=""></input>
		</div>
		<div>
			<label>소개</label> <input type="text" name="e_intro" value=""></input>
		</div>
		<div>
			프로필 사진<input type="file" name="e_image" value="프로필 사진">
		</div>
		<div>
			증명서&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="e_certifi" value="증명확인서">
		</div>
		<input type="button" value="수정" onClick="empl(1)">
		<input type="button" value="삭제" onClick="empl(2)">
	</form>
</body>
</html>