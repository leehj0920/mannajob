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
	<a href="/bmatch/list?pageNum=${cri.pageNum}&b_category=${bMatch.b_category}">[List]</a>
   	<a href="/bmatch/update?b_num=${bMatch.b_num}&pageNum=${cri.pageNum}&b_category=${bMatch.b_category}&m_id=${bMatch.m_id}">[Update]</a>
   
	
	<form action="/bmatch/update" method="post">
	<p>프로필사진</p>
	<span><img src="/resource/member_img/${profileImage}"></span>
	<span>아이디</span>
	<span><input type="text" name="m_id"value="${bMatch.m_id}" readonly="readonly"/></span><br>
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
	<input type="hidden" name="pageNum" value="${cri.pageNum}">
	<input type="hidden" name="b_num" value="${bMatch.b_num}">
	<input type="hidden" name="b_subject" value="${bMatch.b_subject}">
	<input type="hidden" name="b_category" value="${bMatch.b_category}">
	<span><textarea type="text" name="b_contents">${fn:replace(bMatch.b_contents,line,"<br/>")}</textarea></span><br>
	<span>지역</span>
	<span><input type="text" name="b_location" value="${bMatch.b_location}" /></span><br>
	<span>기간</span>
	<span><input type="text" name="b_stdate"  value="${bMatch.b_stdate}" /></span>
	<span>~</span>
	<span><input type="text" name="b_endate"  value="${bMatch.b_endate}" /></span><br>
	<span>시간</span>
	<span><input type="text" name="b_period"  value="${bMatch.b_period}" /></span><br>
	<span>가격</span>
	<span><input type="text" name="b_price"  value="${bMatch.b_price}" /></span><br>
	<input type="submit" name="submit" value="수정">
	</form>
	
	<p><a href="/bmatch/view?b_num=${bmatch.b_num}&pageNum=${cri.pageNum}&b_category=${bmatch.b_category}&m_id=${bmatch.m_id}">취소</a></p>
	
</body>
</html>