<%@page import="com.myweb.user.*"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="custMgr" class="Hyundai.CustomerMgr" />
<%
	String cust_id = request.getParameter("cust_id");
	String cust_pw = request.getParameter("cust_pw");

	
	UserDTO vo = new UserDTO();
	vo.setCust_id(cust_id);
	vo.setCust_pw(cust_pw);
	UserDAO userDAO = new UserDAO();
	UserDTO user = userDAO.getUser(vo);

   if(user != null){
	  session.setAttribute("idKey",cust_id);
	  response.sendRedirect("index.jsp");
	  
   }else{
      response.sendRedirect("logError.jsp");
   }
%>

