<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body style="background-image: url('/image/산책.png');">
<h1>회원가입 페이지</h1>
<form action="/mem/register" method="post">
	아이디<br>
	<input type="text" name="id" placeholder="아이디를 입력해주세요."><br>
	비밀번호<br>
	<input type="password" name="password" placeholder="비밀번호를 입력해주세요."><br>
	email<br>
	<input type="email" name="email" placeholder="email@naver.com"><br>
	생년월일<br>
	<input type="text" name="birth" placeholder="ex) 20230101"><br><br>
	
<button type="submit">등록완료</button>

</form>

</body>
</html>