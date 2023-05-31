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
<title>정보수정</title>
</head>
<body style="background-image: url('/image/배경화면.png'); background-repeat: no-repeat; background-size: cover;">
	<nav class="navbar" style="background-color: #EFE6FF; border-bottom: 3px solid #E8D9FF;">
				<div class="container-fluid">
					<a class="navbar-brand" href="/">${ses.id } Bunnies♥</a>
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/brd/page">Bunnies Board</a></li>
						<li class="nav-item"><a class="nav-link" href="/mem/list">Bunnies List</a></li>
						<li class="nav-item"><a class="nav-link" href="/mem/modify">Bunnies edit</a></li>
						<li class="nav-item"><a class="nav-link" href="/mem/logout">logout</a>
						</li>
					</ul>
				</div>
			</nav>
	<br>
	<br>
	<div style="width: 600px; margin: 0 auto; border: 1px solid; border-radius: 10px; background-color: white;">
		<form action="/mem/edit?id=${ses.id }" method="post">
			<table class="table" style="width: 500px; margin: 0px auto;">
				<thead>
					<div align="center" style="margin: 20px;">
						<span>${ses.id } Bunnies 정보 수정</span>
					</div>
				</thead>
				<tbody class="table-group-divider">
					<tr>
						<th scope="col" style="height: 50px">아이디</th>
						<td>${ses.id }</td>
					</tr>
					<tr>
						<th scope="col" style="height: 50px">비밀번호</th>
						<td><input class="form-control" type="text" name="password"
							value="${ses.password }" placeholder="비밀번호를 입력해주세요."
							aria-label="default input example"></td>
					</tr>
					<tr>
						<th scope="col" style="height: 50px">전화번호</th>
						<td><input class="form-control" type="text" name="phone"
							value="${ses.phone }" placeholder="ex) 010-1111-1111"
							aria-label="default input example"></td>
					</tr>
					<tr>
						<th scope="col" style="height: 50px">생년월일</th>
						<td><input class="form-control" type="text" name="birth"
							value="${ses.birth }" placeholder="ex) 20230530"
							aria-label="default input example"></td>
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
			<br>
			<div align="center">
				<button type="submit" class="btn btn-primary">수정완료</button>
			</div>
		</form>
	</div>
</body>
</html>