<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style>
		label {
			width: 160px;
			display: inline-block;
			float: left;
		}
		#button {
			text-align: center;
		}
	</style>
	<script>
		function check_ok(){
			/* if(document.frm.name.value.length == 0){
				alert("이름을 작성해주세요");
				document.frm.name.focus();
				return false;
			}
			
			if(document.frm.pid1.value.length != 6){
				alert("주민번호 6글자를 작성해주세요");
				document.frm.pid1.focus();
				return false;
			}
			
			if(document.frm.pid2.value.length != 7){
				alert("주민번호 7글자를 작성해주세요");
				document.frm.pid1.focus();
				return false;
			}
			
			if(document.frm.id.value.length < 4){
				alert("아이디는 4글자 이상 작성해주세요");
				document.frm.id.focus();
				return false;
			}
			
			if(document.frm.pwd.value.length == 0){
				alert("패스워드를 작성해주세요");
				document.frm.pwd.focus();
				return false;
			}
			
			if(document.frm.pwd.value != document.frm.pwdcheck.value){
				alert("패스워드가 일치하지 않습니다");
				document.frm.pwdcheck.focus();
				return false;
			} */
			
			if($("#name").val() == ""){
				alert("이름을 입력해주세요");
				$("#name").focus();
				return false;
			}
			
			if($("#pid1").val().length != 6){
				alert("주민번호 6글자를 작성해주세요");
				$("#pid1").focus();
				return false;
			}
			
			if($("#pid2").val().length != 7){
				alert("주민번호 7글자를 작성해주세요");
				$("#pid2").focus();
				return false;
			}
			
			if($("#id").val().length < 4){
				alert("아이디는 4글자 이상 작성해주세요");
				$("#id").focus();
				return false;
			}
			
			if($("#pwd").val().length == 0){
				alert("패스워드를 작성해주세요");
				$("#pwd").focus();
				return false;
			}
			
			if($("#pwd").val() != $("#pwdcheck").val()){
				alert("패스워드가 일치하지 않습니다");
				$("#pwdcheck").focus();
				return false;
			}
		}
	</script>
</head>
<body>
	<form onsubmit="return check_ok()" name="frm" method="get" action="MemberServlet">
		<label for="name">이름	</label>
		<input type="text" id="name" name="name" value="성윤정"><br>
		
		<label for="pid1">주민등록번호	</label>
		<input type="text" name="pid1" id="pid1" value="890719">
		-
		<input type="password" name="pid2" id="pid2" value="1111111"><br>
		
		<label for="id">아이디	</label>
		<input type="text" name="id" id="id" value="pinksung"><br>
		
		<label for="pwd">비밀번호	</label>
		<input type="password" name="pwd" id="pwd" value="abcd"><br>
		<label for="pwdcheck">비밀번호 확인	</label>
		<input type="password" name="pwdcheck" id="pwdcheck" value="abcd"><br>
		
		<label for="email">이메일 </label>
	    <input type="text" name="email" value="pinksung"> @ <input type="text" name="email_dns" value=""> 
	    <select name="emailaddr">
	       <option value="">직접입력</option>
	         <option value="daum.net">daum.net</option>
	         <option value="empal.com">empal.com</option>
	         <option value="gmail.com">gmail.com</option>
	         <option value="hanmail.net">hanmail.net</option>
	         <option value="msn.com">msn.com</option>
	         <option value="naver.com">naver.com</option>
	         <option value="nate.com" selected="selected">nate.com</option> 
	    </select><br>

		
		<label for="zip">우편번호	</label>
		<input type="text" name="zip" id="zip" value="312-212"><br>
		
		<label for="address1">주소	</label>
		<input type="text" name="address1" id="address1" value="서울시 송파구 잠실2동">&nbsp;
		<input type="text" name="address2" id="address2" value="엘스 아파트 201동 1203호"><br>
		
		<label for="phone">핸드폰번호	</label>
		<input type="text" name="phone" id="phnoe" value="010-2321-2312"><br>
		
		<label for="job">직업	</label>
		<select name="job" size=4>
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원" selected>공무원</option>
		</select><br>
		
		<label for="chk_mail">메일/SMS 정보 수신	</label>
		<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked>수신
		<input type="radio" id="chk_mail" name="chk_mail" value="no">수신거부<br>
		
		<label for="interest">관심분야</label>
		<input type="checkbox" id="interest" name="interest" value="생두">생두
		<input type="checkbox" id="interest" name="interest" value="원두" checked>원두
		<input type="checkbox" id="interest" name="interest" value="로스팅">로스팅
		<input type="checkbox" id="interest" name="interest" value="핸드드립" checked>핸드드립
		<input type="checkbox" id="interest" name="interest" value="에스프레소" checked>에스프레소
		<input type="checkbox" id="interest" name="interest" value="창업">창업 <br><br>
		
		<div id="button">
			<!-- <input type="submit" value="회원가입" onclick="return check_ok()"> -->
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
		</div>
	</form>
</body>
</html>