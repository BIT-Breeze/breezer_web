<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC  '-//W3C//DTD HTML 4.01//EN' 'http://www.w3.org/TR/html4/strict.dtd'>
<html>
	<head>
		<title>Breezer</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<style type="text/css">
		
			div#container	{ text-align:left; width:1200px; margin:0 auto; background-color:#ffffff }
			div#footer		{ clear:both; width:100% }
			div#footer		{ background:#515151; color: #FFF }
			div#footer p	{ margin:0;padding:5px 10px }
		
		  body {
		      position: relative;
		  }
		  ul.nav-pills {
		      top: 20px;
		      position: fixed;
		  }
		  div.col-sm-9 div {
		      height: 500px;
		      font-size: 28px;
		  }
		  #section1 {color: #fff; background-color: #1E88E5;}
		  #section2 {color: #fff; background-color: #673ab7;}
		  #section3 {color: #fff; background-color: #ff9800;}
		  #section41 {color: #fff; background-color: #00bcd4;}
		  #section42 {color: #fff; background-color: #009688;}
		  
		  @media screen and (max-width: 810px) {
		    #section1, #section2, #section3, #section41, #section42  {
		        margin-left: 150px;
		    }
		  }
		</style>
		
		<script type="text/javascript">
		</script>
	</head>
	
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">

	mytour
		${authUser.nickName }
		
		
		
		<form id="backtomytour"  name="backtomytour" method="post" action="${pageContext.servletContext.contextPath }/tour/mytour">	
			<button type="submit" class="join-button"> backtomytour</button>
		</form>



</body>
</html>







