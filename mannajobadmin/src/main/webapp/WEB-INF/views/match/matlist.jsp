<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../includes/header.jsp" %>

  <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span12">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">마이페이지</a><i class="icon-angle-right"></i></li>
              <li class="active">매칭내역 관리</li>
            </ul>
          </div>
        </div>
      </div>
    </section>


    <section id="">
      <div class="container">
        <div class="row">
          <div class="span3">
            <aside class="left-sidebar">
              <div class="widget">
              </div>
              <div class="widget">
                <h5 class="widgetheading height_40">매&nbsp&nbsp&nbsp&nbsp칭</h5>

                <ul class="cat">
                  <li><i class="icon-angle-right"></i><a href="/match/matlist">매칭내역관리</a></li>
                  <li><i class="icon-angle-right"></i><a href="/mypage/calendar">일정관리</a></li>
                  <li><i class="icon-angle-right"></i><a href="/profile/main">회원정보관리</a></li>
                  <li><i class="icon-angle-right"></i><a href="/profile/emplprofile">현직자 프로필관리</a></li>
                  <li><i class="icon-angle-right"></i><a href="/profile/empl">현직자 지원</a></li>
                </ul>
              </div>
            </aside>
          </div>
          <div class="span8">
            <article>
             

                <div class="row">
                  <div class="post-heading">
                    <p class="line_9"></p>
                    <p class="line_9"></p>
                    <h3 style="color: #f84002;">&nbsp&nbsp&nbsp<strong></strong>매칭 내역 관리(현직자, 취준생)</h3>
                    <p class="line_9"></p>
                  </div>
                  
                  <!-- 작성 내역 -->
                  <div class="span9">                   
                    <h5>▶ 작성 내역</h5>
                    <div class="">
                      <table class="table table-bordered">
                        <colgroup>
                          <col style="width: 10%">
                          <col style="width: auto">
                          <col style="width: 10%">
                          <col style="width: 10%">
                          <col style="width: 10%">
                        </colgroup>
                        <tr>
                          <td>
                            <p class="center" >번호</p>    
                          </td>
                          <td>
                            <p class="center" >제목</p>    
                          </td>
                          <td>
                            <p class="center">진행상태</p>    
                          </td>
                          <td>
                            <p class="center">신청현황</p>    
                          </td>
                          <td>
                            <p class="center">취소</p>    
                          </td>
                        </tr> 
                      	<c:forEach items="${bmatlist}" var="blist">
                        <tr>
                          <td>
                            <!-- 번호 -->
                            <p class="center">${blist.b_num}</p>
                          </td>
                          <td style="width: 400px;">
                            <!-- 제목 -->
                            <p><c:out value="${blist.b_subject}" /></p>
                          </td>
                          <td>
                            <!-- 진행상태 -->
                            <c:choose>
                            <c:when test="${blist.b_state eq 'A'}"><p class="center">대기</p></c:when>
                            <c:when test="${blist.b_state eq 'B'}"><p class="center">완료</p></c:when>
                            <c:otherwise ><p class="center">취소</p></c:otherwise>                           
                            </c:choose>
                          </td>
                          
                          <td>
                          	<c:if test="${blist.b_state eq 'A'}">
                            <!-- 신청현황-->
                            
                            <p class="center"><button class="btn btn-mini btn-theme" onclick="window.open('/match/bmatlist?b_num=${blist.b_num}', '신청 현황', 'width=600, height=500, location=no, status=no, scrollbars=yes');">신청 현황</button></p>
                            
                            </c:if>
                            <c:if test="${blist.b_state eq 'B'}" >
                            <p class="center">매칭완료</p>
                            </c:if>
                            <c:if test="${blist.b_state eq 'C'}" >
                            <p class="center">취소됨</p>
                            </c:if>
                          </td>
                          <td>
                          	<c:if test="${blist.b_state ne 'C'}">
                            <!-- 취소-->
                            <p class="center"><a href="/bmatch/cancel?b_num=${blist.b_num}" class="btn btn-mini btn-theme">취소</a></p>
                          	</c:if>
                          </td>
                        </tr>  
                        </c:forEach>
                                             
                      </table>
                    </div>
                    <!-- 페이징 -->
                    <%-- 
                    <div class="span8 center">
                      		<c:if test="${pageMaker.prev}">
								<a href="/profile/matlist?pageNum=${pageMaker.startPage - 1}&amount=10">◀</a>
							</c:if>
							<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                				<a href="/profile/matlist?pageNum=${num}&amount=10">${num}</a>
                			</c:forEach>
							<c:if test="${pageMaker.next}">
								<a href="/profile/matlist?pageNum=${pageMaker.endPage + 1}&amount=10">▶</a>
							</c:if>
                    </div>
                     --%>
                  </div>


                  <!-- 신청 내역 -->
                  <div class="span9">                   
                    <h5>▶ 신청 내역</h5>
                    <div class="">
                      <table class="table table-bordered">
                        <colgroup>
                          <col style="width: 10%">
                          <col style="width: auto">
                          <col style="width: 10%">
                          <col style="width: 10%">
                          <col style="width: 10%">
                        </colgroup>
                        <tr>
                          <td>
                            <p class="center" >번호</p>    
                          </td>
                          <td>
                            <p class="center" >제목</p>    
                          </td>
                          <td>
                            <p class="center">진행상태</p>    
                          </td>
                          <td>
                            <p class="center">취소</p>    
                          </td>
                          <td>
                            <p class="center">리뷰</p>    
                          </td>
                        </tr>
                        <c:forEach items="${matlist}" var="mlist"> 
                        <tr>
                          <td>
                            <!-- 번호 -->
                            <p class="center">${mlist.matchVO.mat_num}</p>
                          </td>
                          <td style="width: 400px;">
                            <!-- 제목 -->
                            <p>${mlist.b_subject}</p>
                          </td>
                          <td>
                            <!-- 진행상태 -->
                             <c:choose>
                            <c:when test="${mlist.matchVO.mat_state eq 'A'}"><p class="center">요청</p></c:when>
                            <c:when test="${mlist.matchVO.mat_state eq 'B'}"><p class="center">거절</p></c:when>
                            <c:when test="${mlist.matchVO.mat_state eq 'c'}"><p class="center">완료</p></c:when>
                            <c:otherwise ><p class="center">취소</p></c:otherwise>                           
                            </c:choose>                    
                          </td>
                          <td>
                            <!-- 취소-->
                            <p class="center"><a href="#" class="btn btn-mini btn-theme">취소</a></p>
                          </td>
                          <td>
                          <c:if test="${mlist.matchVO.mat_state eq 'C' }">
								<c:choose>
									<c:when test="${mlist.reviewVO.r_contents ne null}">
										<form method="post" action="window.open('/review/update', '리뷰 수정', 'width=430, height=500')">
											<input type="hidden" name="r_contents" value="${mlist.reviewVO.r_contents}">
											<input type="hidden" name="mat_num" value="${mlist.matchVO.mat_num}">
											<input type="hidden" name="r_w_m_id" value="${mlist.m_id}">
											<input type="hidden" name="r_mat_m_id" value="${mlist.matchVO.m_id}">
											<input type="submit" value="리뷰 수정">
										</form>
									</c:when>
									<c:otherwise>
										<form method="post" action="window.open('/review/insert, '리뷰 수정', 'width=430, height=500')">
											<input type="hidden" name="mat_num" value="${mlist.matchVO.mat_num}">
											<input type="hidden" name="r_w_m_id" value="${mlist.m_id}">
											<input type="hidden" name="r_mat_m_id" value="${mlist.matchVO.m_id}">
											<input type="submit" value="리뷰 작성">
										</form>
									</c:otherwise>
								</c:choose>
							</c:if>
                          
                            <!-- 리뷰-->
                            <!-- <p class="center"><a href="#" class="btn btn-mini btn-theme">리뷰작성</a></p> -->
                          </td>
                        </tr>  
                        </c:forEach>
                      </table>
                    </div>
                    <!-- 페이징 -->
                    <%-- 
                    <div class="span8 center">
                      <c:if test="${pageMaker.prev}">
						<a href="/profile/matlist?pageNum=${pageMaker.startPage - 1}&amount=10">◀</a>
					  </c:if>
					  <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                	  	<a href="/profile/matlist?pageNum=${num}&amount=10">${num}</a>
                      </c:forEach>
				  	  <c:if test="${pageMaker.next}">
			          	<a href="/profile/matlist?pageNum=${pageMaker.endPage + 1}&amount=10">▶</a>
		 			  </c:if>
                    </div> --%>
                  
                  </div>


                </div>               
                
            </article>
          </div>
        </div>
      </div>
    </section>


<%@ include file="../includes/footer.jsp" %>
