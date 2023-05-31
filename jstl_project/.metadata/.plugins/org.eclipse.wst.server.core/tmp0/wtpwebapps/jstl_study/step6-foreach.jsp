<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>foreach</title>
</head>
<body>
	<%
		String food[] = {"사과", "배", "귤", "감", "청포도", "바나나"};
		// 가져올때는 getAttribute
		// 담을때는 setAttribute 
		request.setAttribute("f", food);
	%>
	
	<!-- forEach(반복문)에 담는 값들이 있다. 
		items : 대상배열, 컬렉션(list, set, map)
		var : 요소를 저장할 변수
		varStatus : 변수 -> 변수.count(개수), 변수.index(주소) 
	-->
	<!-- requestScope는 생략이 가능하지만 써줘라. -->
	<c:forEach items="${requestScope.f}" var="fname" varStatus="order">
		count : ${order.count }
		index : ${order.index }
		name : ${fname }<br>
		
	</c:forEach>
	
	<a href="step6-form.jsp">step6-form.jsp로 이동하기</a>
	<!-- step6-form.jsp, step6-action.jsp 
		form태그안에 check box 만들어서 여러개 선택 가능하게 만들거야
		주문자 : 누구누구~
		주문할 목록 check box로 선택하고 action으로 전송하기~
		
		action에서는 c:foreach로 checkBox의 값을 배열로 받아 화면에 찍기 (참고 step2-3) 
		
	-->
	

</body>
</html>