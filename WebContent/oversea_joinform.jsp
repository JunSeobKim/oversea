<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Oversea 회원가입</title>
<jsp:useBean id="dao" class="oversea_member.oversea_memberDao"/> 


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

<script language="javascript" type="text/javascript"
	src="assets/js/oversea_join.js"></script>

<!--
<script>
function checkPost()
{
	window.open("user/checkPost.jsp","","width=500 height=500 scrollbars=yes");
}
</script>
-->


</head>
<body
	style="background-image: url('assets/images/background.jpg'); background-size: 100%;">
	<jsp:include page="user/oversea_after_login_nav.jsp" flush="false"></jsp:include>
	<br><br><br><br><br><br><br><br><br>
	<form action="user/oversea_joinProc.jsp" name="form" method="post">
		<center>
			<div class="col-3">
				<input type="text" maxlength="10" name="name" class="form-control" placeholder="이름" required />
			</div>
			<br>
			<div class="input-group mb-3 col-3">
				<input type="text" class="form-control" name="email" placeholder="이메일" required>
				<div class="input-group-append" />
					<button onclick="emailCheck()" class="btn btn-success">중복확인</button>
				</div>
			</div>
			<br>
			<div class="col-3" style="text-align: left; color: #ffffff">
				<input type="password" maxlength="20" name="passwd" class="form-control" placeholder="비밀번호" required />
			</div>
			<br>
			<div class="col-3" style="text-align: left; color: #ffffff">
				<input type="password" maxlength="20" name="re_passwd"	onblur="passchk()" class="form-control" placeholder="비밀번호 확인" required />
			</div>
			<br>
			<div class="form-row col-3" style="text-align: left; color: #ffffff">
				<div  style="margin-right:1%; width:32.333%">
					휴대폰<input type="number" name="ph1" maxlength="3"
						class="form-control" required>
				</div>
				<div style="margin-right:1%; width:33.333%">
					&nbsp;<input type="number" name="ph2" maxlength="4"
						class="form-control" required />
				</div>
				<div  style="margin:0; width:32.333%">
					&nbsp;<input type="number" name="ph3" maxlength="4"
						class="form-control" required />
				</div>
			</div>
			<br>
			<div class="col-3">
				<input type="text" maxlength="8" name="birth" class="form-control" placeholder="생년월일" required>
			</div>
			<br>
			<div class="form-row col-3">
				<div class="col-4">
					<input type="text" name="zipcode" size="10" id="sample6_postcode" class="form-control" placeholder="우편번호" readonly />
				</div>
				<div class="col-1">
					<button type="button" class="btn btn-success"
						onClick="sample6_execDaumPostcode()">우편번호찾기</button>
				</div>
			</div>
			<br>
			<div class="col-3">
				<input type="text" name="addr1" id="sample6_address" class="form-control" placeholder="주소" readonly></input>
			</div>
			<br>
			<div class="col-3">
				<input type="text" name="addr2" id="sample6_address2"	class="form-control"  placeholder="상세주소" ></input>
			</div>
			<br>
			<div class="col-3">
				<input type="submit" value="가입하기" onclick="regChk()"
					class="btn btn-primary btn-lg btn-block" />
			</div>
	</form>

	</center>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
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
							if (data.userSelectedType === 'R') {
								//법정동명이 있을 경우 추가한다.
								if (data.bname !== '') {
									extraAddr += data.bname;
								}
								// 건물명이 있을 경우 추가한다.
								if (data.buildingName !== '') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('
										+ extraAddr + ')' : '');
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