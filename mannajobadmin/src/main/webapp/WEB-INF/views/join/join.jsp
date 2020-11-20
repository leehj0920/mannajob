
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header.jsp" %>

    <section id="">
        <div class="container">
          
          <!-- divider      -->
          <div class="row">
            <div class="span12">
              <div class="solidline">
              </div>
            </div>
          </div>
          <!-- end divider --> 
          <div class="row">
            <div class="span12" >
              <div class="inner-heading center">
                <h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCreate an <strong>account</strong></h4>
              </div>       
            </div>
          </div>
  
          <!-- divider      -->
          <div class="row">
            <div class="span12">
              <div class="solidline">
              </div>
            </div>
          </div>
          <!-- end divider --> 
  
  
          <form action="/join/join" method="post" class="form-horizontal span12">
            <div class="control-group  center">               
              <div class="">
                <input class="form-control" type="password"
					name="m_passwd" id="inputPassword" placeholder="2차 패스워드를 입력하세요">
              </div>
            </div>
            <div class="control-group  center">               
                <div class="">
                  <input class="form-control" type="text"
					name="m_name" id="inputName" placeholder="이름을 입력하세요">
                </div>
            </div>
            <div class="control-group  center">               
                <div class="">
                  <input class="form-control" type="text"
					name="m_phone" id="inputPhone" placeholder="연락처를 입력하세요">
                </div>
            </div>
            <div class="control-group  center">               
                <div class="">
                  <input class="form-control" type="text" name="m_email" value="${useremail}" id="inputEmail" placeholder="e-mail을 입력하세요">
                </div>
            </div>
            <div class="control-group  center">
              <div class="">
                <input class="btn btn-theme margintop10" style="width: 220px; height: 45px;" type="submit" value="회원가입"><br>
                <!-- <button type="submit" class="btn-theme" style="width: 220px; height: 45px;">회원가입</button>                -->
                <p class="line_9"></p>             
            </div>
            
            <p class="line_9"></p>
            <p class="line_9"></p>
            <p class="line_9"></p>
          </form>
          
  
        </div>
      </section>


<%@ include file="../includes/footer.jsp" %>