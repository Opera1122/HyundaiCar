<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Hyundai.*" %>
<jsp:useBean id="modelMgr" class="Hyundai.ModelMgr" scope="session"/>
<%
	if(session.getAttribute("idKey") == null) {
		response.sendRedirect("login.jsp");
	}else{
%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>쏘나타</title>
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
		section {
			margin:50px 0px 0px 0px;
		}
		section h1 {
			text-align:center;
			font-size:30pt;
		}
		section img {
			width:620px;
		}
		form p {
			font-size:15pt;
			font-weight:bold;
		}
		#color {
			margin:0px 240px 0px 0px;
			float:left;
		}
		.selectColor li {
			margin:0px 20px 0px 0px;
			list-style:none;
			float:left;
		}
		.selectOption li {
			margin:0px 20px 20px 0px;
			list-style:none;
			float:left;
		}
		#option {
			float:left;
		}
		.colorImg {
			width:50px;
		}
		.optionImg {
			width:300px;
		}
		#completeButton {
			background-color:#08298A;
			cursor:pointer;
			color:white;
			font-weight:bold;
			font-size:15pt;
			border:none;
			width:200px;
			height:50px;
			margin: 50px 0px 50px 500px;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="wrapper">
		<section>
			<h1>쏘나타</h1>
			<img src="model images/sonata model.jpg">
			<img src="model images/sonata inside.jpg">
			<br><br>
			<p style="font-size:20pt; font-weight:bold;">총 차량 가격 26,780,000</p>
			<br>
			<form method="post" action="sonataInsert.jsp">
				<div id="color">
					<p>색상</p>
					<br>
					<ul class="selectColor">
						<li><img src="model images/color/blue color.png" class="colorImg"><br><input type="radio" name="color" value="파란색">파란색</li>
						<li><img src="model images/color/gray color.png" class="colorImg"><br><input type="radio" name="color" value="회색">회색</li>
						<li><img src="model images/color/red color.png" class="colorImg"><br><input type="radio" name="color" value="빨간색">빨간색</li>
						<li><img src="model images/color/green color.png" class="colorImg"><br><input type="radio" name="color" value="녹색">녹색</li>
						<li><img src="model images/color/black color.png" class="colorImg"><br><input type="radio" name="color" value="검정색">검정색</li>
					</ul>
				</div>
				<div id="option">
					<p>옵션</p>
					<br>
					<ul class="selectOption">
						<li><img src="model images/option/sonata/hyundai smart sense.jpg" class="optionImg"><br><p style="font-weight:bold;"><input type="checkbox" name="option" value="현대 스마트 센스 I">현대 스마트 센스 I</p> 750,000원</li>
						<li><img src="model images/option/sonata/hi-pass system + ECM room mirror.jpg" class="optionImg"><br><p style="font-weight:bold;"><input type="checkbox" name="option_2" value="하이패스 시스템 + ECM 룸미러">하이패스 시스템 + ECM 룸미러</p> 250,000원</li>
						<br>
						<li><img src="model images/option/sonata/panora sunroof.jpg" class="optionImg"><br><p style="font-weight:bold;"><input type="checkbox" name="option_3" value="파노라마 선루프">파노라마 선루프</p> 1,200,000원</li>
					</ul>
				</div>
				<input type="submit" value="내 차 만들기 완료" id="completeButton">
			</form>
		</section>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>
<%}%>