<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자격증 공부하자</title>

<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/source_style.css">
</head>

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

	<!-- SOURCE LIST -->

	<div class="container_source">

		<!-- 1BOX -->
		<div class="hexagon_source">
			<div class="shape_source">
				<img
					src="${pageContext.request.contextPath}/SITE/IMG/source/mappin.gif"
					alt="">
				<div class="content_source"
					onclick="location.href='${pageContext.request.contextPath}/losh/exschedule'">
					<div>
						<h2>${sessionScope.jmfldnm}시험 일정</h2>
						<p>자공자에서 시험 일정을 확인해보세요</p>
					</div>
				</div>
			</div>
		</div>

		<!-- 2BOX -->
		<div class="hexagon_source">
			<div class="shape_source">
				<img
					src="${pageContext.request.contextPath}/SITE/IMG/source/schedule.gif"
					alt="">
				<div class="content_source"
					onclick="location.href='${pageContext.request.contextPath}/losh/exmap'">
					<div>
						<h2>${sessionScope.jmfldnm}시험 장소</h2>
						<p>자공자에서 시험 장소를 확인해보세요</p>
					</div>
				</div>
			</div>
		</div>

		<!-- 3BOX -->
		<div class="hexagon_source">
			<div class="shape_source">
				<img
					src="${pageContext.request.contextPath}/SITE/IMG/source/workbook.gif"
					alt="">
				<div class="content_source"
					onclick="location.href='${pageContext.request.contextPath}/workbook/workbooklist'">
					<div>
						<h2>${sessionScope.jmfldnm}문제집</h2>
						<p>공부하는 사람들과 문제를 내고 풀어보세요</p>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>

</html>