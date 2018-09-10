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
						<a href="#"><img src="assets/images/ibkbank.png" alt="IBK�������"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/wooribank.png" alt="�츮����"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/kbbank.png" alt="KB��������"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/shinhanbank.png" alt="��������"></a>
					</div>
				</li>
				<li class="">
					<div>
						<a href="#"><img src="assets/images/nhbank.png" alt="NH��������"></a>
					</div>
				</li>
			</ul>
		</div>
		
		<div id="info_table">
		    <table class="table table-striped">
		    	<thead>
		    		<tr>
		    			<th colspan="2">��ȭ</th>
		    			<th>���� �� ��</th>
		    			<th>��������</th>
		    			<th>���� �� ��</th>
		    			<th>��������</th>
		    			<th>�Ÿű�����</th>
		    		</tr>
		    	</thead>
		    	<tbody>
		    		<tr>
		    			<td img src="#" alt="�߱�"></td>
		    			<td>�߱�</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="�Ϻ�"></td>
		    			<td>�Ϻ�</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="�̱�"></td>
		    			<td>�̱�</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>#######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="��������"></td>
		    			<td>��������</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="ȫ��"></td>
		    			<td>ȫ��</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>####</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="�븸"></td>
		    			<td>�븸</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>####</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="�̰���"></td>
		    			<td>�̰���</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="�±�"></td>
		    			<td>�±�</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="�ʸ���"></td>
		    			<td>�ʸ���</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>###.##</td>
		    			<td>#.##%</td>
		    			<td>######</td>
		    		</tr>
		    		<tr>
		    			<td img src="#" alt="��Ʈ��"></td>
		    			<td>��Ʈ��</td>
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