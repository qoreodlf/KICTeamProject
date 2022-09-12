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
<%@include file="/SITE/common/HeaderMesh.jsp"%>

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