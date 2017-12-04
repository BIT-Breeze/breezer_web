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

<link
	href="${pageContext.servletContext.contextPath }/assets/css/login.css"
	rel="stylesheet" type="text/css">
<!-- bootstrap -->
<link
	href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.css"
	rel="stylesheet" type="text/css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.9.0.js"></script> --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1">

</head>


<script>
	// This is called with the results from from FB.getLoginStatus().
	function statusChangeCallback(response) {
		console.log('statusChangeCallback');
		console.log(response);
		// The response object is returned with a status field that lets the
		// app know the current login status of the person.
		// Full docs on the response object can be found in the documentation
		// for FB.getLoginStatus().
		if (response.status === 'connected') {
			// Logged into your app and Facebook.
			testAPI();
		} else {
			// The person is not logged into your app or we are unable to tell.
			document.getElementById('status').innerHTML = 'Please log '	+ 'into this app.';
		}
	}

	// This function is called when someone finishes with the Login
	// Button.  See the onlogin handler attached to it in the sample
	// code below.
	function checkLoginState() {
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
	}

	window.fbAsyncInit = function() {
		FB.init({
			appId : '154137601867803',
			cookie : true, // enable cookies to allow the server to access 
			// the session
			xfbml : true, // parse social plugins on this page
			version : 'v2.8' // use graph api version 2.8
		});

		// Now that we've initialized the JavaScript SDK, we call 
		// FB.getLoginStatus().  This function gets the state of the
		// person visiting this page and can return one of three states to
		// the callback you provide.  They can be:
		//
		// 1. Logged into your app ('connected')
		// 2. Logged into Facebook, but not your app ('not_authorized')
		// 3. Not logged into Facebook and can't tell if they are logged into
		//    your app or not.
		//
		// These three cases are handled in the callback function.

		FB.getLoginStatus(function(response) {
			console.log("==실행시 로그인정보 가져온다 ==")
			statusChangeCallback(response);
			var userInfo = response.authResponse
			console.log("token : "+userInfo.accessToken)
			console.log("expiresIn : "+userInfo.expiresIn)
			console.log("signedRequest : "+userInfo.signedRequest)
			console.log("userID : "+userInfo.userID)
		});

	};

	// Load the SDK asynchronously
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "https://connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	// Here we run a very simple test of the Graph API after login is
	// successful.  See statusChangeCallback() for when this call is made.
	function testAPI() {
		console.log('Welcome!  Fetching your information.... ');
		FB.api('/me', function(response) {
			console.log(response)
			console.log('Successful login for: '+ response.name);
			document.getElementById('status').innerHTML = 'Thanks for logging in, '+ response.name + '!';
		});
	}
</script>




<body>
	

	<div id="container">
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp" />

		<!-- main wrapper -->
		<div id="main-wrapper" style="height: 700px;">
			<!-- left -->
			<div id="left-wrapper">left</div>

			<!-- right -->
			<div id="right-wrapper">
				<!-- account -->
				<div id="account-wrapper">
					<form id="login-form" class="login-form" name="login-form"
						method="post"
						action="${pageContext.servletContext.contextPath }/user/login">
						<div id="login-left" style="float: left;">
							<label class="block-label" for="id">ID </label> <input
								class="input-box" id="ID" name="ID" type="text" value="">
							<br> <label class="block-label" for="pw">PW </label> <input
								class="input-box" id="PW" name="PW" type="password" value="">
							<br>
						</div>


						<div id="login-right" style="float: left;">
							<button type="submit" id="login-button">Login</button>
						</div>


					</form>
					<div id="join-form" class="join-form">
						<div style="height: 20px;"></div>

						<form id="breezer_login" name="breezer_login" method="post"
							action="${pageContext.servletContext.contextPath }/user/breezer_join_page">
							<button type="submit" class="join-button">breezer join</button>
						</form>

						<form id="facebook_login" name="facebook_login" method="post"
							action="${pageContext.servletContext.contextPath }/user/facebook_login">
							<button type="submit" class="join-button">
								facebook_login</button>
						</form>
						
						<div id='status' >
							<fb:login-button scope="public_profile,email" onlogin="checkLoginState();" class="join-button">
							</fb:login-button>
						</div>
							

						<form id="google_login" name="google_login" method="post"
							action="${pageContext.servletContext.contextPath }/user/google_login">
							<button type="submit" class="join-button">google_login</button>
						</form>



					</div>
				</div>
			</div>
		</div>


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp" />
	</div>
	
	
	
	
	
</body>


</html>







