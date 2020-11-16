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
<a href="/bmatch/insert">[Insert]</a> 

<form action="/bmatch/search" method="get">
	<label>회사명</label>
	<input type="text"  name="b_corp">
	<label>직무</label>
	<input type="text"  name="b_task">
	<label>지역</label>
	<input type="text"  name="b_location">
	<label>구분</label>
	<input type="radio" name ="b_category" value="A" checked="checked">현직자
	<input type="radio" name = "b_category" value="B">취업준비생
	<input type="submit" name = "submit" value="제출">
</form>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>기간</th>
				<th>가격</th>
				<th>직무</th>
				<th>기업명</th>
				<th>지역</th>
			</tr>
		</thead>
		<c:forEach var="bmatch" items="${list}">
			<tr>
				<td><c:out value="${bmatch.b_num}" /></td>
				<td><a href="/bmatch/view?b_num=${bmatch.b_num}&pageNum=${page.cri.pageNum}">${bmatch.b_subject}</a></td>
				<td>
					<c:out value="${bmatch.b_stdate}" />
					<span>~</span>
					<c:out value="${bmatch.b_endate}" />
				</td>
				<td><c:out value="${bmatch.b_price}" /></td>
				<td><c:out value="${bmatch.b_task}" /></td>
				<td><c:out value= "${bmatch.b_corp}"/></td>
				<td><c:out value= "${bmatch.b_location}"/></td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${page.prev}">
    	<a href="/bmatch/list?pageNum=${page.startPage-1}&amount=10">[이전10개]</a>
    </c:if>
    <c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
    	<c:if test="${page.cri.pageNum == num}">
    		${num}	
    	</c:if>
    	<c:if test="${page.cri.pageNum != num}">
    		[<a href="/bmatch/list?pageNum=${num}&amount=10">${num}</a>]	
    	</c:if>
    </c:forEach>
    <c:if test="${page.next}">
    	<a href="/bmatch/list?pageNum=${page.endPage+1}&amount=10">[다음10개]</a>
    </c:if>
</body>
</html>