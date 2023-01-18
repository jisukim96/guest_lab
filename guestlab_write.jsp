<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼페이지 생성</title>
<link href = "filegb.css" rel = "stylesheet" type = "text/css">
<style>
	div{
	width : 800px;
	margin-left: 0 auto;
	}
	#write{
	font-size : 30px;
	}
</style>
<script>
	function check() {
		with (document.fileglabwrite){
			if(idx.value.length==0){
				alert("회원번호를 입력해 주세요");
				idx.focus();
				return false;
			}
			if(ename.value.length==0){
				alert("이름을 입력해 주세요");
				ename.focus();
				return false;
			}
			if(phone.value.length==0){
				alert("휴대폰 번호를 입력해 주세요");
				phone.focus();
				return false;
			}
			if(gender.value.length==0){
				alert("성별을 입력해 주세요");
				gender.focus();
				return false;
			}
			if(addr.value.length==0){
				alert("주소를 입력해 주세요");
				addr.focus();
				return false;
			}
			if(password.value.length==0){
				alert("비밀번호를 입력해 주세요");
				addr.focus();
				return false;
			}
			document.fileglabwrite.submit();
		}
	}

</script>
</head>
<body>
		<form name = "fileglabwrite" method = "post" action = "guestlab_save.jsp">  <!-- post는 주소창에 어떤 값이 넘어가는지 확인 불가 get은 url에 변수의 값 찍힘-->
	<div>
		<table width = "600px" cellspacing = "0" cellpadding = "2">
			<tr>
				<td colspan = "2" bgcolor="#1f4f8f" height = "1"></td>
			</tr>	
			<tr>
				<td colspan = "2" bgcolor="#1f4f8f" height = "1"><span id="write">회원가입</span></td>
			</tr>
			<tr>
				<td> 번호 : </td>
				<td> <input type = "text" name = "idx" class = "input_style1"></td>
			</tr>
			<tr>
				<td> 이름 : </td>
				<td> <input type = "text" name = "ename" class = "input_style1"></td>
			</tr>
			<tr>
				<td> 핸드폰 번호 : </td>
				<td> <input type = "text" name = "phone" class = "input_style1"></td>
			</tr>
			<tr>
				<td> 성별 : </td>
				<td> <input type = "text" name = "gender" class = "input_style1"></td>
			</tr>
			<tr>
				<td> 주소 : </td>
				<td> <input type = "text" name = "addr" class = "input_style1"></td>
			</tr>
			<tr>
				<td> 비밀번호 : </td>
				<td> <input type = "text" name = "password" class = "input_style1"></td>
			</tr>
			<tr>
				<td colspan = "2" height = "50px">&nbsp;</td>
			</tr>
			<tr>
				<td colspan = "2"> <!--  취소/확인/글쓰기 이미지 처리 --> 
					<table width ="100%" border = "0" cellspacing = "0" cellpadding = "0">
						<tr>
							<td width = "28%">&nbsp;</td>
							<td width = "51%">&nbsp;</td>
							<td width = "12%">
								<a href = "guestlab_show.jsp">
								<img src = "images/cancle.gif" width="46px" height = "20px">
								</a>
							</td>
							<td width = "9%">
								<a href = "#" onclick = "check(this.form)">
								<img src = "images/ok.gif" width="46px" height = "20px">
								</a>
							</td>
					</table>
				</td>
			</tr>
		</table>
		
	</div>
		
	</form>
</body>
</html>