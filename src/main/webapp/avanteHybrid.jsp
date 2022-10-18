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
<title>아반떼 Hybrid</title>
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
			<h1>아반떼 Hybrid</h1>
			<img src="model images/avante hybrid model.jpg">
			<img src="model images/avante hybrid inside.jpg">
			<br><br>
			<p style="font-size:20pt; font-weight:bold;">총 차량 가격 24,990,000</p>
			<br>
			<form method="post" action="avanteHybridInsert.jsp">
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
						<li><img src="model images/option/avante hybrid/convenience2.jpg" class="optionImg"><br><p style="font-weight:bold;"><input type="checkbox" name="option" value="컨비니언스 II">컨비니언스 II</p> 650,000원</li>
						<li><img src="model images/option/avante hybrid/infotainment nav.jpg" class="optionImg"><br><p style="font-weight:bold;"><input type="checkbox" name="option_2" value="인포테인먼트 네비">인포테인먼트 네비</p> 700,000원</li>
						<br>
						<li><img src="model images/option/avante hybrid/hyundai smart sense3.jpg" class="optionImg"><br><p style="font-weight:bold;"><input type="checkbox" name="option_3" value="현대 스마트센스 III">현대 스마트센스 III</p> 700,000원</li>
						<li><img src="model images/option/avante hybrid/17inch alloy wheel & tire2.jpg" class="optionImg"><br><p style="font-weight:bold;"><input type="checkbox" name="option_4" value="17인치 알로이 휠&타이어 II">17인치 알로이 휠&타이어 II</p> 300,000원</li>
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