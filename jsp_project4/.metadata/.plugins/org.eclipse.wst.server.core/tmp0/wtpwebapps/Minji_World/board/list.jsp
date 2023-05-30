<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bunnies Board</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="width: 800px; margin: auto;">
		<table class="table table-hover">
			<thead class="table-light">
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var ="bvo">
					<tr>
						<td>${bvo.bNum }</td>
						<td><a href="/brd/detail?bNum=${bvo.bNum }">${bvo.bTitle }</a></td>
						<td>${bvo.bWriter }</td>
						<td>${bvo.bCount }</td>
						<td>${bvo.reg_date }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
		<div align="center">
		<a href="/board/register.jsp"><button>글쓰기</button></a>
		<a href="/"><button>메인가기</button></a>
	</div>
</body>
</html>