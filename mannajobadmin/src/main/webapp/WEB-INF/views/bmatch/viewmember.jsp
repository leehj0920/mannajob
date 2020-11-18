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
	<a href="/bmatch/list?pagseNum=${cri.pageNum}&b_category=${bMatch.b_category}">[List]</a>
   	<a href="/bmatch/update?b_num=${bMatch.b_num}&pageNum=${cri.pageNum}&b_category=${bMatch.b_category}&m_id=${bMatch.m_id}">[Update]</a>
   	<a href="/bmatch/delete?b_num=${bMatch.b_num}&pageNum=${cri.pageNum}&b_category=${bMatch.b_category}">[Delete]</a>
	
	<p></p>
	<span>아이디</span>
	<span><c:out value="${bMatch.m_id}" /></span><br>
	<span>관심기업</span>
	<span><c:out value="${bMatch.b_corp}" /></span><br>
	<span>관심직무</span>
	<span><c:out value="${bMatch.b_task}" /></span><br>
	<span>내용</span>
	<span>${fn:replace(bMatch.b_contents,line,"<br/>")}</span><br>
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
	
	<form action="comm/insert" method="post">
	<input type="hidden" name="b_num" value="${bMatch.b_num}"/>
	<textarea rows="5" cols="100"></textarea>
	<input type="submit" name="submit" value="작성">
	</form>
	
	
	
	<p>댓글</p>
	<p>작성일<c:out value=""/> /작성자<c:out value=""/>
	<p>작성내용<c:out value=""/></p>
	<p><a href="#">답변</a>
	<a href="#">수정</a>
	<a href="#">삭제</a></p>
	
	<p>대댓글</p>
	<p>작성일<c:out value=""/> /작성자<c:out value=""/></p>
	<p>작성내용<c:out value=""/></p>
	<p><a href="#">답변</a>
	<a href="#"/>수정</a>
	<a href="#">삭제</a></p>
	
	
</body>
</html>