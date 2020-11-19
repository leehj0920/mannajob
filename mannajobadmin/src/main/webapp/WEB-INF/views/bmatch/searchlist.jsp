<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function empl() {
		document.goEmpl.action = '/profile/emplprofile';
		document.goEmpl.submit();
	}
</script>
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
	<c:if test="${bMatch.b_category eq 'A'}">
	<table>
		<tr>
			<c:forEach var="empl" items="${empllist}">
				<td>
					<table style="border:solid; border-width: 1px; border-color: black;">
						<tr>
							<td colspan="2">
							<form method="get" name="goEmpl">
							<input type="hidden" value="${empl.e_num}" name="e_num">							
							<img src="../resources/certifi/${empl.fileVO.stored_file_name}" width="200" height="300" onclick="empl()">
							</form>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="font-size: 20px">${empl.memberVO.m_name}&nbsp;멘토</td>
						</tr>
						<tr>
							<td colspan="2" style="font-size: 15px">${empl.e_corp}</td>
						</tr>
						<tr>
							<td>${empl.e_career}</td>
							<td>${empl.e_task}</td>
						</tr>
					</table>
				</td>
			</c:forEach>
		</tr>
	</table>
	<c:if test="${emplpage.prev}">
    	<a href="/bmatch/search?pageNumP=${emplpage.startPage-1}&amountP=5&b_task=${bMatch.b_task}&b_category=${bMatch.b_category}&b_corp=${bMatch.b_corp}&b_location=${bMatch.b_location}">[이전4개]</a>
    </c:if>
    <c:forEach var="emplnum" begin="${emplpage.startPage}" end="${emplpage.endPage}">
    	<c:if test="${emplpage.cri.pageNumP == emplnum}">
    		${emplnum}
    	</c:if>
    	<c:if test="${emplpage.cri.pageNumP != emplnum}">
    		[<a href="/bmatch/search?pageNumP=${emplnum}&amountP=5&b_task=${bMatch.b_task}&b_category=${bMatch.b_category}&b_corp=${bMatch.b_corp}&b_location=${bMatch.b_location}">${emplnum}</a>]	
    	</c:if>
    </c:forEach>
    <c:if test="${emplpage.next}">
    	<a href="/bmatch/search?pageNumP=${emplpage.endPage+1}&amountP=5&b_task=${bMatch.b_task}&b_category=${bMatch.b_category}&b_corp=${bMatch.b_corp}&b_location=${bMatch.b_location}">[다음4개]</a>
    </c:if>
    </c:if>
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
				<td><a href="/bmatch/view?b_num=${bmatch.b_num}&pageNum=${page.cri.pageNum}&b_category=${bmatch.b_category}&m_id=${bmatch.m_id}">${bmatch.b_subject}</a></td>
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
    	<a href="/bmatch/search?pageNum=${page.startPage-1}&amount=5&b_task=${bMatch.b_task}&b_category=${bMatch.b_category}&b_corp=${bMatch.b_corp}&b_location=${bMatch.b_location}">[이전10개]</a>
    </c:if>
    <c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
    	<c:if test="${page.cri.pageNum == num}">
    		${num}	
    	</c:if>
    	<c:if test="${page.cri.pageNum != num}">
    		[<a href="/bmatch/search?pageNum=${num}&amount=5&b_task=${bMatch.b_task}&b_category=${bMatch.b_category}&b_corp=${bMatch.b_corp}&b_location=${bMatch.b_location}">${num}</a>]	
    	</c:if>
    </c:forEach>
    <c:if test="${page.next}">
    	<a href="/bmatch/search?pageNum=${page.endPage+1}&amount=5&b_task=${bMatch.b_task}&b_category=${bMatch.b_category}&b_corp=${bMatch.b_corp}&b_location=${bMatch.b_location}">[다음10개]</a>
    </c:if>
</body>
</html>