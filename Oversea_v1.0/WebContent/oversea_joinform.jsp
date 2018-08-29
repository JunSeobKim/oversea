<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Oversea 회원가입</title>

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
   	이름 
   </td> 
   <td class="td2">
   	<input type="text" size="20" maxlength="10" name="name" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	이메일 
   </td> 
   <td>
   	<input type="text" size="20" name="email" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	비밀번호 
   </td> 
   <td class="td2">
   	<input type="password" size="30" maxlength="20" name="passwd" required>
   </td>
  </tr>
  
    <tr>
   <td class="td1">
   	비밀번호 확인 
   </td> 
   <td class="td2">
   	<input type="password" size="30" maxlength="20" name="re_passwd" onblur="passchk()" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	휴대폰
   </td> 
   <td class="td2">
   	<input type="number" name="ph1" size="4" maxlength="3" required>
     - <input type="number" name="ph2" size="5" maxlength="4" required> - <input type="number" name="ph3" size="5" maxlength="4" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	생년월일
   </td> 
   <td>
   	<input type="text" size="10" maxlength="8" name="birth" required>
   </td>
  </tr>
  
  <tr>
   <td class="td1">
   	거주지 주소 
   </td> 
   <td class="td2">
   	<input type="text" name="zipcode" size="10" id="sample6_postcode" readonly></input>
   	<input type="button" value="우편번호체크" onClick="sample6_execDaumPostcode()"></input>
   	<br>
   	<input type="text" name="addr1" id="sample6_address"></input><br>
   	<input type="text" name="addr2" id="sample6_address2"></input>

   </td>
  </tr>

  <tr>
   <td align="center" colspan="2">
   <hr>
   <br>
    <input type="submit" value="가입하기" onclick="regChk()">&nbsp;
   </td>
  </tr>
 </table>
</form>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>

</body>
</html>