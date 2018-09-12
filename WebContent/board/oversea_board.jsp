<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="oversea_board.BoardDBBean"%>
<%@ page import="oversea_board.BoardDataBean"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>


<%!int pageSize = 10;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>

<%
	String pageNum = request.getParameter("pageNum");

	if (pageNum == null) {
		pageNum = "1";
	}

	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	int count = 0;
	int number = 0;
	List<BoardDataBean> articleList = null;

	BoardDBBean dbPro = BoardDBBean.getInstance();
	count = dbPro.getArticleCount();

	if (count > 0) {
		articleList = dbPro.getArticles(startRow, pageSize);
	}

	number = count - (currentPage - 1) * pageSize;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="/OVERSEA/assets/css/oversea_board.css" rel="stylesheet" type="text/css">

<link	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">


</head>
<body>
<jsp:include page="/user/oversea_after_login_nav.jsp" flush="false" />	
	
	<!-- header -->
	<header class="header">
	<div id="QA">
		<div class="content">고 객 센 터</div>
		<div id="QA_cover"></div>
	</div>
	</header>

	<!-- nav -->
	<nav class="nav">

	<div class="QA_title">Q & A</div>
	<br>
	<br>
	</nav>

	<!-- section -->
	<section class="section">
	<div class="board">
	
		<div class="board_form">
			<!-- <div class="button-7">
				<div class="eff-7"></div>
				<a href="oversea_WriteForm.jsp">글쓰기</a>
			</div>
			 -->
			
			<%
				if (count == 0) {
			%>
			<table class="form">
				<thead>

					<tr>
						<th class="th" id="no">No</th>
						<th class="th" id="title">제목</th>
						<th class="th" id="name">글쓴이</th>
						<th class="th" id="date">작성시간</th>
						<th class="th" id="count">조회수</th>
					</tr>

				</thead>
			</table>
			</td>
			</tr>
			</table>
			<div class="wrap">
     		   <a href="oversea_board_WriteForm.jsp" class="button">글쓰기</a>
        		<!-- <a href="#" class="button2">Awesome Button</a> -->
    		</div>

			<%
				} else {
			%>
			<table class="form">
				<thead>
					<tr>
						<th class="th" id="no">No</th>
						<th class="th" id="title">제목</th>
						<th class="th" id="name">글쓴이</th>
						<th class="th" id="date">작성시간</th>
						<th class="th" id="count">조회수</th>
					</tr>
				</thead>
				<%
					for (int i = 0; i < articleList.size(); i++) {
							BoardDataBean article = articleList.get(i);
				%>

				<tbody>
					<tr>
						<td><%=number--%></td>
						<td>
							<%
								int wid = 0;
										if (article.getRe_level() > 0) {
											wid = 5 * (article.getRe_level());
							%> 
							<!-- <img src="images/level.png" width="<%=wid%>" height="16"> --> 
							<!-- <img src="images/re.png"> --> <%
 	} else {
 %> 
 	<!-- <img src="images/level.png" width="<%=wid%>" height="16">--> 
 <%
 	}
 %> <a href="oversea_content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
								<%=article.getSubject()%>
	</a>
<%
 	if (article.getReadcount() >= 20) {
 %> 
 	<img src="images/hot.gif" border="0" height="16"> <%
 	}
 %>
						</td>
						<td><a href="mailto:<%=article.getEmail()%>"> <%=article.getWriter()%></a></td>
						<td><%=sdf.format(article.getReg_date())%></td>
						<td><%=article.getReadcount()%></td>
					</tr>
				</tbody>
				<%
					}
				%>
			</table>
			</td>
			</tr>
			</table>
			<div class="bottom">
			<div class="wrap">
     		   <a href="oversea_board_WriteForm.jsp" class="button">글쓰기</a>
        		<!-- <a href="#" class="button2">Awesome Button</a> -->
    		</div>

		<%
			}
		%>

		<div class="page">
			<%
				if (count > 0) {
					int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
					int startPage = 1;

					if (currentPage % 10 != 0)
						startPage = (int) (currentPage / 10) * 10 + 1;
					else
						startPage = ((int) (currentPage / 10) - 1) * 10 + 1;

					int pageBlock = 10;
					int endPage = startPage + pageBlock - 1;
					if (endPage > pageCount)
						endPage = pageCount;

					if (startPage > 10) {
			%>
			<a href="oversea_board.jsp?pageNum=<%=startPage - 10%>">[이전]</a>
	<%
		}

			for (int i = startPage; i <= endPage; i++) {
	%>
	<a href="oversea_board.jsp?pageNum=<%=i%>">[<%=i%>]
	</a>
	<%
		}

			if (endPage < pageCount) {
	%>
	<a href="oversea_board.jsp?pageNum=<%=startPage + 10%>">[다음]</a>
	<%
				}
				}
			%>
			
		</div>
			
			
		</div>
		</div>
		
	
		
		
	</div>
	</section>


</body>
</html>