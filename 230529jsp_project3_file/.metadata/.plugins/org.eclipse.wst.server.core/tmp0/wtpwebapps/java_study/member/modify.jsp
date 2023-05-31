<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>

	<form action="/mem/edit?id=${ses.id }" method="post">
		<table class="table table-hover">
			<thead class="table-light">

			</thead>
			<tbody>
				<tr>
					<td>아이디</td>
					<td>${ses.id }</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="password" value="${ses.password }"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" value="${ses.email }"></td>

				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" name="birth" value="${ses.birth }"></td>
				</tr>
				<tr>
					<td>계정생성일</td>
					<td>${ses.reg_date }</td>
				</tr>
				<tr>
					<td>마지막로그인</td>
					<td>${ses.last_login }</td>
				</tr>
			</tbody>
		</table>
		<button type="submit">수정완료</button>
	</form>

</body>
</html>