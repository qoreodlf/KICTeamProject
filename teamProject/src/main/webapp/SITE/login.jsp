<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>자격증 공부하자</title>
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

  <!-- CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/login_style.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
</head>

<body>
  <!-- Header -->
  <header>
    <a href="${pageContext.request.contextPath}/losh/index" class="logo">JAGONGJA.</a>
  </header>

  <div class="section">
    <div class="container">
      <div class="row full-height justify-content-center">
        <div class="col-12 text-center align-self-center py-5">
          <div class="section pb-5 pt-5 pt-sm-2 text-center">
            <h6 class="mb-0 pb-3">
              <span>Sign In </span>
              <span>Sign Up</span>
            </h6>
            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
            <label for="reg-log"></label>


            <!-- KAKAO -->
            <form id="sendkakaomember" method="post" action="${pageContext.request.contextPath}/member/kakaologin">
              <input type="hidden" id="userEmail" name="userEmail">
              <input type="hidden" id="userName" name="userName">
              <input type="hidden" id="userId" name="userId">
            </form>

            <div class="card-3d-wrap mx-auto">
              <div class="card-3d-wrapper">
                <div class="card-front" id="front">
                  <div class="center-wrap">
                    <div class="section text-center">
                      <h4 class="mb-4 pb-3">로그인</h4>
                      <!-- KAKAO -->
                      <form action="${pageContext.request.contextPath}/member/loginpro" method="post">

                        <div class="form-group">

                          <input type="email" name="logemail" class="form-style" placeholder="이메일" id="logemail"
                            autocomplete="off">
                          <i class="input-icon uil uil-at"></i>
                        </div>
                        <div class="form-group mt-2">
                          <input type="password" name="logpass" class="form-style" placeholder="비밀번호" id="logpass"
                            autocomplete="off">
                          <i class="input-icon uil uil-lock-alt"></i>
                        </div>
                        <a href="#" class="btn mt-4" onclick="location.href='##'">로그인</a>
                        <a class="btn mt-4" href="javascript:kakaoLogin();">카카오톡
                          로그인</a>
                        <p class="mb-0 mt-4 text-center">
                          <a href="#0" class="link">비밀번호를 잊어버리셨나요?</a>

                        </p>
                    </div>
                  </div>
                </div>

                <div class="card-back" id="back">
                  <div class="center-wrap">
                    <div class="section text-center">
                      <h4 class="mb-4 pb-3">회원가입</h4>
                      <!-- KAKAO -->
                      <form action="${pageContext.request.contextPath}/member/addmember" method="post">

                        <div class="form-group">
                          <input type="text" name="logname" class="form-style" placeholder="이름" id="logname"
                            autocomplete="off">
                          <i class="input-icon uil uil-user"></i>
                        </div>

                        <div class="form-group mt-2">
                          <input type="email" name="logemail" class="form-style" placeholder="아이디" id="logemail"
                            autocomplete="off">
                          <i class="input-icon uil uil-at"></i>
                        </div>

                        <div class="form-group mt-2">
                          <input type="password" name="logpass" class="form-style" placeholder="비밀번호" id="logpass"
                            autocomplete="off">
                          <i class="input-icon uil uil-lock-alt"></i>
                        </div>

                        <a href="#" class="btn mt-4">확인</a>
                        <a class="btn mt-4" href="javascript:kakaoLogin();">카카오톡
                          회원가입</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/SITE/js/login_kakao.js"></script>

</html>