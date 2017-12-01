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
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"/>
		
		<!-- main wrapper -->
		<div id="main-wrapper" style="height: 700px;">
			<!-- left -->
			<div id="left-wrapper">
				left
			</div>
			
			<!-- right -->
			<div id="right-wrapper">
				<!-- account -->
				<div id="account-wrapper">
					<form id="login-form" class="login-form" name="login-form" method="post" action="${pageContext.servletContext.contextPath }/user/login">
						<div id="login-left"  style="float: left;">
							<label class="block-label" for="id">ID  </label>
							<input class="input-box" id="id" name="id" type="text" value=""> <br>
							<label class="block-label" for="pw">PW  </label>
							<input class="input-box" id="pw" name="pw" type="password" value=""> <br>
						</div>
						
						
						<div id="login-right" style="float: left;">	
							<button type="button" id="login-button" > Login</button>
						</div>
						
						
					</form>
					<div id="join-form" class="join-form">
						<div style="height:20px;">
						</div>
						
						<button type="button" class="join-button"> breezer</button>
						<button type="button" class="join-button"> facebook</button>
						<button type="button" class="join-button"> google</button>
					
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp" /> 
	</div>
</body>
</html>







