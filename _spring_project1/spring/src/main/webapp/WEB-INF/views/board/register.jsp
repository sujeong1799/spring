<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
</head>
<body>
<h1>Register Page</h1>
<form action="/board/register" method="post" enctype="multipart/form-data">
제목 : <input type="text" name="title" placeholder="제목을 입력해주세요"><br>
작성자 : <input type="text" name="writer" value="${ses.id }" readonly="readonly"><br>
내용 : <br>
<textarea rows="20" cols="30" name="content"></textarea><br><br>
file : <input type="file" id="file" name="files" multiple style="display: none;">
<button type="button" id="trigger" class="btn btn-secondary">FileUpload</button><br>
<div id="fileZone">

</div>
<button id = "regBtn" type="submit" >등록</button>
</form>
<a href="/"><button type="button">home</button></a>
<script type="text/javascript" src="/resources/js/boardRegister.js"></script>
</body>
</html>