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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/certificate.css" />

  <style>
    @charset "UTF-8";

    @import url('https://fonts.googleapis.com/css2?family=Kanit:wght@500&display=swap');

    :root {
      --card-width: 200px;
      --card-height: 300px;
      --card-transition-duration: 800ms;
      --card-transition-easing: ease;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: 'Kanit', sans-serif;
      color: #FFF;
      text-decoration: none;

      /* 드래그 방지 */
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      /* END */
    }

    body {
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: rgba(0, 0, 0, 0.787);
      overflow: hidden;
    }

    button {
      border: none;
      background: none;
      cursor: pointer;
    }

    button:focus {
      outline: none;
      border: none;
    }

    .app {
      position: relative;
      width: 100%;
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .app__bg {
      position: absolute;
      width: 100%;
      height: 100%;
      z-index: -5;
      filter: blur(8px);
      pointer-events: none;
      user-select: none;
      overflow: hidden;
    }

    .app__bg::before {
      content: "";
      position: absolute;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background: #000;
      z-index: 1;
      opacity: 0.8;
    }

    .app__bg__image {
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%) translateX(var(--image-translate-offset, 0));
      width: 180%;
      height: 180%;
      transition: transform 1000ms ease, opacity 1000ms ease;
      overflow: hidden;
    }

    .app__bg__image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .app__bg__image.current--image {
      opacity: 1;
      --image-translate-offset: 0;
    }

    .app__bg__image.previous--image,
    .app__bg__image.next--image {
      opacity: 0;
    }

    .app__bg__image.previous--image {
      --image-translate-offset: -25%;
    }

    .app__bg__image.next--image {
      --image-translate-offset: 25%;
    }

    .cardList {
      position: absolute;
      width: calc(3 * var(--card-width));
      height: auto;
    }

    .cardList__btn {
      --btn-size: 35px;
      width: var(--btn-size);
      height: var(--btn-size);
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      z-index: 100;
    }

    .cardList__btn.btn--left {
      left: -5%;
    }

    .cardList__btn.btn--right {
      right: -5%;
    }

    .cardList__btn .icon {
      width: 100%;
      height: 100%;
    }

    .cardList__btn .icon svg {
      width: 100%;
      height: 100%;
    }

    .cardList .cards__wrapper {
      position: relative;
      width: 100%;
      height: 100%;
      perspective: 1000px;
    }

    .card {
      --card-translateY-offset: 100vh;
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%) translateX(var(--card-translateX-offset)) translateY(var(--card-translateY-offset)) rotateY(var(--card-rotation-offset)) scale(var(--card-scale-offset));
      display: inline-block;
      width: var(--card-width);
      height: var(--card-height);
      transition: transform var(--card-transition-duration) var(--card-transition-easing);
      user-select: none;
      cursor: pointer;
    }

    .card::before {
      content: "";
      position: absolute;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background: #000;
      z-index: 1;
      transition: opacity var(--card-transition-duration) var(--card-transition-easing);
      opacity: calc(1 - var(--opacity));
    }

    .card__image {
      position: relative;
      width: 100%;
      height: 100%;
    }

    .card__image img {
      position: absolute;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .card.current--card {
      --current-card-rotation-offset: 0;
      --card-translateX-offset: 0;
      --card-rotation-offset: var(--current-card-rotation-offset);
      --card-scale-offset: 1.2;
      --opacity: 0.8;
    }

    .card.previous--card {
      --card-translateX-offset: calc(-1 * var(--card-width) * 1.1);
      --card-rotation-offset: 25deg;
    }

    .card.next--card {
      --card-translateX-offset: calc(var(--card-width) * 1.1);
      --card-rotation-offset: -25deg;
    }

    .card.previous--card,
    .card.next--card {
      --card-scale-offset: 0.9;
      --opacity: 0.4;
    }

    .infoList {
      position: absolute;
      width: calc(3 * var(--card-width));
      height: var(--card-height);
      z-index: 10000;
    }

    .infoList .info__wrapper p {
      color: #FFF;
      text-decoration: none;
    }

    .infoList .info__wrapper {
      position: relative;
      width: 100%;
      height: 100%;
      display: flex;
      justify-content: flex-start;
      align-items: flex-end;
      perspective: 1000px;
      transform-style: preserve-3d;
    }

    .info {
      margin-bottom: calc(var(--card-height) / 8);
      margin-left: calc(var(--card-width) / 1.5);
      transform: translateZ(2rem);
      transition: transform var(--card-transition-duration) var(--card-transition-easing);
    }

    .info .text {
      position: relative;
      font-family: "Montserrat";
      font-size: calc(var(--card-width) * var(--text-size-offset, 0.2));
      white-space: nowrap;
      color: #fff;
      width: fit-content;
    }

    .info .name,
    .info .location {
      text-transform: uppercase;
    }

    .info .location {
      font-weight: 800;
    }

    .info .location {
      --mg-left: 40px;
      --text-size-offset: 0.12;
      font-weight: 600;
      margin-left: var(--mg-left);
      margin-bottom: calc(var(--mg-left) / 2);
      padding-bottom: 0.8rem;
    }

    .info .location::before,
    .info .location::after {
      content: "";
      position: absolute;
      background: #fff;
      left: 0%;
      transform: translate(calc(-1 * var(--mg-left)), -50%);
    }

    .info .location::before {
      top: 50%;
      width: 20px;
      height: 5px;
    }

    .info .location::after {
      bottom: 0;
      width: 60px;
      height: 2px;
    }

    .info .description {
      --text-size-offset: 0.0625;
      font-weight: 500;
    }

    .info .description {
      color: #FFF;
      z-index: 10000;
    }

    .info .description:hover {
      cursor: pointer;
      text-shadow: 0 0 5px #FFF;
    }

    .info.current--info {
      opacity: 1;
      display: block;
    }


    .info.previous--info,
    .info.next--info {
      opacity: 0;
      display: none;
    }

    .loading__wrapper {
      position: fixed;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background: #000;
      z-index: 200;
    }

    .loading__wrapper .loader--text {
      color: #fff;
      font-weight: 500;
      margin-bottom: 1.4rem;
    }

    .loading__wrapper .loader {
      position: relative;
      width: 200px;
      height: 2px;
      background: rgba(255, 255, 255, 0.25);
    }

    .loading__wrapper .loader span {
      position: absolute;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background: #f00;
      transform: scaleX(0);
      transform-origin: left;
    }

    @media only screen and (min-width: 800px) {
      :root {
        --card-width: 250px;
        --card-height: 400px;
      }
    }

    .support {
      position: absolute;
      right: 10px;
      bottom: 10px;
      padding: 10px;
      display: flex;
    }

    .support a {
      margin: 0 10px;
      color: #fff;
      font-size: 1.8rem;
      backface-visibility: hidden;
      transition: all 150ms ease;
    }

    .support a:hover {
      transform: scale(1.1);
    }
  </style>

</head>

<body>
  <script>
    alert(444)
    alert("세션" + ${ sessionScope.userEmail } + ${ sessionScope.userName } + ${ sessionScope.userType })
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
          durl
        </div>
      </div>
    </div>


    <div class="app__bg">
      <div class="app__bg__image current--image">
        <img src="img/index/joinbackground.png" alt="" />
      </div>
      <div class="app__bg__image next--image">
        <img src="img/index/whitebackground.png" alt="" />
      </div>
      <div class="app__bg__image previous--image">
        <img src="img/index/whitebackground.png" alt="" />
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
  <script type="text/javascript" src="${pageContext.request.contextPath}/JS/certificate_style.js"></script>
</body>

</html>