<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<h3>QnA Board</h3>
	<c:if test="${sessionScope.userId != null}">
		<p>${sessionScope.userId}
		<a href="/logout">logout</a></p>
	</c:if>
	<c:if test="${sessionScope.userId == null}">
		<p><a href="/login">login</a></p>
	</c:if>
	<a href="/qna/list?pageNum=${cri.pageNum}">[List]</a>
	<c:if test="${sessionScope.userId == qna.m_id}">
	   	<a href="/qna/update?q_num=${qna.q_num}&pageNum=${cri.pageNum}">[Update]</a>
	   	<a href="/qna/delete?q_num=${qna.q_num}&pageNum=${cri.pageNum}">[Delete]</a>
	</c:if>
   	<h3>질문</h3>
   	<table border="1">
		<tr>
			<td>번호</td>
			<td><c:out value="${qna.q_num}" /></td>
		</tr>
		<tr>
			<td>카테고리</td>
			<td>
				<c:if test="${qna.q_category == 'Q'}">카테1</c:if>
				<c:if test="${qna.q_category == 'X'}">카테2</c:if>
			</td>
		</tr>
		<tr>
			<td>제목</td>
			<td><c:out value="${qna.q_subject}" /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><c:out value="${qna.m_id}" /></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${qna.q_wdate}" /></td>
		</tr>
		<tr>
			<td>수정일</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${qna.q_udate}" /></td>
		</tr>
		<tr>
			<td>삭제</td>
			<td><c:out value="${qna.q_del}" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><c:out value="${qna.q_contents}" escapeXml="false" /></td>
		</tr>
   	</table>
   	<h3>답변</h3>
   	<c:if test="${qna.ad_id == null || qna.qs_del == 'Y'}">
   		<form name="insertSubForm" method="post" action="/qna/insertSub">
   			<input type="hidden" name="pageNum" value="${cri.pageNum}">
   			<input type="hidden" name="q_num" value="${qna.q_num}">
			<table border="1">
				<tr>
		   			<td>작성자</td>
		   			<td><input type="hidden" name="ad_id" value="admin">admin</td>
		   		</tr>
		   		<tr>
		   			<td>내용</td>
		   			<td><textarea rows="5" name="qs_contents"></textarea>
		   			<p><input type="button" value="submit" onclick="javascript:insertQnaSub();"></p></td>
		   		</tr>
			</table>
			
		</form>
   	</c:if>
   	<c:if test="${qna.ad_id != null && qna.qs_del == 'N'}">
   		<c:if test="${sessionScope.userId == qna.m_id}">
		   	<a href="#" onclick="javascript:openQnaSubForm();">[Update]</a>
		   	<a href="#" onclick="javascript:deleteQnaSub();">[Delete]</a>
		</c:if>
		<form name="updateSubForm" method="post" action="/qna/updateSub">
			<input type="hidden" name="pageNum" value="${cri.pageNum}">
			<input type="hidden" name="q_num" value="${qna.q_num}">
   			<table border="1">
		   		<tr>
		   			<td>번호</td>
		   			<td><input type="hidden" name="qs_num" value="<c:out value="${qna.qs_num}" />"><c:out value="${qna.qs_num}" /></td>
		   		</tr>
		   		<tr>
		   			<td>작성자</td>
		   			<td><input type="hidden" name="ad_id" value="<c:out value="${qna.ad_id}" />"><c:out value="${qna.ad_id}" /></td>
		   		</tr>
		   		<tr>
		   			<td>작성일</td>
		   			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${qna.qs_wdate}" /></td>
		   		</tr>
		   		<tr>
		   			<td>수정일</td>
		   			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${qna.qs_udate}" /></td>
		   		</tr>
		   		<tr>
					<td>삭제</td>
					<td><c:out value="${qna.qs_del}" /></td>
				</tr>
		   		<tr id="cmt_view">
		   			<td>내용</td>
		   			<td><c:out value="${qna.qs_contents}" escapeXml="false" /></td>
		   		</tr>
		   		<tr id="cmt_update" style="display:none">
		   			<td>내용</td>
		   			<td>
			   			<textarea rows="10" name="qs_contents"><c:out value="${qna.qs_contents}" /></textarea>
			   			<p>
				   			<input type="button" value="cancel" onclick="javascript:closeQnaSubForm();">
				   			<input type="submit" value="submit" onclick="javascript:updateQnaSub();">
			   			</p>
		   			</td>
		   		</tr>
	   		</table>
   		</form>
   	</c:if>
<script>
function insertQnaSub() {
	//alert("test");
	var param = $("form[name=insertSubForm]").serialize();		
	$.ajax({
		type : "POST",
		async : true,
		url : "/qna/insertSub",
		data : param,
		error: function (request, status, error) {
			alert("code : " + request.status + "\n" + "error : " + error);
		},
		success: function (data) {
			alert("답변이 작성되었습니다.");
			location.reload(true);
		}
	});
}
function openQnaSubForm() {
	$("#cmt_view").hide();
	$("#cmt_update").show();
	$("textarea[name=qs_contents]").text($("textarea[name=qs_contents]").text().replace(/(<br>)/gi,"\n"));
}
function closeQnaSubForm() {
	$("#cmt_view").show();
	$("#cmt_update").hide();
}
function updateQnaSub() {
	var param = $("form[name=updateSubForm]").serialize();		
	$.ajax({
		type : "POST",
		async : true,
		url : "/qna/updateSub",
		data : param,
		error: function (request, status, error) {
			alert("code : " + request.status + "\n" + "error : " + error);
		},
		success: function (data) {
			alert("답변이 수정되었습니다.");
			location.reload(true);
		}
	});
}
function deleteQnaSub() {
	var param = $("form[name=updateSubForm]").serialize();		
	$.ajax({
		type : "POST",
		async : true,
		url : "/qna/deleteSub",
		data : param,
		error: function (request, status, error) {
			alert("code : " + request.status + "\n" + "error : " + error);
		},
		success: function (data) {
			alert("답변이 삭제되었습니다.");
			location.reload(true);
		}
	});
}
</script>   	
</body>
</html>