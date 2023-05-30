<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body>
<div style="width: 800px; margin: auto;">
	<table class="table">
		<thead class="table-group-divider">
			<h1>글쓰는중 . . .. .ㅇ.ㄹㄴㅁㅇㄹ.</h1>
		</thead>
		<tbody>
			<tr>
				<th>글번호</th>
				<td>${bvo.bNum }</td>
				<th>제목</th>
				<td>${bvo.bTitle }</td>
			</tr>
			<tr >
				<th style="width: 60px">작성자</th>
				<td>${bvo.bWriter}</td>
				<th>작성일</th>
				<td>${bvo.reg_date }</td>
				<th>조회수</th>
				<td>${bvo.bCount }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="10">${bvo.bContent }</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>