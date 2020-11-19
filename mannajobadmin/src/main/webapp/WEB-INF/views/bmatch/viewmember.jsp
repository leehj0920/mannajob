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
              <li><a href="#">매칭</a><i class="icon-angle-right"></i></li>
              <li class="active">취업준비생 매칭 조회 <i class="icon-angle-right"></i></li>
              <li class="active">상세내용 </li>
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
                   <li><i class="icon-angle-right"></i><a href="/bmatch/list?b_category=A">현직자 매칭 리스트</a></li>
                  <li><i class="icon-angle-right"></i><a href="/bmatch/list?b_category=B">쥐업준비생 매칭 리스트</a></li>
                </ul>
              </div>
            </aside>
          </div>
          <div class="span8">
            <article>
              <!-- <form id="commentform" action="#" method="post" name="comment-form"> -->
                <div class="row">
                  <div class="post-heading">
                    <p class="line_9"></p>
                    <p class="line_9"></p>
                    <h3 style="color: #f84002;">&nbsp&nbsp&nbsp<strong>취업준비생 </strong> 매칭 상세내용</h3>
                    <p class="line_9"></p>
                  </div>

                  <!-- <div class="row"> -->
                  <div class="span9">
                    <h5>▶ 모집정보</h5>
                    <table class="table table-bordered">
                      <colgroup>
                        <col style="width:20%"/>
                        <col style="width:80%"/>
                      </colgroup>
                      <tr>
                        <td  >
                          <p class="center">아&nbsp&nbsp이&nbsp&nbsp디</p>
                        </td>
                        <!-- 모집정보 아이디 -->
                        <td>
                         <c:out value="${bMatch.m_id}" />
                        </td>
                      </tr>
                      
                      <tr>
                        <td>
                          <p class="center">지&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp역</p>
                        </td>
                        <!-- 모집정보 지역 -->
                        <td>
                            <span><c:out value="${bMatch.b_location}" /></span>
                        </td>
                      </tr>
                      <tr> 
                        <td>
                          <p class="center">관심기업 및 직무</p>
                        </td>
                        <td>
                          <!-- 모집정보 관심기업 -->
                          <span><c:out value="${bMatch.b_corp}" /></span>
                          <span>&nbsp&nbsp</span>
                          <!-- 모집정보 관심직무 -->
                          <span><c:out value="${bMatch.b_task}" /></span>
                        </td>
                      </tr> 
                      
                      <tr>
                        <td>
                          <p class="center">기 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 간</p>
                        </td>
                        <td>
                          <!-- 모집정보 기간  fromm ~ to  -->
                          <span><c:out value="${bMatch.b_stdate}" /></span>
                          <span> &nbsp&nbsp</span>
                          <span>부터</span>
                          <span>&nbsp&nbsp</span> 
                          <span><c:out value="${bMatch.b_endate}" /></span>
                          <span>&nbsp&nbsp</span> 
                          <span>까지</span>  
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <p class="center">시 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 간</p>
                        </td>
                        <td>
                          <!-- 모집정보 시간 -->
                          <span><c:out value="${bMatch.b_period}" /></span>
                          <span>&nbsp&nbsp 시간</span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <p class="center">가 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 격</p>
                        </td>
                        <td>
                          <!--  모집정보 가격-->
                            <span><c:out value="${bMatch.b_price}" /></span>
                            <span>&nbsp&nbsp 원</span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <p class="center">내 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 용</p>
                        </td>
                        <td>
                          <!-- 모집정보 내용 -->
                          <p>
                          <% pageContext.setAttribute("replaceChar","\n");%>
                           ${fn:replace(bMatch.b_contents,line,"<br/>")}
                          </p>
                        </td>
                      </tr>                        
                    </table>
                    <div class="span9">
                      <div class="box aligncenter">
                        <p class="center">
                          <a href="/bmatch/update?b_num=${bMatch.b_num}&pageNum=${cri.pageNum}&b_category=${bMatch.b_category}&m_id=${bMatch.m_id}" class="btn btn-theme margintop10 a_btn4" type="button">수정하기</a>
                          <a href="/bmatch/delete?b_num=${bMatch.b_num}&pageNum=${cri.pageNum}&b_category=${bMatch.b_category}" class="btn btn-inverse margintop10 a_btn4" type="button">삭제하기</a>
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                          <a href="/bmatch/list?pagseNum=${cri.pageNum}&b_category=${bMatch.b_category}" class="btn btn-inverse margintop10 a_btn4" type="button">리스트</a>
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                          <a href="#" class="btn btn-theme margintop10 a_btn4" type="button" onclick="openPopup();">매칭요청</a>
                          <a href="#" class="btn btn-inverse margintop10 a_btn4" type="button">신고</a>  
                        </p>
                      </div>
                    </div> 
                          
                    <div class="about-author">
                      <form id="commentform" action="#" method="post" name="comment-form">
                        <p>
                          <span>2020-11-01</span>
                          <span>&nbsp&nbsp &nbsp&nbsp</span> 
                          <span>park1990</span> 
                          <span class="align-right">
                            <!-- 비밀글 작성시 checkbox  check/non_check  -->
                            <input type="checkbox">
                              비밀글
                              &nbsp&nbsp &nbsp&nbsp
                            <input type="button" class="btn btn-mini " value="질문등록">
                          </span>
                          <!-- 댓글내용 입력 -->
                          <textarea rows="2" cols="90" placeholder="댓글을 입력하세요"></textarea>
                        </p>
                      </form>
                    </div>
                    <div class="comment-area">
                      <form id="commentform" action="#" method="post" name="">               
                        <div class="media">                        
                          <div class="media-body">
                            <div class="media-content">
                              <p>
                                <!-- 댓글 날짜 -->
                                <span>2020-11-01</span>
                                <span>&nbsp&nbsp &nbsp&nbsp</span>
                                <!-- 댓글 아이디 -->
                                <span>kim202001</span>
                                <!-- 댓글 내용 -->
                                <p>주말 시간은 어떠신가요?</p>
                                  <p>
                                    <span>&nbsp&nbsp └ </span>
                                    <!-- 대댓글 날짜 -->
                                    <span>2020-11-01</span>
                                    <span>&nbsp&nbsp &nbsp&nbsp</span>
                                    <!-- 대댓글 아이디 -->
                                    <span>hogn901010</span>
                                    <p>
                                      &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp
                                      <!-- 대댓글 내용 -->
                                      <span>일요일 오후도 가능합니다.</span>
                                    </p>  

                                    <textarea rows="2" cols="90" placeholder="└  댓글에 대한 답글을 입력하세요"></textarea>
                                  </p>
                                </p>
                                
                                <span class="align-right">
                                  <input type="button" class="btn btn-mini " value="답글쓰기">
                                  </button>  
                                </span>
                              </p>                               
                            </div>                          
                          </div>
                        </div> 
                      </form>    
                    </div>                           
                  </div>
                </div>
              <!-- </form> -->
            </article>
          </div>
        </div>
      </div>
    </section>

      <!-- 매칭요청 팝업 -->
    <script language="javascript">
      function openPopup() {
        window.open("popup_maching.html","매칭요청 팝업","width=800,height=300");
      }
    </script>



<%@ include file="../includes/footer.jsp" %>