
var right = 0;
function regChk(){
	 var id = document.form.id.value;
	 var regx =  /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;;
	 var chk1 = /\d/;
	 var chk2 = /[a-z]/i;
	
	 var email = document.form.email.value;
	 if(email.length==0 || email==null){
	  alert("이메일을 입력하십시오");
	  return false;
	 }
	 if (!regx.test(email)){
	  alert("이메일은 영어, 숫자만 입력가능합니다.");
	  document.form.email1.focus();
	  return false;
	 }
	 
	 var password = document.form.password.value;
	 if(password.length<6 || password==null){
	  alert("비밀번호를 입력하십시오(6글자이상)");
	  return false;
	 }
	 if (chk1.test(password) && chk2.test(password)){
	 }else{
	  alert("비밀번호는 영어, 숫자 조합입니다.");
	  return false;
	 }
	 
	 var name = document.form.name.value;
	 if(name.length==0 || name==null){
	  alert("이름을 입력하십시오");
	  return false;
	 }
	 
	 var num_regx = /^[0-9]*$/;
	 var ph2 = document.form.ph2.value;
	 if(ph2.length==0 || ph2==null){
	  alert("핸드폰번호를 입력하십시오");
	  return false;
	 }
	 var ph3 = document.form.ph3.value;
	 if(ph3.length==0 || ph3==null){
	  alert("핸드폰번호를 입력하십시오");
	  return false;
	 }
	 if (!num_regx.test(ph2) || !num_regx.test(ph3)){
	  alert("핸드폰번호는 숫자만 입력가능합니다");
	  return false;
	 }
	 
	 var address = document.form.address.value;
	 if(address.length==0 || address==null){
	  alert("주소를 입력하십시오");
	  return false; 
	 }
	 document.form.submit();
	}
function passchk(){
	 var password = document.form.password.value;
	 var passwordcheck = document.form.passwordcheck.value;
	 if (passwordcheck.length == 0 || passwordcheck == null) {
	  document.form.chk.value = "비밀번호를 입력하세요";
	  right=0;
	 } else if (password != passwordcheck) {
	  document.form.chk.value = "비밀번호가 다릅니다.";
	  right=0;
	 } else {   
	  document.form.chk.value = "비밀번호가 동일합니다.";
	  right=1;
	 }
	 return;
	}
	
function emailCheck(){
	 var email = document.form.email.value;
	 if(email.length<1 || email==null){
	  alert("중복체크할 이메일을 입력하십시오");
	  return false;
	 }
	 var url = "oversea_emailCheck.jsp?email=" + email;
	 window.open(url, "get", "height = 300, width = 500");
	}