<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// post방식 한글처리 해주기(인코딩 설정)
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 
		step6-form.jsp, step6-action.jsp 
		action에서는 c:foreach로 checkBox의 값을 배열로 받아 화면에 찍기 (참고 step2-3)
	--%>
	
	주문자 : ${param.name}<br>
	<hr>
	ʕ •̀ o •́ ʔ 주문내역<br>
	<c:forEach items="${paramValues.newjeans}" var="newjeans" varStatus="order">
	－ ${newjeans}<br>
	</c:forEach>
	
	

</body>
</html>