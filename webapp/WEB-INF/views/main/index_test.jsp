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

<style>
#jb-container {
	width: 940px;
	margin: 10px auto;
	padding: 20px;
	border: 1px solid #bcbcbc;
}

#jb-header {
	padding: 20px;
	margin-bottom: 20px;
	border: 1px solid #bcbcbc;
}

#jb-content {
	width: 580px;
	padding: 20px;
	margin-bottom: 20px;
	float: left;
	border: 1px solid #bcbcbc;
}

#jb-sidebar {
	width: 260px;
	padding: 20px;
	margin-bottom: 20px;
	float: right;
	border: 1px solid #bcbcbc;
}

#jb-footer {
	clear: both;
	padding: 20px;
	border: 1px solid #bcbcbc;
}

@media ( max-width : 1024px ) {
	#jb-container {
		width: auto;
	}
	#jb-content {
		float: none;
		width: auto;
	}
	#jb-sidebar {
		float: none;
		width: auto;
	}
}


@media ( max-width : 768px ) {
	#jb-container {
		width: auto;
	}
	#jb-content {
		float: none;
		width: auto;
	}
	#jb-sidebar {
		float: none;
		width: auto;
	}
}

@media ( max-width : 400px ) {
	#jb-container {
		width: auto;
	}
	#jb-content {
		float: none;
		width: auto;
	}
	#jb-sidebar {
		float: none;
		width: auto;
	}
}
</style>


<body>
	<div id="jb-container">
		<div id="jb-header">
			<h1>Responsive Layout</h1>
		</div>
		<div id="jb-content">
			<h2>Content</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet.
				Proin gravida velit dictum dui consequat malesuada. Aenean et nibh
				eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet
				ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio
				pretium, sollicitudin sapien eget, adipiscing risus.</p>
		</div>
		<div id="jb-sidebar">
			<h2>Sidebar</h2>
			<ul>
				<li>Lorem</li>
				<li>Ipsum</li>
				<li>Dolor</li>
			</ul>
		</div>
		<div id="jb-footer">
			<p>Copyright</p>
		</div>
	</div>






	<div id="container">
		<div id="test" style="height: 200px;">
			<button type="button">버튼</button>
			<button type="button" class="btn">버튼</button>
			<button type="button" class="btn btn-primary btn-lg">버튼</button>
			<button type="button" class="btn btn-success btn-lg">버튼</button>
			<button type="button" class="btn btn-info btn-lg">버튼</button>
			<button type="button" class="btn btn-warning btn-lg">버튼</button>
			<button type="button" class="btn btn-danger btn-lg">버튼</button>
			<br>

			<button type="button" class="btn">버튼</button>
			<button type="button" class="btn btn-primary btn-sm">버튼</button>
			<button type="button" class="btn btn-success btn-sm">버튼</button>
			<button type="button" class="btn btn-info btn-sm">버튼</button>
			<button type="button" class="btn btn-warning btn-sm">버튼</button>
			<button type="button" class="btn btn-danger btn-sm">버튼</button>
			<br>

			<button type="button" class="btn">버튼</button>
			<button type="button" class="btn btn-primary btn-xs">버튼</button>
			<button type="button" class="btn btn-success btn-xs">버튼</button>
			<button type="button" class="btn btn-info btn-xs">버튼</button>
			<button type="button" class="btn btn-warning btn-xs">버튼</button>
			<button type="button" class="btn btn-danger btn-xs">버튼</button>
			<br>

			<div class="dropdown">
				<button type="button" class="btn btn-default dropdown-toggle"
					id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					드롭다운 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#"> Action1</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#"> Action2</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#"> Action3</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#"> Action4</a></li>
				</ul>
			</div>
		</div>



		<%-- <c:import url="/WEB-INF/views/includes/header.jsp"/>
		
		<c:import url="/WEB-INF/views/includes/navigation.jsp">
			<c:param name="menu" value="main" />
		</c:import> --%>

		<div id="main-content" style="height: 700px;">hello breezer</div>

		<%-- <c:import url="/WEB-INF/views/includes/footer.jsp" /> --%>
	</div>
</body>
</html>







