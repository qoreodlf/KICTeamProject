<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
</head>
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


