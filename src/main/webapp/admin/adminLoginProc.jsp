<%@page import="com.myweb.admin.*"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="adMgr" class="Hyundai.AdminMgr" />
<%
	String admin_id = request.getParameter("admin_id");
	String admin_pw = request.getParameter("admin_pw");
	
	AdminDTO ad = new AdminDTO();
	ad.setAdmin_id(admin_id);
	ad.setAdmin_pw(admin_pw);
	AdminDAO adminDAO = new AdminDAO();
	AdminDTO admin = adminDAO.getAdmin(ad);

   if(admin != null){
	  session.setAttribute("adminKey", admin_id);
	  response.sendRedirect("../index.jsp");
   }else{
      response.sendRedirect("adminError.jsp");
   }
%>