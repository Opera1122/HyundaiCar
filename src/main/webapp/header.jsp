<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myweb.user.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
		<style>
			* {
				margin:0px;
				padding:0px;
			}
			body {
				background-color:white;
			}
			#wrapper {
				width:1280px;
				margin:0 auto;
			}
			nav {
				list-style-type: none;
				list-style-position:inside;
				text-align:left;
				float: right;
			}
			nav li {
				font-size: 14px;
				color:#585858;
				float:left;
				list-style:none;
				margin-right:25px;
				margin-top:20px;
			}
			header {
				background-repeat:no-repeat;
				background-position:left;
				text-align:left;
				height:30px;
				padding:50px 0px 50px 0px;
			}
			#header2 {
				padding:5px 0px 5px 0px;
			}
			#top_menu{
				list-style-type:none;
				list-style-position:inside;
				float:right;
			}
			#top_menu li{
				float:left;
				font-weight:bold;
				color:#424242;
				margin:15px;
				padding:15px 0px 0px 0px;
			}
		</style>
	</head>
	<body>
		<div id="wrapper">
			<nav>
				<ul>
					<a href="http://localhost:8080/Hyundai/index.jsp"><li>홈</li></a>
					
					<% 	
						String userLogin = (String)session.getAttribute("idKey");
						if(userLogin != null){
					%>
					<a href = "http://localhost:8080/Hyundai/logout.jsp"><li>로그아웃</li></a>
					<%
						} else {
					%>
					<a href = "http://localhost:8080/Hyundai/login.jsp"><li>로그인</li></a>
					<%
						}
					%>
					
					<a href = "http://localhost:8080/Hyundai/signup.jsp"><li>회원가입</li></a>
					<% 	
						String adminLogin = (String)session.getAttribute("adminKey");
						if(adminLogin != null){
					%>
					<a href = "http://localhost:8080/Hyundai/admin/adminLogout.jsp"><li>관리자 로그아웃</li></a>
					<%
						} else {
					%>
					<a href = "http://localhost:8080/Hyundai/admin/adminLogin.jsp"><li>관리자 로그인</li></a>
					<%
						}
					%>
				</ul>
			</nav>
			<header>
				<hr>
				<div id="header2">
					<a href="http://localhost:8080/Hyundai/index.jsp"><img src="http://localhost:8080/Hyundai/images/logo.jpg" width="236.2px"></a>
					<ul id="top_menu">
						<li>회사소개</li>
						<a href="http://localhost:8080/Hyundai/model.jsp"><li>모델</li></a>
						<a href="http://localhost:8080/Hyundai/event.jsp"><li>이벤트</li></a>
						<li>견적조회</li>
					</ul>
				</div>
			</header>
		</div>
</body>
</html>