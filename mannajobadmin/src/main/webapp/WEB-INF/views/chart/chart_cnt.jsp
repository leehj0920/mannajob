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
              <li><a href="#">통계</a><i class="icon-angle-right"></i></li>
              <li class="active">매칭 성사 건수 통계</li>
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
                <h5 class="widgetheading height_40">통&nbsp&nbsp&nbsp&nbsp계</h5>

                <ul class="cat">
                  <li><i class="icon-angle-right"></i><a href="/chart/chart_cnt">매칭 성사 건수 통계</a></li>
                  <li><i class="icon-angle-right"></i><a href="/chart/chart_field">분야별 매칭 분석</a></li>
                </ul>
              </div>
            </aside>
          </div>

          <div class="span8">
            <article>
              <form id="commentform" action="#" method="post" name="comment-form">
                <div class="row">
                  <div class="post-heading">
                    <p class="line_9">
                    <p class="line_9">
                    <h3 style="color: #f84002;">&nbsp&nbsp&nbsp<strong></strong>매칭 성사 건수 통계</h3>
                    <p class="line_9">
                  </div>

                  <!-- 매칭 성사 건수 통계 차트 Start -->
                  <div class="span8">
                    <div class="chart-bar">
                      <canvas id="myBarChart"></canvas>
                    </div>
                  </div>
                  <!-- 매칭 성사 건수 통계 차트 End -->

              </form>
            </article>
          </div>
        </div>
      </div>
    </section>


<%@ include file="../includes/footer.jsp" %>