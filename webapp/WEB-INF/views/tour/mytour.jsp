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

<<<<<<< HEAD
	<div class="edit">
		<div id="wrap">
			<div id="editor">
				<div data-reactroot>
					<div class="header_in inner_header">
						<div class="lnb white_lnb img_lnb">
							<div class="tit_service">
								<a href="#" class="btn_nav">menu</a>
								<h1 class="logo">
									<a href="https://withvolo.com/" class="ff_pp">VOLO</a>
								</h1>
							</div>
							<div class="button_box clrfix ">
								<button type="button" class="cancel float_left ff_nsk">나가기</button>
								<button type="button" class="save float_left ff_nsk">저장됨</button>
							</div>
						</div>
						<div class="content_top">
							<div class="content_top_in clrfix">
								<div class="content_left">
									<ul class="control_box align_center">
										<li>
											<div class="" hidden="" style="width: 200px; height: 200px; border-width: 2px; 
											border-color: rgb(102, 102, 102); border-style: dashed; border-radius: 5px;">
												<input type="file" accept="image/*" style="display: none;">
											</div>
											<button type="button" class="btn_cover">
												<span class="ico_cover"></span>
											</button>
											<div class="rollover open ff_nsk">표지 사진</div>
										</li>
										<li>
											<div>
												<button type="button" class="btn_open on">
													<span class="ico_open"></span>
												</button>
												<div class="rollover open ff_nsk">모두에게 공개
												</div>
											</div>
										</li>
										<li>
											<button type="button" class="btn_date on">
												<span class="ico_date"></span>
											</button>
											<div class="rollover date_on ff_nsk">자동 날짜 기록</div>
										</li>
									</ul>
								</div>
								<div class="content_right table">
									<div class="content_right_in align_center table_cell">
										<div class="textarea_box on">
											<textarea class="textarea_inp" rows="1" placeholder="여행기 제목을 입력해주세요" style="height: 168px;"></textarea>
										</div>
										<div>
											<div class="trip_schedule table">
												<span class="ico_calendar" style="top: -7px; left: 102px;"></span>
												<div class="DateRangePicker">
													<div>
														<div class="DateRangePickerInput">
															<div class="DateInput">
																<input type="text" aria-label="여행 시작일" class="DateInput__input needsclick" id="startDate" 
																name="startDate" value="2017-12-06" placeholder="여행 시작일" autocomplete="off" 
																aria-describedby="DateInput__screen-reader-message-startDate">
																<p id="DateInput__screen-reader-message-startDate" class="screen-reader-only">
																	Press the down arrow key to interact with the calendar and
																	select a date. Press the question mark key to get the keyboard shortcuts for changing dates.
																</p>
																<div class="DateInput__display-text DateInput__display-text--has-input">2017.12.06</div>
															</div>
															<div class="DateRangePickerInput__arrow" aria-hidden="true" role="presentation">
																<svg viewBox="0 0 1000 1000">
																	<path d="M694.4 242.4l249.1 249.1c11 11 11 21 0 32L694.4 772.7c-5 5-10 7-16 7s-11-2-16-7c-11-11-11-21 
																	0-32l210.1-210.1H67.1c-13 0-23-10-23-23s10-23 23-23h805.4L662.4 274.5c-21-21.1 11-53.1 32-32.1z"></path>
																</svg>
															</div>
															<div class="DateInput">
																<input type="text" aria-label="여행 종료일" class="DateInput__input needsclick" id="endDate" name="endDate" 
																value="" placeholder="여행 종료일" autocomplete="off" aria-describedby="DateInput__screen-reader-message-endDate">
																<p id="DateInput__screen-reader-message-endDate" class="screen-reader-only">
																	Press the down arrow key to interact with the calendar and select a date. 
																	Press the question mark key to get the keyboard shortcuts for changing dates.
																</p>
																<div class="DateInput__display-text">여행 종료일
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="trip_border">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="content_info">
							<div class="content_info_in clrfix">
								<div class="author">
									<ul class="clrfix">
										<li>
											<button type="button">
												<span class="ico_author"></span>
											</button>
										</li>
										<li class="first_author">
											<img src="https://d21cv3zohf8bix.cloudfront.net/unsafe/300x300/smart/https://image.withvolo.com/16e30bcfab39e1f3b6afe133f9a33be2/491a14de-187d-4e36-aa00-c722726b4eaa-백핸드 슬라이스.jpg" 
											class="img_author" alt="hailfederer" title="hailfederer">
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div id="container">
					<div>
						<div class="content_bottom">
							<div class="content_bottom_in">
								<div class="cont_pdt">
									<button type="button" class="help_btn"></button>
								</div>
								<div class="content_datebox">
									<div class="txt_date ff_nm fw_700">1일차
									</div>
									<div class="edit_day ff_nm">
										<img src="//static.withvolo.com/asset/MNL0J3v3Ep/2017/img/ico_edit.png" alt="">
										<em class="txt_day">
											<div class="SingleDatePicker">
												<div>
													<div class="SingleDatePickerInput">
														<div class="DateInput">
															<input type="text" aria-label="Date" class="DateInput__input needsclick" 
															id="cell-0.8488648731564419" name="cell-0.8488648731564419" value="2017-12-06" 
															placeholder="Date" autocomplete="off" 
															aria-describedby="DateInput__screen-reader-message-cell-0.8488648731564419">
															<p id="DateInput__screen-reader-message-cell-0.8488648731564419" class="screen-reader-only">
																Press the down arrow key to interact with the calendar and select a date. 
																Press the question mark key to get the keyboard shortcuts for changing dates.
															</p>
															<div class="DateInput__display-text DateInput__display-text--has-input">2017.12.06
															</div>
														</div>
													</div>
												</div>
											</div>
										</em>
									</div>
								</div>
								<div class="dropzone_cell text_cell">
									<div class="content_editbox" order="1">
										<div class="tool_wrap">
										</div>
										<div class="edit_textbox ">
											<div class="edit_textcont">
												<div class="edit_textbox type" style="display: none;">
													<div class="edit_textcont add_padding_left">
														<div class="text_editable" contenteditable="true" placeholder="문단 내에서 줄바꿈을 하려면 shift + enter를 누르세요">
														</div>
													</div>
												</div>
												<textarea placeholder="문단 내에서 줄바꿈을 하려면 shift + enter를 누르세요" rows="1" class="" style="height: 27px;"></textarea>
											</div>
										</div>
									</div>
									<input type="file" accept="image/*" multiple="" style="display: none;">
								</div>
								<div class="dropzone_cell cont_pdt">
									<input type="file" accept="image/*" multiple="" style="display: none;">
								</div>
								
								
								
								<div class="row">
									<nav class="col-sm-3" id="myScrollspy">
										<ul class="nav nav-pills nav-stacked">
											<li class="active">
												<a href="#section1">Section 1</a>
											</li>
											<li>
												<a href="#section2">Section 2</a>
											</li>
											<li>
												<a href="#section3">Section 3</a>
											</li>
											<li class="dropdown">
												<a class="dropdown-toggle" data-toggle="dropdown" href="#">Section 4
												<span class="caret"></span></a>
													<ul class="dropdown-menu">
														<li>
															<a href="#section41">Section 4-1</a>
														</li>
														<li>
															<a href="#section42">Section 4-2</a>
														</li>                     
													</ul>
							        		</li>
							      		</ul>
							    	</nav>
									<div class="col-sm-9">
										<div id="section1">    
											<h1>Section 1</h1>
											<p>Try to scroll this section and look at the navigation list while scrolling!</p>
										</div>
										<div id="section2"> 
											<h1>Section 2</h1>
											<p>Try to scroll this section and look at the navigation list while scrolling!</p>
										</div>        
										<div id="section3">         
											<h1>Section 3</h1>
											<p>Try to scroll this section and look at the navigation list while scrolling!</p>
										</div>
										<div id="section41">         
											<h1>Section 4-1</h1>
											<p>Try to scroll this section and look at the navigation list while scrolling!</p>
										</div>      
										<div id="section42">         
											<h1>Section 4-2</h1>
											<p>Try to scroll this section and look at the navigation list while scrolling!</p>
										</div>
									</div>
								</div>
								
								
								
								
							</div>
						</div>
					</div>
					<div class="tag_wrap">
						<div class="tag_box clrfix">
							<div class="tag_title">#태그 (최대 5개)
							</div>
							<div class="tag_list_box">
								<ul class="tag_list clrfix">
									<li>
										<div class="tag_input">
											<div class="edit_textcont">
												<input type="text">
											</div>
										</div>
									</li>
									<span class="tag_placeholder">원하는 태그를 입력 후 스페이스바를 클릭해 주세요</span>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="floating_up_btn _go_top_btn" style="position: fixed; bottom: 20px;">
						<a href="#" class="top" title="go top button"></a>
					</div>
					
					<!-- footer -->
					<c:import url="/WEB-INF/views/includes/footer.jsp" />
					
					
				</div>
			</div>
		</div>
	</div>


	<%-- <div id="container">
		<div class="row">
			<nav class="col-sm-3" id="myScrollspy">
				<ul class="nav nav-pills nav-stacked">
					<li class="active">
						<a href="#section1">Section 1</a>
					</li>
					<li>
						<a href="#section2">Section 2</a>
					</li>
					<li>
						<a href="#section3">Section 3</a>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Section 4
						<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#section41">Section 4-1</a>
								</li>
								<li>
									<a href="#section42">Section 4-2</a>
								</li>                     
							</ul>
	        		</li>
	      		</ul>
	    	</nav>
			<div class="col-sm-9">
				<div id="section1">    
					<h1>Section 1</h1>
					<p>Try to scroll this section and look at the navigation list while scrolling!</p>
				</div>
				<div id="section2"> 
					<h1>Section 2</h1>
					<p>Try to scroll this section and look at the navigation list while scrolling!</p>
				</div>        
				<div id="section3">         
					<h1>Section 3</h1>
					<p>Try to scroll this section and look at the navigation list while scrolling!</p>
				</div>
				<div id="section41">         
					<h1>Section 4-1</h1>
					<p>Try to scroll this section and look at the navigation list while scrolling!</p>
				</div>      
				<div id="section42">         
					<h1>Section 4-2</h1>
					<p>Try to scroll this section and look at the navigation list while scrolling!</p>
				</div>
			</div>
		</div>
=======
	<div id="container">
		
		mytour
		${authUser.nickName }
		
		<form id="logout"  name="logout" method="post" action="${pageContext.servletContext.contextPath }/user/logout">	
			<button type="submit" class="join-button"> logout</button>
		</form>
>>>>>>> refs/remotes/origin/master
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp" />
	</div> --%>
</body>
</html>







