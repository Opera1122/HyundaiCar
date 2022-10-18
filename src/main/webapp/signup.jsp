<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
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
				height:1200px;
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
			#signupBackground {
				width:800px;
				height:820px;
				background-color:#FFFFFF;
				margin:40px 0px 0px 240px;
				padding: 30px 0px 0px 0px;
			}
			form {
				margin: 0px 0px 0px 0px;
				text-align:center;
			}
			form p {
				font-size:14pt;
				font-weight:bold;
			}
			.field {
				width: 200px;
				height: 30px;
				margin: 20px 0px 20px 0px;
			}
			.field2 {
				width: 400px;
				height: 30px;
				margin: 20px 0px 20px 0px;
			}
			#radio {
				width: 20px;
				height: 20px;
				margin: 20px 0px 20px 0px;
			}
			.button {
				background-color:#08298A;
				cursor:pointer;
				color:white;
				font-weight:bold;
				font-size:15pt;
				border:none;
				width:150px;
				height:50px;
				margin: 20px 10px 20px 10px;
			}
		</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="wrapper">
		<section id="beach">
			<div id="title">
				<h1>회원가입</h1>
				<p>현대자동차 홈페이지에 오신걸 환영합니다</p>
			</div>
			<div id="signupBackground">
				<form method="post" action="signupcheck.jsp">
            		<p>아이디</p> <input type="text" name="cust_id" class="field"><br>
            		<p>비밀번호</p> <input type="password" name="cust_pw" class="field"><br>
            		<p>이름</p> <input type="text" name="cust_name" class="field"><br>
            		<p>성별</p> <input type="radio" name="cust_gender" value="남" id="radio"/>&nbsp;남자&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="cust_gender" value="여" id="radio" />&nbsp;여자<br>
            		<p>이메일</p> <input type="text" name="cust_email" class="field2">
                  	<br>
            		<p>주소</p> <input type="text" name="cust_address" class="field2"><br>
            		<p>휴대전화</p> <input type="tel" name="cust_tel" class="field"><br>
            		<input type="submit" value="가입 확인" class="button" /><a href="signupcheck.jsp"></a>
          		</form>
			</div>
		</section>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>