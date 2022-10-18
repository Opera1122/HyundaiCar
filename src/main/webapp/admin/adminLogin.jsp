<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
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
			#beach {
				float: left;
				width:1280px;
				height:900px;
				background-image:url("../login image/beach.jpg");
				margin: 20px 0px 0px 0px;
			}
			#title {
				width:1280px;
				height:200px;
				background-color:#D8D8D8;
       	 		background-color: rgba( 255, 255, 255, 0.5 );
				margin:75px 0px 0px 0px;
			}
			#title h1 {
				color:#000000;
				padding: 25px 0px 0px 0px;
				text-align: center;
				font-size: 30pt;
			}
			#title p {
				color:#000000;
				padding: 45px 0px 0px 0px;
				text-align: center;
				font-size: 15pt;
			}
			#loginBackground {
				width:600px;
				height:300px;
				background-color:#FFFFFF;
				margin:50px 0px 0px 340px;
			}
			#admin_id {
				width: 400px;
				height: 50px;
				margin: 40px 0px 0px 100px;
			}
			#admin_pw {
				width: 400px;
				height: 50px;
				margin: 20px 0px 0px 100px;
			}
			#checkBox {
				cursor:pointer;
				width: 25px;
				height: 25px;
				margin: 20px 0px 0px 100px;
			}
			#loginButton {
				border:none;
				cursor:pointer;
				background-color:#5882FA;
				color:white;
				width:400px;
				height:50px;
				margin: 20px 0px 0px 100px;
				font-weight:bold;
			}
			#signupButton {
				background-color:#04B4AE;
				text-align:center;
				color:white;
				width:400px;
				height:35px;
				margin: 20px 0px 0px 100px;
				padding-top: 15px;
				font-size: 10pt;
				font-weight:bold;
			}
			footer {
				width: 1280px;
				height: 100px;
				float:left;
				margin: 0px 0px 0px 0px;
				padding:40px 0px 0px 0px;
		        text-align: center;
		        background-color:#2E2E2E;
		        color: #ffffff;
		        font-size:14pt;
			}
			a {
				text-decoration: none;
			}
		</style>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<div id="wrapper">
		<section id="beach">
			<div id="title">
				<h1>관리자 로그인</h1>
				<p>현대자동차 홈페이지에 오신걸 환영합니다</p>
			</div>
			<div id="loginBackground">
				<form method="post" action="adminLoginProc.jsp">
            		<input type="text" name="admin_id" placeholder="아이디" id="admin_id"><br>
            		<input type="password" name="admin_pw" placeholder="비밀번호" id="admin_pw"><br>
            		<input type="submit" name="login" value="로그인" id="loginButton">
          		</form>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>