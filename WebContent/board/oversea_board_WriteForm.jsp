<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<html>
<html>
<head>
<title>게시판</title>

<script type="text/javascript" src="script.js"></script>

<link href="/assets/css/oversea_board.css" rel="stylesheet"
	type="text/css">




</head>

<body>


	<jsp:include page="/user/oversea_after_login_nav.jsp" flush="false" />
	<%
		int num = 0, ref = 1, re_step = 0, re_level = 0;
		String strV = "";
		try {
			if (request.getParameter("num") != null) {
				num = Integer.parseInt(request.getParameter("num"));
				ref = Integer.parseInt(request.getParameter("ref"));
				re_step = Integer.parseInt(request.getParameter("re_step"));
				re_level = Integer.parseInt(request.getParameter("re_level"));
			}
	%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<p>글쓰기</p>
	<form method="post" name="writeform"
		action="oversea_board_WritePro.jsp" onsubmit="return writeSave()">
		<input type="hidden" name="num" value="<%=num%>"> <input
			type="hidden" name="ref" value="<%=ref%>"> <input
			type="hidden" name="re_step" value="<%=re_step%>"> <input
			type="hidden" name="re_level" value="<%=re_level%>">

		<table>
			<tr>
				<td align="right" colspan="2"><a href="oversea_board.jsp">
						글목록</a></td>
			</tr>
			<tr>
				<td width="70" align="center">이 름</td>
				<td width="330" align="left"><input type="text" size="10"
					maxlength="10" name="writer" style="ime-mode: active;"></td>
				<!--active:한글-->
			</tr>
			<tr>
				<td width="70" align="center">제 목</td>
				<td width="330" align="left">
					<%
						if (request.getParameter("num") == null)
								strV = "";
							else
								strV = "┖ [답 변] ";
					%> <input type="text" size="40" maxlength="50" name="subject"
					value="<%=strV%>" style="ime-mode: active;">
				</td>
			</tr>
			<tr>
				<td width="70" align="center">Email</td>
				<td width="330" align="left"><input type="text" size="40"
					maxlength="30" name="email" style="ime-mode: inactive;"></td>
				<!--inactive:영문-->
			</tr>
			<tr>
				<td width="70" align="center">내 용</td>
				<td width="330" align="left"><textarea name="content" rows="13"
						cols="40" style="ime-mode: active;"></textarea></td>
			</tr>
			<tr>
				<td width="70" align="center">비밀번호</td>
				<td width="330" align="left"><input type="password" size="8"
					maxlength="12" name="passwd" style="ime-mode: inactive;"></td>
			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" value="글쓰기">
					<input type="reset" value="다시작성"> <input type="button"
					value="목록보기" OnClick="window.location='oversea_board.jsp'">
				</td>
			</tr>
		</table>
		<%
			} catch (Exception e) {
			}
		%>
	</form>
</body>
</html>