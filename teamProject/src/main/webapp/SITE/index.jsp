<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>자격증 공부하자</title>
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/css/style.css" />
  
</head>

<body>
<script>
alert(444)
alert("세션"+${sessionScope.userEmail}+${sessionScope.userName}+${sessionScope.userType})
</script>
  <div class="app">
    <div class="cardList">
      <button class="cardList__btn btn btn--left">
        <div class="icon">
          <svg>
            <use xlink:href="#arrow-left"></use>
          </svg>
        </div>
      </button>

      <div class="cards__wrapper" onclick="location.href='#'">
        <div class="card current--card">
          <div class="card__image">
            <img src="${pageContext.request.contextPath}/SITE/img/index/technician.png" alt="" />
           
          </div>
        </div>

        <div class="card next--card">
          <div class="card__image">
            <img src="${pageContext.request.contextPath}/SITE/img/index/article.png" alt="" />
          </div>
        </div>

        <div class="card previous--card">
          <div class="card__image">
            <img src="${pageContext.request.contextPath}/SITE/img/index/technician2.png" alt="" />
          </div>
        </div>
      </div>

      <button class="cardList__btn btn btn--right">
        <div class="icon">
          <svg>
            <use xlink:href="#arrow-right"></use>
          </svg>
        </div>
      </button>
    </div>

    <div class="infoList">
      <div class="info__wrapper">
        <div class="info current--info">
          <h1 class="text name">기능사</h1>
          <h4 class="text location"></h4>
          <p class="text description">자세히 보기</p>
        </div>

        <div class="info next--info">
          <h1 class="text name">기사</h1>
          <h4 class="text location"></h4>
          <p class="text description"><a href="${pageContext.request.contextPath}/losh/exlist">자세히 보기</a></p>
        </div>

        <div class="info previous--info">
          <h1 class="text name">기술사</h1>
          <h4 class="text location"></h4>
          <p class="text description">자세히 보기</p>
        </div>
      </div>
    </div>


    <div class="app__bg">
      <div class="app__bg__image current--image">
        <img src="${pageContext.request.contextPath}/SITE/img/index/joinbackground.png" alt="" />
      </div>
      <div class="app__bg__image next--image">
        <img src="${pageContext.request.contextPath}/SITE/img/index/whitebackground.png" alt="" />
      </div>
      <div class="app__bg__image previous--image">
        <img src="${pageContext.request.contextPath}/SITE/img/index/whitebackground.png" alt="" />
      </div>
    </div>
  </div>

  <div class="loading__wrapper">
    <div class="loader--text">Loading...</div>
  </div>


  <svg class="icons" style="display: none;">
    <symbol id="arrow-left" xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'>
      <polyline points='328 112 184 256 328 400'
        style='fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:48px' />
    </symbol>
    <symbol id="arrow-right" xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'>
      <polyline points='184 112 328 256 184 400'
        style='fill:none;stroke:#fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:48px' />
    </symbol>
  </svg>

  <script type="text/javascript" src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.3/gsap.min.js"></script>
</body>
  <script type="text/javascript" src="${pageContext.request.contextPath}/SITE/js/indexscript.js"></script>



</html>