<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어어</title>
</head>
<body style="background-image: url('/image/산책.png');">

	<div align="center" >
	<br><br><br>
		<form action="/brd/insert" method="post">
			<span style="font-size: 20px; color: white">소원 제목</span><br>
			<input class="form-control-lg" type="text" name="title" placeholder="제목입력" aria-label="default input example" style="height: 30px; width: 200px"><br>
			<br> 
			<span style="font-size: 20px; color: white">작성자</span><br>
			<input class="form-control-lg" type="text" name="writer" value="${ses.id }" readonly="readonly" aria-label="default input example" style="height: 30px; width: 200px"> <br> 
			<br>
			<span style="font-size: 20px; color: white">내용</span><br>
			<textarea rows="3" cols="25" name="content"></textarea>
			<br>
			<br>
			<button type="submit">소원등록</button>
		</form>
	</div>


</body>
</html>