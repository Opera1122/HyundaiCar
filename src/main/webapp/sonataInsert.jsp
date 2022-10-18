<%@ page contentType="text/html;charset=utf-8"%>

<% 
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="modelMgr" class="Hyundai.ModelMgr" />
<jsp:useBean id="regBean" class="com.myweb.model.ModelDTO" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = modelMgr.SonataInsert(regBean);
%>

<html>
<head>
<title>소나타 내차만들기</title>
<html>
<body bgcolor="#FFFFCC">
<br><br>
<center>
<%
if(flag){
	  out.println("<b>견적 작성이 완료되었습니다.</b><p>");
	  out.println("<a href=index.jsp>홈으로 돌아가기</a>");
	}else{
		
		out.println( );
		
	  out.println("<b>다시 작성하여 주십시오.</b><p>");
	  out.println("<a href=signup.jsp>다시 작성</a>");
	}
%>
</center>
</body>
</html>
