<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import ="java.util.*,Hyundai.*" %> 
<%
 request.setCharacterEncoding("UTF-8");
 %>
<jsp:useBean id="regBean" class="com.myweb.user.UserDTO"/>
<jsp:setProperty name="regBean" property="*" />
<html>
<head>
<title>회원가입 확인</title>
<style>
	body {
				background-color:white;
			}
	.button {
				background-color:#08298A;
				cursor:pointer;
				color:white;
				font-weight:bold;
				font-size:15pt;
				border:none;
				width:150px;
				height:50px;
				margin: 20px 10px 20px 10px;
			}
	#wrapper {
		width:1280px;
		margin:0 auto;
	}
</style>
<script charset="UTF-8" language="JavaScript" src="script.js"></script>
</head>
<br>

	<%@ include file="header.jsp" %>
	<div id = "wrapper">
		<table width="75%" align="center" bgcolor="#FFFF99">
			<table width="95%" align="center" bgcolor="#FFFF99" border="1">
				<form name="signForm" method="post" action="custInsert.jsp">
					<tr align="center" bgcolor="#996600"> 
						<td colspan="3">
							<jsp:getProperty name="regBean" property="cust_name" />회원님이 작성하신 내용입니다. 확인해 주세요</b>
						</td>
					</tr>
					 
					<tr> 
						<td>아이디</td>
						<td><input type="text" name="cust_id" value="<jsp:getProperty name="regBean" property="cust_id" />"></td>
					</tr>
					
					<tr> 
						<td>패스워드</td>
						<td><input type="text" name="cust_pw" value="<jsp:getProperty name="regBean" property="cust_pw" />"></td>
					</tr>
	
					<tr> 
						<td>이름</td>
						<td><input type="text" name="cust_name" value="<jsp:getProperty name="regBean" property="cust_name" />"></td>
					</tr>
							
					<tr> 
						<td>이메일</td>
						<td><input type="text" name="cust_email"  size="30" value="<jsp:getProperty name="regBean" property="cust_email" />"></td>
					</tr>
							
					<tr> 
						<td>전화번호</td>
						<td><input type="text" name="cust_tel" value="<jsp:getProperty name="regBean" property="cust_tel" />"></td>
					</tr>
							
					<tr> 
						<td>주소</td>
						<td><input type="text" name="cust_address" size="50" value="<jsp:getProperty name="regBean" property="cust_address" />"></td>
					</tr>
							
					<tr> 
						<td>성별</td>
						<td><input type="text" name="cust_gender" value="<jsp:getProperty name="regBean" property="cust_gender" />"></td>
					</tr>
					<input type="submit" value="가입 확인" class="button" />
				</form>
				<form method="post" action="signup.jsp">
	            	<input type="submit" value="뒤로 가기" class="button" />
	            </form>
			</table>
		</table>
		
		<%@ include file="footer.jsp" %>
			
		
		</div>
	</body>
</html>
