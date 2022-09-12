<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property='title' /></title> 
	<sitemesh:write property='head' />

</head>

<body>
<%@include file="/SITE/common/HeaderMesh.jsp"%>

		<sitemesh:write property='body' />

</body>

</html>