<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link	href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.css"	rel="stylesheet" type="text/css">
<link	href="${pageContext.servletContext.contextPath }/assets/css/breezer.css"	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.9.0.js"></script>
 <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>

<title>Breezer Main</title>

</head>
<body>

<div class="container-fluid">
  <div class="row content">
	<c:import url="/WEB-INF/views/includes/sidenav.jsp">
		<c:param name="menu" value="login" />
	</c:import>

    <div class="col-sm-9">
		<div class="row">
			<div class="col-sm-3" id="firstrow" align="center">
			
			<img src="${pageContext.servletContext.contextPath }/assets/image/anna.jpg" 
				 width="150px" height="150px" class="img-circle">
			
			</div> 
			
			<div class="col-sm-6" id="firstrow" align="center">

			Nickname
			여행국가 : 미국, 한국
			${vo.nickName } 
			</div>
			
			<div class="col-sm-3" id="firstrow" align="right">
			
      			<a href="#" class="btn btn-info" role="button">NEW TOUR</a>
			
			</div>
		
		</div>	<!-- 윗줄, 사진, 닉네임, 새 투어 -->
	
		<div class="row" align="center">
		
			<div class="col-sm-3" id="secondrow">
			투어1
			</div>
			
			<div class="col-sm-3" id="secondrow">
			투어2
			</div>
			
			<div class="col-sm-3" id="secondrow">
			투어3
			</div>
		
			<div class="col-sm-3" id="secondrow">
			투어4
			</div>
		
		</div><!-- 아랫줄, 투어 리스트  -->
	
      
    </div>	<!-- col sm-9 -->
    
  </div>	<!-- row content -->
</div>	<!-- container -->

<c:import url="/WEB-INF/views/includes/footer.jsp" />






</body>
</html>