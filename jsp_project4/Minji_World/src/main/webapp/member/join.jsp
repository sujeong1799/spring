<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body
	style="background-image: url('/image/배경화면.png'); background-repeat: no-repeat; background-size: cover;">
	<br>
	<div align="center" style="width: 350px; height: 500px; border: 1px solid; margin: 100px auto; background-color: white; border-radius: 30px;"  >
	<h1 style="margin: 20px auto;">버니즈 가입</h1>
		<form action="/mem/register" method="post">
			<div class="input-group mb-3" style="width: 300px;">
				<span class="input-group-text" id="inputGroup-sizing-default" style="margin-top: 20px;">아이디</span>
				<input type="text" name="id" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default"
					placeholder="아이디를 입력해주세요." style="margin-top: 20px;">
			</div>
			<br>
			<div class="input-group mb-3" style="width: 300px;">
				<span class="input-group-text" id="inputGroup-sizing-default">비밀번호</span>
				<input type="password" name="password" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default"
					placeholder="비밀번호를 입력해주세요.">
			</div>
			<br>
			<div class="input-group mb-3" style="width: 300px;">
				<span class="input-group-text" id="inputGroup-sizing-default">전화번호</span>
				<input type="text" name="phone" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default"
					placeholder="ex) 010-1234-5678">
			</div>
			<br>
			<div class="input-group mb-3" style="width: 300px;">
				<span class="input-group-text" id="inputGroup-sizing-default">생년월일</span>
				<input type="text" name="birth" class="form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default"
					placeholder="ex) 20030530">
			</div>
			<br>
			<button type="submit" class="btn btn-outline-primary">등록</button>
		</form>
	</div>


</body>
</html>