<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>

	<h1>회원정보수정 페이지</h1>
	<br>
	<form action="/mem/edit" method = "post">
		<!-- disabled대신에 readonly쓰기 읽기만 가능하고 쓰는건X, 값도 가져올 수 있음. -->
		id : <input type="text" name ="id" value="${ses.id }" readonly="readonly"><br>
		password : <input type="text" name="password" value="${ses.password }"><br>
		email : <input type="text" name="email" value="${ses.email }"><br>
		age : <input type="text" name ="age" value="${ses.age }" ><br>
		<!-- 변경안하는 데이터들 가져가는 방법 -->
		<input type="hidden" name = "reg_date" value="${ses.reg_date }"><br>
		<input type="hidden" name = "last_login" value="${ses.last_login }"><br>
		
	<button type="submit">수정완료</button>
	</form>

</body>
</html>