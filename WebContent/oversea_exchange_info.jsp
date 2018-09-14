<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/oversea_exchange_info.css">

<!-- END: Styles -->

</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="user/oversea_after_login_nav.jsp" flush="false"></jsp:include>

	<div class="all_content">
		<div id="left_menu">
			<ul class="menulist">
				<li class="on">
					<div class="banks_first">
						<a href="#"><img src="assets/images/ibkbank.png" alt="IBK기업은행"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/wooribank.png" alt="우리은행"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/kbbank.png" alt="KB국민은행"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/shinhanbank.png" alt="신한은행"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/nhbank.png" alt="NH농협은행"></a>
					</div>
				</li>
			</ul>
		</div>
		
		<div id="info_table">
		    <table class="table table-striped">
		    	<thead>
		    		<tr>
		    			<th colspan="2">외화</th>
		    			<th>현찰 살 때</th>
		    			<th>수수료율</th>
		    			<th>현찰 팔 때</th>
		    			<th>수수료율</th>
		    			<th>매매기준율</th>
		    		</tr>
		    	</thead>
		    	<tbody>
		    		<tr>
		    			<td img src="#" alt="중국"></td>
		    			<td>중국</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="일본"></td>
		    			<td>일본</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="미국"></td>
		    			<td>미국</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>#######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="유럽연합"></td>
		    			<td>유럽연합</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="홍콩"></td>
		    			<td>홍콩</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>####</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="대만"></td>
		    			<td>대만</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>####</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="싱가폴"></td>
		    			<td>싱가폴</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="태국"></td>
		    			<td>태국</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="필리핀"></td>
		    			<td>필리핀</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="베트남"></td>
		    			<td>베트남</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    	</tbody>
		    </table>
		</div>
	</div>
</body>
</html>