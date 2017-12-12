<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	
    <div class="col-sm-3 sidenav">
    	<div class="row">
    		<div class="col-sm-6" id="info">
    		<h3 align="center">${ testUser.nickName }</h3>
    		</div>
    	
    	
    		<div class="col-sm-6" id="info">
    		<h3 align="center">${ testUser.PW }</h3>
    		
    		</div>
    	
    	</div>
    	<div class="row">
    		<div class="col-sm-6" id="info">
    		<h4 align="center">TOUR</h4>
    		<a href="#"><img id="tour" src="${pageContext.servletContext.contextPath }/assets/image/color_pattern.png"></a>
    		<p>  </p>
    		</div>
    	
    	
    		<div class="col-sm-6" id="info">
    		<h4 align="center">COUNTRY</h4>
    		<a href="#"><img id="country" src="${pageContext.servletContext.contextPath }/assets/image/pattern.png"></a>
    		<p>  </p>
    		</div>
    	
    	</div>
    
    
    
    
    <hr>
      <h4>${ testUser.nickName }님 환영합니다!</h4> <!-- 값 가져오기 -->
      <ul class="nav nav-pills nav-stacked">
      <c:choose>
      
      	<c:when test="${param.menu == 'login' }">
        <li class="active"><a href="${pageContext.servletContext.contextPath }/login">Main</a></li>
        <li><a href="${pageContext.servletContext.contextPath }/sns/list">다른사람 이야기</a></li>
        <li><a href="${pageContext.servletContext.contextPath }/location.search">위치검색</a></li>        
        </c:when>
        
        <c:when test="${param.menu == 'sns' }">
        <li><a href="${pageContext.servletContext.contextPath }/login">Main</a></li>
        <li class="active"><a href="${pageContext.servletContext.contextPath }/sns/list">다른사람 이야기</a></li>
        <li><a href="${pageContext.servletContext.contextPath }/location.search">위치검색</a></li>        
        </c:when>
        
        <c:when test="${param.menu == 'location' }">
        <li ><a href="${pageContext.servletContext.contextPath }/login">Main</a></li>
        <li><a href="${pageContext.servletContext.contextPath }/sns/list">다른사람 이야기</a></li>
        <li class="active"><a href="${pageContext.servletContext.contextPath }/location.search">위치검색</a></li>        
        </c:when>
        
      </c:choose>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>	<!-- sm-3 sidenave -->