<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/qna/insert">[Insert]</a> 
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
				<th>수정일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="qna">
			<tr>
				<td><c:out value="${notice.n_num}" /></td>
				<td><a href='/notice/view?n_num=${notice.n_num}&pageNum=${pageMaker.cri.pageNum}'>${notice.n_subject}</a></td>
				<td><c:out value="${notice.n_contents}" /></td>
				<td><c:out value="${notice.ad_id}" /></td>
				<td><c:out value="${notice.n_cnt}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.n_wdate}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${notice.n_udate}" /></td>
				<td><c:out value="${notice.n_del}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>