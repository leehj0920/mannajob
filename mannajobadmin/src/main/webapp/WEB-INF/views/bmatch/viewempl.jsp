<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%pageContext.setAttribute("line", "\n"); %>
	<a href="/bmatch/list?pageNum=${cri.pageNum}&b_category=${bMatch.b_category}">[List]</a>
   	<a href="/bmatch/update?b_num=${bMatch.b_num}&pageNum=${cri.pageNum}&b_category=${bMatch.b_category}&m_id=${bMatch.m_id}">[Update]</a>
   	<a href="/bmatch/delete?b_num=${bMatch.b_num}&pageNum=${cri.pageNum}&b_category=${bMatch.b_category}">[Delete]</a>
	
	<p>프로필사진</p>
	
	<span><img src="/resource/member_img/${profileImage}"></span>
	<span>아이디</span>
	<span><c:out value="${bMatch.m_id}" /></span><br>
	<span>기업명</span>
	<span><c:out value="${empl.e_corp}" /></span><br>
	<span>부서</span>
	<span><c:out value="${empl.e_dept}" /></span><br>
	<span>직무</span>
	<span><c:out value="${empl.e_task}" /></span><br>
	<span>직급</span>
	<span><c:out value="${empl.e_rank}" /></span><br>
	<span>멘토링건수</span>
	<span><c:out value="" /></span><br>
	<span>추천수</span>
	<span><c:out value="" /></span><br>
	<span>소개</span>
	<span><c:out value="${empl.e_intro}" /></span><br>
	<span>모집정보</span>
	<span><c:out value="${bMatch.b_contents}" /></span><br>
	<span>지역</span>
	<span><c:out value="${bMatch.b_location}" /></span><br>
	<span>기간</span>
	<span><c:out value="${bMatch.b_stdate}" /></span>
	<span>~</span>
	<span><c:out value="${bMatch.b_endate}" /></span><br>
	<span>시간</span>
	<span><c:out value="${bMatch.b_period}" /></span><br>
	<span>가격</span>
	<span><c:out value="${bMatch.b_price}" /></span><br>
	
	
	
	
</body>
</html>