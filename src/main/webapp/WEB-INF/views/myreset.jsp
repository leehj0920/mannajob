<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="./includes/header.jsp" %>


    
    <section id="" style="min-height:680px">
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
              <h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp비밀번호 찾기</h4>
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


        <form action="/findpasswd" method="post" class="form-horizontal span12">
          <div class="control-group center">            
            <div class="">
              <p class="line_9"></p>
              <p class="line_9"></p>
              <p class="line_9"></p>
              <input type="text" name="m_id" id="id" placeholder="아이디를 입력하세요">
            </div>
          </div>
          <div class="control-group  center">            
            <div class="">
              <input type="text" id="m_eamil" name="m_eamil" placeholder="이메일을 입력하세요">
            </div>
          </div>
          <div class="control-group  center">
            <div class="">
              <input type="submit" class="btn" style="width: 100px; height: 45px;" value="비밀번호 찾기" name="sumbit">
        </form>
      </div>
     
    </section>





<%@ include file="./includes/footer.jsp" %>

