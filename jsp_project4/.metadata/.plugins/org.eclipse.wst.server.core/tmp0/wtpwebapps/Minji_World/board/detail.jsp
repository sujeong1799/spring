<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>글 보는 중</title>
</head>
<body
	style="background-image: url('/image/배경화면.png'); background-repeat: no-repeat; background-attachment: fixed;">
<<<<<<< HEAD
	<nav class="navbar" style="background-color: #EFE6FF; border-bottom: 3px solid #E8D9FF;">
=======
	<nav class="navbar"
		style="background-color: #EFE6FF; border-bottom: 3px solid #E8D9FF;">
>>>>>>> 7b74245d043cfe05699b51de66c56de1f663bc69
		<div class="container-fluid">
			<a class="navbar-brand" href="/">${ses.id } Bunnies♥</a>
			<ul class="nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/brd/page">Bunnies Board</a></li>
				<li class="nav-item"><a class="nav-link" href="/mem/list">Bunnies
						List</a></li>
				<li class="nav-item"><a class="nav-link" href="/mem/modify">Bunnies
						edit</a></li>
				<li class="nav-item"><a class="nav-link" href="/mem/logout">logout</a>
				</li>
			</ul>
		</div>
	</nav>
<<<<<<< HEAD
	<br>	
	<div style="width: 700px; margin: 0 auto; border: 1px solid; background-color: white; border-radius: 10px" align="center">
=======
	<br>
	<div
		style="width: 700px; margin: 0 auto; border: 1px solid; background-color: white; border-radius: 10px"
		align="center">
>>>>>>> 7b74245d043cfe05699b51de66c56de1f663bc69
		<br>

		<table class="table" style="width: 600px;">
			<thead class="table-group-divider">
			</thead>
			<tbody>
				<tr>
					<th>글번호</th>
					<td>${bvo.bno }</td>
					<th>제목</th>
					<td>${bvo.title }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${bvo.writer}</td>
					<th>작성일</th>
					<td>${bvo.reg_date }</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>${bvo.read_count }</td>
					<th>내용</th>
					<td colspan="10">${bvo.content }</td>
				</tr>
			</tbody>

		</table>
		<div align="center">
<<<<<<< HEAD
			<img alt="없음" src="/_fileUpload/${bvo.image_file }"
				style="width: 70%;">
=======
			<c:if test="${bvo.image_file ne null }">
				<img alt="없음" src="/_fileUpload/${bvo.image_file }"
				style="width: 70%;">
			</c:if>

>>>>>>> 7b74245d043cfe05699b51de66c56de1f663bc69
		</div>

		<div align="center">
			<br> <input type="text" id="cmtWriter" value="${ses.id }"
				readonly="readonly"> <input type="text" id="cmtText"
				placeholder="댓글을 작성해주세요.">
			<button type="button" id="cmtAddBtn">댓글 등록</button>
		</div>
		<br>
		<hr>

		<!-- 댓글 나타나는 부분 -->
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">
						글번호, 작성자</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					aria-labelledby="flush-headingOne"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">내용, 댓글작성일</div>
				</div>
			</div>
		</div>
<<<<<<< HEAD
	<br>
=======
		<br>
>>>>>>> 7b74245d043cfe05699b51de66c56de1f663bc69
		<div align="center">
			<a href="/brd/editPage?bno=${bvo.bno }"><button
					class="btn btn-outline-primary">수정</button></a> <a
				href="/brd/remove?bno=${bvo.bno } "><button
					class="btn btn-outline-primary">삭제</button></a> <a href="/brd/page"><button
					class="btn btn-outline-primary">게시판 리스트</button></a>
		</div>
		<br>
	</div>
	<script type="text/javascript">
		const bnoVal = `<c:out value = "${bvo.bno}"/>`;
	</script>

	<!-- 링크로 달때는 타입 없어도 됨, board_detail.jsp에 연결하겠다는 의미  -->
	<script src="/resources/board_detail.js"></script>
	<script type="text/javascript">
		printCommentList(bnoVal);
	</script>

</body>
</html>