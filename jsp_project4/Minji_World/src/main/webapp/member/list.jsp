<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버니즈 리스트</title>
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
	<div style="width: 600px; margin: 100px auto auto; border: 1px solid; background-color: white; border-radius: 10px;">
		<table class="table" style="width: 500px; margin: 20px auto;">
			<tr>
				<td>아이디</td>
				<td>전화번호</td>
				<td>생년월일</td>
			</tr>
			</thead>
			<tbody class="table-group-divider">
				<c:forEach items="${list }" var="list">
					<tr>
						<td>${list.id }</td>
						<td>${list.phone }</td>
						<td>${list.birth }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<div align="center">
		<a href="/"><button class="btn btn-primary">메인가기</button></a>
	</div>
	<br>
	</div>
	<br>
</body>
</html>