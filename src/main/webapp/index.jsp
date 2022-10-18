<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>현대자동차</title>
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
			#poter2SpecialVehicle {
				float: left;
				margin: 20px 0px 0px 0px;
			}
			#menusBackground {
				width:1280px;
				height:360px;
				background-color:#A4A4A4;
				margin: -4px 0px 0px 0px;
				padding:25px 0px 0px 0px;
				float: left;
			}
			.menus {
				width:263px;
				height: 300px;
				background-color:#BDBDBD;
				margin:0px 0px 0px 25px;
				padding:25px 0px 0px 25px;
				float:left;
			}
			.menus h1 {
				color:#0080FF;
			}
			.menusUl li {
				list-style:none;
				margin: 15px 0px 0px 0px;
			}
			#carLineUpBackground {
				margin: 35px 0px 0px 0px;
				float: left;
				background-color: #ffffff;
				width: 1280px;
				height: 330px;
			}
			#carLineUpBackground h1 {
				padding: 25px 0px 0px 0px;
				text-align: center;
				font-size: 30pt;
			}
			.car {
				margin: 50px 0px 0px 50px;
				float: left;
			}
			.car img {
				width: 255px;
			}
			.car p {
				font-size: 12pt;
				margin-top: 5px;
				text-align: center;
			}
			#eventBackground {
				margin: 35px 0px 0px 0px;
				float: left;
				background-color: #E6E6E6;
				width: 1280px;
				height: 643px;
			}
			#eventBackground h1 {
				padding: 25px 0px 0px 0px;
				text-align: center;
				font-size: 30pt;
			}
			.event {
				margin: 50px 0px 0px 150px;
				float: left;
			}
			.event img {
				width: 400px;
			}
			.event p {
				margin-top: 10px;
				text-align: center;
			}
			.pTop {
				font-size:12pt;
			}
			.pMid {
				font-size:16pt;
				font-weight:bold;
			}
			.pBottom {
				font-size:11pt;
			}
			.readMore {
				float:left;
				margin:0px 0px 0px 140px;
				width:110px;
				height:40px;
				background-color:#5882FA;
				padding: 2px;
			}
			.readMore p {
				color:#ffffff;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
		<div id="wrapper">
			<section id="poter2SpecialVehicle">
				<img src="images/porter2 special vehicle.jpg" width="1280px">
			</section>
			<div id="menusBackground">
				<section class="menus">
					<h1>블루 멤버스</h1>
					<br>
					<hr>
					<br>
					<ul class="menusUl">
						<li>블루 멤버스 소개</li>
						<li>Hyundai Mobility카드</li>
						<li>차량관리 안내</li>
						<li>블루멤버스 포인트</li>
					</ul>
				</section>
				<section class="menus">
					<h1>블루 링크</h1>
					<br>
					<hr>
					<br>
					<ul class="menusUl">
						<li>블루 링크 소개</li>
						<li>이용안내</li>
						<li>서비스</li>
						<li>고객지원</li>	
					</ul>
				</section>
				<section class="menus">
					<h1>현대 디지털 키</h1>
					<br>
					<hr>
					<br>
					<ul class="menusUl">
						<li>현대 디지털 키 소개</li>
						<li>APP 설치 및 등록 안내</li>
						<li>APP 사용방법 안내</li>
						<li>NFC 카드 키</li>
					</ul>
				</section>
				<section class="menus">
					<h1>차량관리 서비스</h1>
					<br>
					<hr>
					<br>
					<ul class="menusUl">
						<li>사양 조회하기</li>
						<li>보증수리 안내</li>
						<li>보증연장 상품</li>
						<li>스마트기기 연계서비스</li>
					</ul>
				</section>
			</div>
			<div id="carLineUpBackground">
				<h1>차종 라인업</h1>
				<section class="car">
					<a href="avante.jsp"><img src="images/avante.jpg"></a>
					<p>아반떼</p>
					<p>1,866만원 ~</p>
				</section>
				<section class="car">
					<a href="sonataHybrid.jsp"><img src="images/sonata hybrid.jpg"></a>
					<p>소나타 Hybrid</p>
					<p>2,881만원 ~</p>
				</section>
				<section class="car">
					<a href="sonata.jsp"><img src="images/sonata.jpg"></a>
					<p>쏘나타</p>
					<p>2,547만원 ~</p>
				</section>
				<section class="car">
					<a href="avanteHybrid.jsp"><img src="images/avante hybrid.jpg"></a>
					<p>아반떼 Hybrid</p>
					<p>2,346만원 ~</p>
				</section>
			</div>
			<div id="eventBackground">
				<h1>이벤트</h1>
				<section class="event">
					<img src="images/spring1.jpg">
					<p class="pTop">따뜻한 봄엔 블루멤버스와 나가보아요.</p>
					<p class="pMid">푸르른 봄 현대자동차 블루멤버스와 함께<br>나와 봄 이벤트</p>
					<br>
					<p class="pBottom">2022-04-01 ~ 2022-06-10</p>
					<br>
					<div class="readMore">
						<p>자세히 보기</p>
					</div>
				</section>
				<section class="event">
					<img src="images/spring2.jpg">
					<p class="pTop">Hyundai Mobility카드만의 강력한 구매 프로그램</p>
					<p class="pMid">4월 신차 구매 혜택</p>
					<br>
					<p class="pBottom">2022-04-01 ~ 2022-04-30</p>
					<br>
					<div class="readMore">
						<p>자세히 보기</p>
					</div>
				</section>
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>