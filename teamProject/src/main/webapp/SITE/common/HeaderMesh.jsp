<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
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
			<li><a href="${pageContext.request.contextPath}/member/mypage"
				id="home">MY PAGE("${sessionScope.userName}")</a></li>
			<li><a href="#">LOG OUT</a></li>
		</c:if>
	</ul>

</header>


