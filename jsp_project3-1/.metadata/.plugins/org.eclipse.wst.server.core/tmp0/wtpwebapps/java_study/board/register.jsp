<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어어</title>
</head>
<body>


<form action="/brd/insert" method="post">
소원제목<br>
<input type="text" name="title"><br>
ㄱㅆㅇ<br>
<input type="text" name="writer" value="${ses.id }" readonly="readonly"><br>
소원내용<br>
<textarea rows="3" cols="30" name="content"></textarea> <br><br>
<button type="submit">소원등록</button>

</form>


</body>
</html>