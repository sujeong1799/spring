<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소원사이트</title>
</head>
<body style="background-image: url('https://postfiles.pstatic.net/MjAyMTExMjhfNTAg/MDAxNjM4MDkwODAxNzA3.uZ664vXv5a3sm2m-jUdIFRgLs7N5IdRuU7FClkzAHDUg.7SPSDfnVKtCdlqlSLZgglEVplJII1wZrAdEMsoJIYSsg.PNG.classe82/05._DJ_%EB%9D%BC%EC%9D%B4%EC%96%B8%EA%B3%BC_%EB%B0%A4_%EC%82%B0%EC%B1%85.png?type=w773');">
<div align="center">

	<%-- c:choose 써서 ${ses.id ne null } id가 null이 아니면 로그인성공후 화면--%>
	<c:choose>
		<c:when test="${ses.id ne null }">
			<h1> ${ses.id }님 어떤 소원을 빌러오셨나요?  </h1>
			마지막 접속 : ${ses.last_login }<br><br>
			<a href="/board/register.jsp"><button>소원빌러가기</button></a>
			<a href="/brd/mylist?writer=${ses.id }"><button>내 소원 리스트</button></a>
			<a href="/brd/list"><button>소원 리스트</button></a><br><br>
			<a href="/mem/modify"><button>회원정보수정</button></a>
			<a href="/mem/list"><button>회원정보리스트</button></a>
			<br><br><br><br><br><br>
			<a href="/mem/logout"><button>로그아웃</button></a>
		</c:when>
		<%-- id가 null이면 로그인실패후 화면 --%>
		<c:when test="${ses.id eq null }">
			<h1> 소원을 빌면 100일 후 소원이 이루어집니다. </h1>
			<a href="/mem/login"><button>로그인</button></a>
			<a href="/mem/join"><button>회원가입</button></a>
		</c:when>
	</c:choose>
</div>

<script type="text/javascript">
const msg_login = `<c:out value="${msg_login}" />`;
console.log(msg_login);
if(msg_login === '0'){
	alert("로그인 정보가 올바르지 않습니다.");
}

const msg_mylist = `<c:out value="${msg_mylist}" />`;
console.log(msg_mylist);
if(msg_mylist === '0'){
	alert("작성글이 없습니다.");
}



</script>


</body>
</html>