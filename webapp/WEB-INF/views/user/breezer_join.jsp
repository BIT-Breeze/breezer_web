<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<title>Breezer</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- css -->

<link	href="${pageContext.servletContext.contextPath }/assets/css/login.css"	rel="stylesheet" type="text/css">
<!-- bootstrap -->
<link	href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.min.css"	rel="stylesheet" type="text/css">
<link	href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.css"	rel="stylesheet" type="text/css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.9.0.js"></script> --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">

</head>



<body>
	

	<div id="container">
		
		breezer join
		
		<form id="breezer_login"  name="breezer_login" method="post" action="${pageContext.servletContext.contextPath }/user/breezer_join">
			<label class="block-label" for="id">ID  </label>
			<input class="input-box" id="ID" name="ID" type="text" value=""> <br>
			<label class="block-label" for="pw">PW  </label>
			<input class="input-box" id="PW" name="PW" type="password" value=""> <br>
			<label class="block-label" for="nickName">별명  </label>
			<input class="input-box" id="nickName" name="nickName" type="text" value=""> <br>
			<fieldset>
			<label class="block-label" for="gender">성별</label>
				<label>남</label> <input type="radio" name="gender" value="male" checked="checked">			
				<label>여</label> <input type="radio" name="gender" value="female" >
			</fieldset>
			<label class="block-label" for="birth">생년월일  </label>
			<input type="date" id="birth" name="birth" value="1990-01-01"> <br>
			<label class="block-label" for="job">직업  </label>
			<select name="job">
				<option value="">직업선택</option>
				<option value="00">무직</option>
				<option value="01">학생</option>
				<option value="02">직장인</option>
				<option value="99">기타</option> 
			</select><br>
			<!-- <input class="input-box" id="job" name="job" type="text" value=""> <br> -->
			<label class="block-label" for="nation">국가  </label>
			<select name="nation">
				<option value="">국가선택</option>
				<option value="001">한국</option>
				<option value="002">일본</option>
				<option value="003">중국</option>
				<option value="999">기타</option> 
			</select><br>
			
			<button type="submit" class="join-button"> breezer join</button>
		</form>
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp" /> 
	</div>
</body>
</html>







