<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Home</title>
</head>
<body>

	<jsp:include page="./layout/header.jsp"></jsp:include>

	<div style="width: 1400px; height: 800px; margin: 20px auto; background-color: black; border-radius: 50px">
		<div style="width: 600px; margin: 20px auto;">
			<div>
				<img alt="없음" src="/resources/휘리릭.gif"
					style="width: 600px; height: 200px; margin-top: 100px">
			</div>
			<div>
				<img alt="없음" src="/resources/home2dap.gif"
					style="width: 600px; height: 200px;">
			</div>
		</div>
		<div style="width: 600px; margin: 0 auto;">
			<a href="/board/list"> <img alt="없음" src="/resources/거미로고.png" style="width: 75px; margin-left: 280px"> </a>
		</div>
	</div>







	<script type="text/javascript">
		const msg_login = `<c:out value="${msg_login}"/>`;
		console.log(msg_login);
		if (msg_login == '1') {
			alert("${ses.id}님 반가워요!");
		}
	</script>

	<jsp:include page="./layout/footer.jsp"></jsp:include>

</body>
</html>