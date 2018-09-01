<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dao" class="oversea_member.oversea_memberDao"/>
<jsp:useBean id="oversea" class="oversea_member.oversea_member"/>
<jsp:setProperty property="*" name="oversea"/>

<%
 int rst = 0;
 rst = dao.insertoversea_member(oversea);
 if(rst>0){
%>
<script type="text/javascript">
alert("환영합니다.");
location.href="../oversea_loginform.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
alert("회원가입에 실패하였습니다.");
history.go(-1);
</script>
<%} %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>