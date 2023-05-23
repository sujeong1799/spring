<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
</head>
<body>

	<br>
	<div style="width:700px" >
	<table class="table table-striped">
		<tr align="center">
			<th>글번호</th>
			<td>${bvo.bno }</td>
		</tr>
		<tr align="center">
			<th>제목</th>
			<td>${bvo.title }</td>
		</tr>
		<tr align="center">
			<th>글쓴이</th>
			<td>${bvo.writer }</td>
		</tr>
		<tr align="center">
			<th>작성일자</th>
			<td>${bvo.reg_date }</td>
		</tr>
		<tr align="center">
			<th>조회수</th>
			<td>${bvo.count }</td>
		</tr>
		<tr align="center">
			<th>내용</th>
			<td>${bvo.content }</td>
		</tr>
	</table>
	</div>

	<hr>

	<div align="center">
		comment line<br>
		<!-- 댓글 작성 라인 -->
		<!-- id로 받는 이유는? 무라고요??? name으로 받는거는 컨트롤러로 바로 가려고  -->
		<input type="text" id="cmtWriter" value="${ses.id }"
			readonly="readonly"> <input type="text" id="cmtText"
			placeholder="Add Comment">
		<!-- submit으로 보낼거 아니니까 타입 button -->
		<button type="button" id="cmtAddBtn">댓글 등록</button>
	</div>
	<br>

	<!-- 댓글 표시 라인 -->
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
						aria-expanded="false" aria-controls="flush-collapseOne">
						cno, writer</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"
					aria-labelledby="flush-headingOne"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">content, reg_date</div>
				</div>
			</div>
		</div>
	<br>
	<div align="center">
		<a href="/brd/modify?bno=${bvo.bno }"><button type="submit">수정</button></a>
		<a href="/brd/remove?bno=${bvo.bno }"><button type="submit">삭제</button></a>
		<a href="/brd/page"><button>뒤로가기</button></a>
	</div>
	<script type="text/javascript">
		const bnoVal = `<c:out value = "${bvo.bno}"/>`;
	</script>

	<!-- 링크로 달때는 타입 없어도 됨 -->
	<script src="/resources/board_detail.js"></script>

	<script type="text/javascript">
		printCommentList(bnoVal);
	</script>
</body>
</html>