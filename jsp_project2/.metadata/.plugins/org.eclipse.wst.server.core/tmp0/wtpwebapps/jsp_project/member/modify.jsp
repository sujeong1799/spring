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
		<input type="hidden" name="id" value="${ses.id }">
		id : <input type="text" name ="id" value="${ses.id }" disabled="disabled"><br>
		password : <input type="text" name="password" value="${ses.password }"><br>
		email : <input type="text" name="email" value="${ses.email }"><br>
		age : <input type="text" name ="age" value="${ses.age }" ><br>
		reg_date : <input type="text" name = "reg_date" value="${ses.reg_date }" disabled="disabled"><br>
		last_login : <input type="text" name = "last_login" value="${ses.last_login }" disabled="disabled"><br>
		

	<button type="submit">수정완료</button>
	</form>

</body>
</html>