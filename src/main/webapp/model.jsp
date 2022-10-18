<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모델</title>
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
		#carLineUpBackground {
			margin: 35px 0px 0px 0px;
			float: left;
			background-color: #ffffff;
			width: 1280px;
			height: 800px;
		}
		.car {
			margin: 50px 120px 10px 120px;
			float: left;
		}
		.car img {
			width: 400px;
		}
		.car p {
			font-size: 12pt;
			margin-top: 5px;
			text-align: center;
		}
		.titleP {
			font-weight:bold;
		}
	</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="wrapper">
		<div id="carLineUpBackground">
			<section class="car">
				<a href="avante.jsp"><img src="images/avante.jpg"></a>
				<p class="titleP">아반떼</p>
				<p>1,866만원 ~</p>
				<p>연비 10.3 ~ 15.4 km/ℓ&nbsp;&nbsp;&nbsp;&nbsp;연료 가솔린, LPG</p>
			</section>
			<section class="car">
				<a href="avanteHybrid.jsp"><img src="images/avante hybrid.jpg"></a>
				<p class="titleP">아반떼 Hybrid</p>
				<p>2,346만원 ~</p>
				<p>연비 19.5 ~ 21.1 km/ℓ&nbsp;&nbsp;&nbsp;&nbsp;연료 가솔린 + 전기</p>
			</section>
			<section class="car">
				<a href="sonata.jsp"><img src="images/sonata.jpg"></a>
				<p class="titleP">쏘나타</p>
				<p>2,547만원 ~</p>
				<p>연비 9.9 ~ 13.8 km/ℓ&nbsp;&nbsp;&nbsp;&nbsp;연료 가솔린, LPG</p>
			</section>
			<section class="car">
				<a href="sonataHybrid.jsp"><img src="images/sonata hybrid.jpg"></a>
				<p class="titleP">쏘나타 Hybrid</p>
				<p>2,881만원 ~</p>
				<p>연비 17.6 ~ 20.1 km/ℓ&nbsp;&nbsp;&nbsp;&nbsp;연료 가솔린 + 전기</p>
			</section>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>