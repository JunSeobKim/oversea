<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="user/nav.jsp" flush="false"></jsp:include>
	
<br><br><br><br><br><br><br>
	<form action="CPPE_signupProc.jsp" name="form" method="post">
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
   	<select name="ph1">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="016">016</option>
       <option value="017">017</option>
       <option value="019">019</option>
     </select>
     - <input type="text" name="ph2" size="5" maxlength="4" required> - <input type="text" name="ph3" size="5" maxlength="4" required>
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
   	<input type="text" name="addr" size="70" maxlength="30" required>

   </td>
  </tr>

  <tr>
   <td align="center" colspan="2">
   <hr>
   <br>
    <input type="submit" value="가입하기" onclick="regChk()">&nbsp;
    <input type="button" value="취소" onclick="regCancel()">
   </td>
  </tr>
 </table>
</form>

</body>
</html>