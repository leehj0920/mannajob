<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
 window.onload=function(){
	 var result = "${alert}";
	 if(result == 1){
		 alert("비밀번호가 변경되었습니다.");
		 window.close();
	 }
 }
</script>
<body>

</body>
</html>