<%@ page contentType="text/html;charset=EUC-KR" %>
<%
    session.removeAttribute("adminKey");
%>

<script>
    alert("로그아웃 되었습니다.");
	location.href="../index.jsp";
</script>


