<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Oversea ȸ������</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!--
<script>
function checkPost()
{
	window.open("user/checkPost.jsp","","width=500 height=500 scrollbars=yes");
}
</script>
-->


</head>
<body style="background-image:url('assets/images/join_bg.png'); background-size:100%; ">
	<jsp:include page="user/nav.jsp" flush="false"></jsp:include>
<br><br><br><br><br><br><br>
<form action="user/oversea_joinProc.jsp" name="form" method="post">
<center>
		<div class="col-3" style="text-align:left;color:#ffffff">
                     �̸�<input type="text" maxlength="10" name="name" class="form-control" required>
   	 	</div>
   	 	
	<br>
	
		<div class="col-3" style="text-align:left;color:#ffffff">
   		�̸��� <input type="text" name="email" class="form-control" required>
		</div>
	
	<br>
	
		<div class="col-3" style="text-align:left;color:#ffffff">
   		��й�ȣ <input type="password" maxlength="20" name="passwd" class="form-control" required>
		</div>
	
	<br>
	
		<div class="col-3" style="text-align:left;color:#ffffff">
		��й�ȣ Ȯ�� <input type="password" maxlength="20" name="re_passwd" onblur="passchk()" class="form-control" required>
		</div>
		
	<br>

   	
   	<div class="form-row col-3" style="text-align:left;color:#ffffff">
   		<div class="col">
   	�޴���<input type="number" name="ph1" maxlength="3" class="form-control" required>
   		</div>
   		<div class="col">
   	&nbsp;<input type="number" name="ph2" maxlength="4" class="form-control" required>
   		</div>
   		<div class="col">
   	&nbsp;<input type="number" name="ph3" maxlength="4" class="form-control" required>
   		</div>
   	</div>

    <br>

		<div class="col-3" style="text-align:left;color:#ffffff">
   		�������<input type="text" maxlength="8" name="birth" class="form-control" required>
   		</div>
   	
   	<br>

	<div class="form-row col-3" style="text-align:left;color:#ffffff">
		<div class="col-4">
   		�ּ�<input type="text" name="zipcode" size="10" id="sample6_postcode" class="form-control" readonly></input>
   		</div>
   		<div class="col-1">
   		��<button type="button" class="btn btn-success" onClick="sample6_execDaumPostcode()">�����ȣã��</button>
   		</div>
   	</div>
   	
   	<br>
   	
   		<div class="col-3">
   		<input type="text" name="addr1" id="sample6_address" class="form-control" readonly></input>
   		</div>   		
   		<br>
   		<div class="col-3">
   		<input type="text" name="addr2" id="sample6_address2" class="form-control"></input>
   		</div>

   <br>
    <div class="col-3">
    	<button type="button" onclick="regChk()" class="btn btn-primary btn-lg btn-block">�����ϱ�</button>
	</div>
</form>
</center>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullAddr = ''; // ���� �ּ� ����
                var extraAddr = ''; // ������ �ּ� ����

                // ����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                    fullAddr = data.roadAddress;

                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                    fullAddr = data.jibunAddress;
                }

                // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.
                if(data.userSelectedType === 'R'){
                    //���������� ���� ��� �߰��Ѵ�.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // �ǹ����� ���� ��� �߰��Ѵ�.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample6_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
                document.getElementById('sample6_address').value = fullAddr;

                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>

</body>
</html>