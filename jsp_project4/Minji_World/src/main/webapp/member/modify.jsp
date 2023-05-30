<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br>
	<div style="width: 600px; margin: 0 auto; border: 1px solid;">
		<form action="/mem/edit?mId=${ses.mId }" method="post">
			<table class="table">
				<thead>
				<h1 align="center">${ses.mId } Bunnies 정보 수정</h1>
				</thead>
				<tbody class="table-group-divider">
					<tr>
						<th scope="col" style="height: 50px">아이디</th>
						<td>${ses.mId }</td>
					</tr>
					<tr>
						<th scope="col" style="height: 50px">비밀번호</th>
						<td><input class="form-control" type="text" name="mPassword" value="${ses.mPassword }" placeholder="Default input" aria-label="default input example"></td>
					</tr>
					<tr>
						<th scope="col" style="height: 50px">전화번호</th>
						<td><input class="form-control" type="text" name="mPhone" value="${ses.mPhone }" placeholder="Default input" aria-label="default input example"></td>
					</tr>
					<tr>
						<th scope="col" style="height: 50px">생년월일</th>
						<td><input class="form-control" type="text" name="mBirth" value="${ses.mBirth }" placeholder="Default input" aria-label="default input example"></td>
					</tr>
					<tr>
						<th scope="col" style="height: 50px">버니즈가입일</th>
						<td>${ses.reg_date }</td>
					</tr>
					<tr>
						<th scope="col">마지막로그인</th>
						<td>${ses.last_login }</td>
					</tr>
				</tbody>
			</table>
			<div align="center">
			<button type="submit">수정</button>
			<a href="/"><button>메인</button></a>
			</div>
		</form>
	</div>
</body>
</html>