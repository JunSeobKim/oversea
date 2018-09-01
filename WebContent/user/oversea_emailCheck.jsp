<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="oversea_member.oversea_memberDao" />
<%
	int rst = 0;
	String email = (String) request.getParameter("email");
	rst = dao.emailCheck(email);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 중복 확인</title>
</head>
<body>
	<%
		if (rst == 1) {
	%>
	<center>
		<br>	<br>	<br>	<br>
		<br> 이미 존재하는 이메일입니다. <br>
		<br>	<br>
		<button onclick="window.close()">확인</button>
	</center>
	<!-- 아이디가 이미 존재할때 이미지 -->
	<%
		} else {
	%>
	<center>
		<br>	<br>	<br>	<br>
		<br> 입력하신 <span><%=email%></span>는 사용 가능한 이메일입니다. <br>
		<br>
		<br>
		<button onClick="window.close()">확인</button>
	</center>
	<!-- 아이디가 존재하지 않을 때 이미지 -->
	<%
		}
	%>
</body>
</html>
