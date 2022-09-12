<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSP -->
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자격증 공부하자</title>
<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">

</head>>

<body>
<!-- Header -->
<header>
	<a href="${pageContext.request.contextPath}/losh/index" class="logo">JAGONGJA.</a>
	<ul>
		<c:if test="${sessionScope.userId eq null}">
			<li><a
				href="${pageContext.request.contextPath}/member/loginform">SIGN
					IN/SIGN UP</a></li>
		</c:if>

		<c:if test="${sessionScope.userId ne null}">
			<li><a href="${pageContext.request.contextPath}/odnote/odnote"
				id="home">오답노트</a></li>
			<li><a href="${pageContext.request.contextPath}/member/mypage"
				id="home">마이 페이지(${sessionScope.userNickname})</a></li>
			<li><a href="${pageContext.request.contextPath}/member/logout">LOG
					OUT</a></li>
		</c:if>
	</ul>

</header>


	<!-- Main Body -->
	<section id="mainsec">
		<img src="${pageContext.request.contextPath}/SITE/IMG/index/stars.png"
			id="stars"> <img
			src="${pageContext.request.contextPath}/SITE/IMG/index/moon.png"
			id="moon"> <img
			src="${pageContext.request.contextPath}/SITE/IMG/index/mountains_behind.png"
			id="mountains_behind">
		<h2 id="title_text" style="z-index:100;">자격증 공부하자.</h2>
		<a href="${pageContext.request.contextPath}/losh/exlist" id="btn">자격증 보러가기</a> <img
			src="${pageContext.request.contextPath}/SITE/IMG/index/mountains_front.png"
			id="mountains_front">
	</section>
</body>



</html>