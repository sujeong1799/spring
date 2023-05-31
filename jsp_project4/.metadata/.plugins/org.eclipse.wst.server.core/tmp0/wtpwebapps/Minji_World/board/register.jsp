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
<title>글 등록</title>
</head>
<body
	style="background-image: url('/image/배경화면.png'); background-repeat: no-repeat; background-size: cover;">
	<nav class="navbar" style="background-color: #EFE6FF; border-bottom: 3px solid #E8D9FF;">
		<div class="container-fluid">
			<a class="navbar-brand" href="/">Hello ${ses.id } Bunnies♥</a>
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
	<br>
	<div
		style="background-color: white; width: 700px; border: 1px solid; margin: 100px auto; border-radius: 20px;">
		<br>
		<div align="center">
			<span> 　　　　　　　　ᕬᕬ 글 쓰 는 중 . . . !</span><br> <SPAN>(❛⌓❛ )</SPAN>
		</div>
		<br>
		<div style="width: 600px; margin: auto; border: 1px solid gray;">
			<form action="/brd/insert" method="post" enctype="multipart/form-data" >
				<table class="table">
					<thead class="table-light">
					</thead>
					<tbody>
						<tr>
							<th style="height: 50px">제목</th>
							<td><div style="width: 500px">
									<input class="form-control" type="text" name="title"
										placeholder="제목입력" aria-label="default input example">
								</div></td>
						</tr>
						<tr>
							<th style="height: 50px">작성자</th>
							<td><input class="form-control" type="text" name="writer"
								value="${ses.id }" readonly="readonly"
								aria-label="default input example"></td>
						</tr>
						<tr>
							<th>파일첨부</th>
							<td><div style="width: 500px">
									<input  class="form-control" type="file" id="file" name="image_file"
										accept="image/png, image/jpg, image/jpeg, image/bmp, image/gif" aria-label="default input example">
								</div></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><div style="width: 500px">
									<textarea rows="10" cols="65" name="content"></textarea>
								</div></td>
						</tr>

					</tbody>
				</table>
				<div align="center">
					<button type="submit" class="btn btn-outline-primary">등록</button>
					<a href="/"><button type="button"
							class="btn btn-outline-primary">메인</button></a>
				</div>
			</form>
		</div>
		<br>
	</div>
</body>
</html>