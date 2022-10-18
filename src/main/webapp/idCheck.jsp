<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="Hyundai.CustomerMgr" %>
<jsp:useBean id="custMgr" class="Hyundai.CustomerMgr" />

<%
   request.setCharacterEncoding("euc-kr");
   String cust_id = request.getParameter("cust_id");
   boolean check = custMgr.checkId(cust_id);
%>

<html>
<head>
<title>ID중복체크</title>
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="#FFFFCC">
<br>
<center>
<b><%=cust_id%></b>
<%
  if(check){
     out.println("는 이미 존재한는 ID입니다.<p>");
}else{    
     out.println("는 사용 가능 합니다.<p>");
}
%>
<a href="javascript:this.close();">닫기</a>
</center>
</body>
</html>