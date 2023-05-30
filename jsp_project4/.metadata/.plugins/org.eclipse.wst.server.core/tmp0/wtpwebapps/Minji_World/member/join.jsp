<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div align="center">회원가입 페이지</div>
	<br>
	<div align="center">
		<form action="/mem/register" method="post">
			<div>
				아이디 : <input type="text" name="mId" placeholder="아이디를 입력해주세요">
			</div>
			<br>
			<div>
				비밀번호 : <input type="password" name="mPassword"
					placeholder="비밀번호를 입력해주세요.">
			</div>
			<br>
			<div>
				전화번호 : <input type="text" name="mPhone"
					placeholder="ex) 010-1234-5678">
			</div>
			<br>
			<div>
				생년월일 : <input type="text" name="mBirth" placeholder="ex) 20030530">
			</div>
			<br>
			<button type="submit">등록</button>
		</form>
	</div>


</body>
</html>