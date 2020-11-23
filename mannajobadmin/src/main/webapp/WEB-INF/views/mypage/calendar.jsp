<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header.jsp" %>

    <section id="inner-headline">
      <div class="container">
        <div class="row">
                <div class="span12">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">마이페이지</a><i class="icon-angle-right"></i></li>
              <li class="active">일정관리</li>
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
              <!-- <form id="commentform" action="#" method="post" name="comment-form"> -->
                <div class="row">
                  <div class="post-heading">
                    <p class="line_9"></p>
                    <p class="line_9"></p>
                    <h3 style="color: #f84002;">&nbsp&nbsp&nbsp<strong></strong>일정 관리</h3>
                    <p class="line_9"></p>
                  </div>

                  <!-- <div class="row"> -->
                  <div class="span9">
                    <!-- <h5>▶ 일정 관리</h5> -->
                    <table class="table scriptCalendar">
                      <!-- <colgroup>
                        <col style="width: 10%;">
                        <col style="width: auto">
                        <col style="width: 10%;">
                      </colgroup> -->
                      <thead>
                        <tr>
                            <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60; 이전달</td>
                            <td colspan="5">
                              <p class="center">
                                <span id="calYear">YYYY</span>년
                                <span id="calMonth">MM</span>월
                              </p>
                            </td>
                            <td onClick="nextCalendar();" style="cursor:pointer;">다음달 &#62;&#62;</td>
                        </tr>
                      </thead>
                    </table>
                    <table class="table table-bordered scriptCalendar">
                      <thead>
                        <tr>
                            <td><p class="center">일</p></td>
                            <td><p class="center">월</p></td>
                            <td><p class="center">화</p></td>
                            <td><p class="center">수</p></td>
                            <td><p class="center">목</p></td>
                            <td><p class="center">금</p></td>
                            <td><p class="center">토</p></td>
                        </tr>
                      </thead>
                      <tbody id="calendarBody"></tbody>                      
                    </table>
                  </div>
                </div>
              <!-- </form> -->
            </article>
          </div>
        </div>
      </div>
    </section>

<%@ include file="../includes/footer.jsp" %>

