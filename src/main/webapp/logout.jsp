<%@page contentType="text/html; charset=EUC-KR"%>
<%
	// 1. �������� ����� ���� ��ü�� ���� �����Ѵ�.
	session.invalidate();
	// 2. ���� ���� ��, ���� ȭ������ �̵��Ѵ�.
	response.sendRedirect("index.jsp");
%>