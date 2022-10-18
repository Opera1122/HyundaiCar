<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
			#beach {
				float: left;
				width:1280px;
				height:900px;
				background-image:url("login image/beach.jpg");
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
				height:420px;
				background-color:#FFFFFF;
				margin:50px 0px 0px 340px;
			}
			#cust_id {
				width: 400px;
				height: 50px;
				margin: 40px 0px 0px 100px;
			}
			#cust_pw {
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
			a {
				text-decoration: none;
			}
		</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="wrapper">
		<section id="beach">
			<div id="title">
				<h1>로그인</h1>
				<p>현대자동차 홈페이지에 오신걸 환영합니다</p>
			</div>
			<div id="loginBackground">
				<form method="post" action="loginProc.jsp">
            		<input type="text" name="cust_id" placeholder="아이디" id="cust_id" class="field"><br>
            		<input type="password" name="cust_pw" placeholder="비밀번호" id="cust_pw" class="field"><br>
            		<input type="checkbox" name="idSave" id="checkBox">&nbsp;아이디 저장<br>
            		<input type="submit" name="login" value="로그인" id="loginButton">
          		</form>
          		<a href="signup.jsp"><div id="signupButton">회원가입</div></a>
			</div>
		</section>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>