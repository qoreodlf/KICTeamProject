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
	href="${pageContext.request.contextPath}/SITE/CSS/schedule_style.css">

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

	<!-- 타이틀 -->
	<h4 class="main-tit">${sessionScope.jmfldnm} 일정</h4>

	<!-- Schedule -->

	<!-- ForEach -->
	<c:forEach var="i" items="${notOverlapedJSON}">

		<!-- 1BOX -->
		<div class="container_schedule">
			<div class="card_schedule">
				<div class="content_schedule">
					<h2>
						[제 <span class="round mont" style="color: #465fc6;">
							${i.implSeq} </span>회 필기시험]
					</h2>
					<span style="color: #465fc6;">${i.docExamStartDt}</span> ~ <span
						style="color: #465fc6;">${i.docExamEndDt}</span> <br>
					<br>
					<p>접수기간</p>
					<span>${i.docRegStartDt}</span>~<span>${i.docRegEndDt}</span>
					<p>합격자 발표</p>
					<span>${i.docPassDt}</span> <br> <a href="#" onclick="no()">접수하기</a> <br>
					<hr>
					<br>
					<!-- ====================================================================== -->
					<div class="content_schedule">
						<h2>
							[제 <span class="round mont" style="color: #465fc6;">${i.implSeq}</span>
							실기시험]
						</h2>
						<span style="color: #465fc6;">${i.pracExamStartDt}</span>~ <span
							style="color: #465fc6;">${i.pracExamEndDt}</span> <br>
						<br>
						<p>접수기간</p>
						<span>${i.pracRegStartDt}</span>~<span>${i.pracRegEndDt}</span>
						<p>합격자 발표</p>
						<span>${i.pracPassDt}</span> <br> <a href="#" onclick="no()">접수하기</a>
					</div>
				</div>
			</div>
		</div>

	</c:forEach>
</body>

<script>
function no(){
	alert("현재 접수기간이 아닙니다.");
}
</script>
</html>