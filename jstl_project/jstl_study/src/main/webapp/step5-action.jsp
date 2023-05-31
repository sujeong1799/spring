<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- step5-action.jsp : 값을 받아 이름 출력하고, 나이 출력 후 c:choose -->
	<!-- 나이가 20이상이면 성인, 15세 이상이면 청소년, 5살 이상이면 어린이, 1살 이상이면 유아, 나머지는 아직 태어나지 않음-->
	
	이름 : ${param.name}<br>
	나이 : ${param.age}<br>
	
	<c:choose>
	<c:when test="${param.age >= 20 }">
	성인입니다.
	</c:when>
	
	<c:when test="${param.age >= 15 }">
	청소년입니다.
	</c:when>
	
	<c:when test="${param.age >= 5 }">
	어린이입니다.
	</c:when>
	
	<c:when test="${param.age >= 1 }">
	유아입니다.
	</c:when>
	
	<c:otherwise>
	태어나세요.
	</c:otherwise>
	
	</c:choose>
	
	
	<br>
	<hr>
	<a href="step6-foreach.jsp">step6-foreach로 넘어가기</a>
	

</body>
</html>