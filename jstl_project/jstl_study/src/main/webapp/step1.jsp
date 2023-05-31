<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="model.CarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL연습</title>
</head>
<body>
	<h3>EL(Expression Language)</h3>
	<%--  주석입니다. --%>
	<%
		CarVO car = new CarVO("1234", "아반떼", 3000);
		
		// request.setAttribute : request 객체에 값을 저장하는 역할
		// request.getAttribute : 값을 가져오는 역할 
		
		// request.setAttribute("변수명", 값);
		request.setAttribute("cvo", car);
	%>
	
	<%-- 변수 출력해보기 --%>
	<strong>1. CarVO의 객체에서 변수 출력</strong> <br>
	<!-- 방법 1 : requestScope를 사용 -->
	${requestScope.cvo.name }<br>
	
	<!-- 방법 2 : requestScope (생략가능하다) -->
	${cvo.name}, ${cvo.num}, ${cvo.price }<br>
	
	<hr>
	
	<!-- 리스트로 변수 출력 -->
	<% 
		// arrayList 객체는 CarVO
		ArrayList<CarVO> list = new ArrayList<CarVO>();
		list.add(new CarVO("2222", "소나타", 5000));
		list.add(new CarVO("3333", "그랜저", 7000));
		list.add(new CarVO("4444", "제네시스", 9000));
		
		//carList라는 이름으로 list를 담아주겠다.
		session.setAttribute("carList", list);
	
	%>
	<strong>1. CarVO의 객체에서 list로 출력</strong><br>
	<!-- 방법 1 : sessionScope를 사용 -->
	${sessionScope.carList[0].name }<br>
	
	<!-- 방법 2 : sessionScope (생략가능하다) -->
	${carList[1].name }<br>
	${carList[2].name }, ${carList[2].num }, ${carList[2].price }<br>
	<hr>
	
	<!-- hashMap으로 변수를 출력 -->
	
	<%
		// hashMap 객체는 CarVO
		Map<String, CarVO> map = new HashMap<>();
		map.put("car1", new CarVO("5555","소나타", 2000));
		map.put("car2", new CarVO("6666","아반떼", 3000));
		request.setAttribute("CarMap", map);
	%>
	
	<strong>1. CarVO의 객체에서 map으로 출력</strong><br>
	<!-- request로 변수 출력  -->
	${CarMap.get("car1").name}, ${CarMap.get("car1").num}<br>
	${CarMap.car2.name}, ${CarMap.car2.num}, ${CarMap.car2.price}

	
	<hr>
	<a href = "step2-1.jsp">step2-1로 이동</a>
	
</body>
</html>