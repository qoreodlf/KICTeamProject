<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자격증 공부하자</title>
    <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/index_style.css"> --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/my_page_style.css">

    <!-- GOOGLE ICON -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

    <!-- SWIPER CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />

</head>

<body>
    <!-- Header -->


    <!-- MYPAGE LAYOUT -->
    <div class="my_wrap">
        <div class="in_wrap">

            <!-- 1BOX -->
            <div class="username">
                <div class="userprofile_wrap">
                  
                </div>
                <input type="text" placeholder="${sessionScope.userNickname}">
                <button onclick="location.href='${pageContext.request.contextPath}/member/nickname'">EDIT</button>
            </div>

            <!-- 2BOX -->
            <div class="userinfo">
                <div class="infotitle">
                    <span class="material-symbols-outlined">
                        bookmark
                    </span>
                    <h2>Contact info</h2>
                </div>
                <div class="infocontact">
                <h4>이름</h4>
                    <p>${sessionScope.userName}</p>
                    <h4>Email</h4>
                    <p>${sessionScope.userEmail}</p>
                    <button onclick="location.href='${pageContext.request.contextPath}/workbook/myworkbook'">내가 낸 문제</button><br>
                    <button onclick="location.href='${pageContext.request.contextPath}/member/changepassword'">비밀번호 변경</button><br>
                    <button onclick="location.href='${pageContext.request.contextPath}/member/deleteuser'">회원탈퇴</button>
                </div>
            </div>

           
        </div>
    </div>
</body>


<!-- SWIPER JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script src="JS/like_swiper_script.js"></script>

</html>