<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- Header -->
    <header>
        <a href="index.html" class="logo">JAGONGJA.</a>
        <ul>
            <li><a href="#">{USERNAME}</a></li>
        </ul>
    </header>

    <!-- MYPAGE LAYOUT -->
    <div class="my_wrap">
        <div class="in_wrap">

            <!-- 1BOX -->
            <div class="username">
                <div class="userprofile_wrap">
                    <div class="img_wrap">
                        <img src="#" alt="" id="profile_img">
                    </div>
                </div>
                <input type="text" placeholder="UserName">
                <button>EDIT</button>
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
                    <h4>Email</h4>
                    <p>mail@gmail.com</p>
                    <h4>PHONE</h4>
                    <p>010-0000-0000</p>
                    <h4>소개</h4>
                    <textarea name="" id="" cols="100" rows="1" placeholder="한줄 소개" maxlength="40"></textarea>
                </div>
            </div>

            <!-- 3BOX -->
            <div class="mylike">
                <div class="like_title_wrap">
                    <h1>즐겨찾기</h1>
                </div>

                <!-- SWIPER -->
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                        <div class="swiper-slide">{자격증 이름}</div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </div>
</body>


<!-- SWIPER JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script src="JS/like_swiper_script.js"></script>

</html>