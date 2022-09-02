<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>자격증 공부하자</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/SITE/css/lists.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


</head>

<body>

	<main class="page-content">
		<div class="card">
			<div class="content">
				<h2 class="title">건설</h2>
				<c:forEach var="i" items="${exCon}">
					<p class="copy" onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">${i.jmfldnm}</p>
				</c:forEach>
			</div>
		</div>
		<div class="card">
			<div class="content">
				<h2 class="title">기계</h2>
				<c:forEach var="i" items="${exMa}">
					<p class="copy" onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">${i.jmfldnm}</p>
				</c:forEach>
			</div>
		</div>
		<div class="card">
			<div class="content">
				<h2 class="title">정보통신</h2>
				<c:forEach var="i" items="${exInfo}">
					<p class="copy" onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">${i.jmfldnm}</p>
				</c:forEach>
			</div>
		</div>

		<div class="card">
			<div class="content">
				<h2 class="title">안전관리</h2>
				<c:forEach var="i" items="${exSafe}">
					<p class="copy" onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">${i.jmfldnm}</p>
				</c:forEach>
			</div>
		</div>
		<div class="card">
			<div class="content">
				<h2 class="title">농림어업</h2>
				<c:forEach var="i" items="${exFor}">
					<p class="copy" onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">${i.jmfldnm}</p>
				</c:forEach>
			</div>
		</div>
		<div class="card">
			<div class="content">
				<h2 class="title">환경ㆍ에너지</h2>
				<c:forEach var="i" items="${exEn}">
					<p class="copy" onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">${i.jmfldnm}</p>
				</c:forEach>
			</div>
		</div>
	</main>
</body>





</html>