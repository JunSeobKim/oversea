<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Oversea ȸ������</title>

<!--
<script>
function checkPost()
{
	window.open("user/checkPost.jsp","","width=500 height=500 scrollbars=yes");
}
</script>
-->


</head>
<body>
	<jsp:include page="user/nav.jsp" flush="false"></jsp:include>
	
<br><br><br><br><br><br><br>
	<form action="user/oversea_joinProc.jsp" name="form" method="post">
 <table>
  
  <tr>
   <td class="td1">
   	�̸� 
   </td> 
   <td class="td2">
   	<input type="text" size="20" maxlength="10" name="name" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	�̸��� 
   </td> 
   <td>
   	<input type="text" size="20" name="email" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	��й�ȣ 
   </td> 
   <td class="td2">
   	<input type="password" size="30" maxlength="20" name="passwd" required>
   </td>
  </tr>
  
    <tr>
   <td class="td1">
   	��й�ȣ Ȯ�� 
   </td> 
   <td class="td2">
   	<input type="password" size="30" maxlength="20" name="re_passwd" onblur="passchk()" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	�޴���
   </td> 
   <td class="td2">
   	<input type="number" name="ph1" size="4" maxlength="3" required>
     - <input type="number" name="ph2" size="5" maxlength="4" required> - <input type="number" name="ph3" size="5" maxlength="4" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	�������
   </td> 
   <td>
   	<input type="text" size="10" maxlength="8" name="birth" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	������ �ּ� 
   </td> 
   <td class="td2">
   	<input type="text" name="zipcode" size="10" id="sample6_postcode" readonly></input>
   	<input type="button" value="�����ȣüũ" onClick="sample6_execDaumPostcode()"></input>
   	<br>
   	<input type="text" name="addr1" id="sample6_address"></input><br>
   	<input type="text" name="addr2" id="sample6_address2"></input>

   </td>
  </tr>

  <tr>
   <td align="center" colspan="2">
   <hr>
   <br>
    <input type="submit" value="�����ϱ�" onclick="regChk()">&nbsp;
   </td>
  </tr>
 </table>
</form>

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