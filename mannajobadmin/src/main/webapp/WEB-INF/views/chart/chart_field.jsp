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
              <li class="active">분야별 매칭 분석</li>
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
                    <h3 style="color: #f84002;">&nbsp&nbsp&nbsp<strong></strong>분야별 매칭 분석</h3>
                    <p class="line_9">
                  </div>

                  <div class="span3" style="border:1px solid #656565; width: 230px;">
                    <!-- 기업별 분석 차트 -->
                    <div class="span8" style="margin-left: 10px;">
                      <div class="chart-bar2">
                        <canvas id="companyChart"></canvas>
                      </div>
                        <p class="widgetheading" style="width: 200px;">선호기업 순위별 리스트
                        <p class="left">1. 네이버
                        <p class="left">2. 삼성전자
                        <p class="left">3. 농협중앙회
                        <p class="left">4. LG화학
                        <p class="left">5. 한국전력공사
                    </div>
                  </div>
                  <div class="span3" style="border:1px solid #656565; width: 230px;">
                    <!-- 지역별 분석 차트 -->
                    <div class="span8" style="margin-left: 10px;">
                      <div class="chart-bar2">
                        <canvas id="locationChart"></canvas>
                      </div>
                        <p class="widgetheading" style="width: 200px;">희망지역 순위별 리스트
                        <p class="left">1. 청주
                        <p class="left">2. 서울
                        <p class="left">3. 대전
                        <p class="left">4. 부산
                        <p class="left">5. 인천
                    </div>
                  </div>
                  <div class="span3" style="border:1px solid #656565; width: 230px;">
                    <!-- 분야별 분석 차트 -->
                    <div class="span8" style="margin-left: 10px;">
                      <div class="chart-bar2">
                        <canvas id="fieldChart"></canvas>
                      </div>
                        <p class="widgetheading" style="width: 200px;">희망직무 순위별 리스트
                        <p class="left">1. IT개발
                        <p class="left">2. 마케팅
                        <p class="left">3. 인사/총무
                        <p class="left">4. 전략/기획
                        <p class="left">5. 디자인/예술
                    </div>
                  </div>
              </form>
            </article>
          </div>
        </div>
      </div>
    </section>


<%@ include file="../includes/footer.jsp" %>