<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/style.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body style="color: rgb(51, 51, 51);">


	<div class="logininput">
		<div style="margin-top: 100px">
		<form action="/mem/login" method="post">
			<table style="border: none; ">
				<tr>
					<th style="width: 70px;" >아이디</th>
					<td><input type="text" name="id" placeholder="아이디를 입력해주세요." class="singtd"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" placeholder="비밀번호를 입력해주세요." class="singtd"></td>
				</tr>
			</table>
			<div align="center">
			<button type="submit" class="btn btn-dark">LOGIN</button>
			</div>
		</form>
		</div>
	</div>
	<div class="loginbox">
	</div>
	<div class="loginpic">
	<img alt="없음" src="/resources/스파이더로그인3.jpg" style="width: 420px; height: 800px; border-radius: 50px;">
	</div>
	
		<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>