<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자격증 공부하자</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/my_page_style.css">

    <!-- GOOGLE ICON -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

    <!-- SWIPER CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

</head>

<body>
<%@include file="/SITE/common/HeaderMesh.jsp"%>


    <!-- MYPAGE LAYOUT -->
    <div class="my_wrap">
        <div class="in_wrap">

            <!-- 1BOX -->
            <div class="username">
                <div class="userprofile_wrap">
                  
                </div>
                <input type="text" placeholder="${sessionScope.userNickname}">
                <button onclick="location.href='${pageContext.request.contextPath}/member/nickname'" style="outline:none; border: 0; font-size:20px; background: transparent;">EDIT</button>
            </div>

            <!-- 2BOX -->
            <div class="userinfo">
                <div class="infotitle">
                    <span class="material-symbols-outlined" style="color:#FFF;">
                        bookmark
                    </span>
                    <h2 style="color: #FFF;">Contact info</h2>
                </div>
                <div class="infocontact">
                <h4 style="color:#FFF;">이름</h4>
                    <p style="color:#FFF;">${sessionScope.userName}</p>
                    <h4 style="color:#FFF;">Email</h4>
                    <p style="color:#FFF;">${sessionScope.userEmail}</p>
                    <button onclick="location.href='${pageContext.request.contextPath}/workbook/myworkbook'"style="border: 0; outline:none; color:#FFF; background: transparent; font-size:20px; margin: 0 0 10px 0;">내가 낸 문제</button><br>
                    <button onclick="location.href='${pageContext.request.contextPath}/member/changepassword'" style="border: 0; outline:none; color:#FFF; background: transparent; font-size:20px; margin: 0 0 10px 0;">비밀번호 변경</button><br>
                    <button onclick="location.href='${pageContext.request.contextPath}/member/deleteuser'" style="border: 0; outline:none; color:#FFF; background: transparent; font-size:20px; margin: 0 0 10px 0;">회원탈퇴</button>
                </div>
            </div>

           
        </div>
    </div>
</body>


<!-- SWIPER JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script src="JS/like_swiper_script.js"></script>

</html>