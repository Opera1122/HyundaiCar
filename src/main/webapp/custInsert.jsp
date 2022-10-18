<%@ page contentType="text/html;charset=utf-8"%>

<% 
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="custMgr" class="Hyundai.CustomerMgr" />
<jsp:useBean id="regBean" class="com.myweb.user.UserDTO" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = custMgr.CustomerInsert(regBean);
%>

<html>
<head>
<title>회원가입 확인</title>
<html>
<body bgcolor="#FFFFCC">
<br><br>
<center>
<%
if(flag){
	  out.println("<b>회원가입을 축하 드립니다.</b><p>");
	  out.println("<a href=index.jsp>로그인</a>");
	}else{
		
		out.println( );
		
	  out.println("<b>다시 입력하여 주십시오.</b><p>");
	  out.println("<a href=signup.jsp>다시 가입</a>");
	}
%>
</center>
</body>
</html>
