<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>로그인 에러</title>
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
</style>
</head>
<body bgcolor="#FFFFCC">
<br><br><br>
	<jsp:include page="../header.jsp"/>
	<div id="wrapper">
		<center>
			<b>로그인에 실패하셨습니다.<p>
			아이디 및 비밀번호를 다시 확인하시기 바랍니다.<p></b>
			<input type="button" value="다시쓰기" onClick="history.back()"> 
		</center>
	</div>
	<jsp:include page="../footer.jsp"/>

</body>
</html>