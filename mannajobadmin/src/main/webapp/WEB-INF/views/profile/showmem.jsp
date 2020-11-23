<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.name = 'memreview';
</script>
</head>
<body>
	<div>회원 아이디: ${m_id}</div>
	<div>
		<table>
			<tr>
              <td>구분</td>
              <td>내용</td>
              <td>작성자</td>
              <td>작성일</td>
              <td>수정</td>
              <td>삭제</td>
            </tr> 
			<c:forEach var="r" items="${MReview}">
			<tr>
				<td>
					<c:if test="${r.r_good eq 'B'}">비</c:if>추천
				</td>
				<td>${r.r_contents}</td>
				<td>${r.r_w_m_id}</td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${r.r_wdate}"/></td>
				<td>
                    <!-- 수정버튼 (세션 아이디와 동일할 경우 활성화) -->
                 	<c:if test="${r.r_w_m_id eq userId}">
                    <a href="/review/updatem?r_num=${r.r_num}&r_contents=${r.r_contents}" onClick="window.open(this.href, '리뷰 수정', 'width=400, height=300'); return false">수정</a>
               		</c:if>
                  </td>
                  <td>
                    <!-- 삭제버튼 (세션 아이디와 동일할 경우 활성화)-->
                    <c:if test="${r.r_w_m_id eq userId}">
                    <a href="/review/deletem?r_num=${r.r_num}">삭제</a>
                    </c:if>
                  </td>
			</tr>
			</c:forEach>
		</table>
		<input type="button" value="입사 제의" onClick="window.close()">
		<input type="button" value="닫기" onClick="window.close()">
	</div>
</body>
</html>