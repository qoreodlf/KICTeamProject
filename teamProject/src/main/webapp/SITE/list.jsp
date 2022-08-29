<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>자격증 공부하자</title>
    <!-- <link rel="stylesheet" type="text/css" href="css/list.css"> -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        
        
        <style>
        
        @charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&family=IBM+Plex+Sans+KR&family=Kanit:wght@500&display=swap');

 :root {
      --d: 700ms;
      --e: cubic-bezier(0.19, 1, 0.22, 1);
      --font-sans: 'Rubik', sans-serif;
      --font-serif: 'Cardo', serif;
}
 * {
     margin: 0;
     padding: 0;
      box-sizing: border-box;
      overflow: hidden;

      /* 드래그방지 */
      -webkit-user-select:none;
      -moz-user-select:none;
      -ms-user-select:none;
      user-select:none;
    
}
 html, body {
      height: 100%;
}
 body {
      display: flex;
      justify-content: center;
      background: #FFF;
}
 .page-content {
      display: grid;
      grid-gap: 1rem;
      padding: 1rem;
      max-width: 100%;
      margin: 0 auto;
      font-family: var(--font-sans);
      display: flex;
}
 @media (min-width: 600px) {
      .page-content {
           grid-template-columns: repeat(2, 1fr);
     }
}
 @media (min-width: 800px) {
      .page-content {
           grid-template-columns: repeat(4, 1fr);
     }
}
 .card {
      position: relative;
      display: flex;
      align-items: flex-end;
	  overflow: hidden;
      padding: 1rem;
      width: 200px;
      text-align: center;
      color: whitesmoke;
      background-color: whitesmoke;
      box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1), 0 2px 2px rgba(0, 0, 0, 0.1), 0 4px 4px rgba(0, 0, 0, 0.1), 0 8px 8px rgba(0, 0, 0, 0.1), 0 16px 16px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
}
 @media (min-width: 600px) {
      .card {
           height: 100%;
     }
}
 .card:before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 110%;
      background-size: cover;
      background-position: 0 0;
      transition: transform calc(var(--d) * 1.5) var(--e);
      pointer-events: none;
}
 .card:after {
      content: '';
      display: block;
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 200%;
      pointer-events: none;
      background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.009) 11.7%, rgba(0, 0, 0, 0.034) 22.1%, rgba(0, 0, 0, 0.072) 31.2%, rgba(0, 0, 0, 0.123) 39.4%, rgba(0, 0, 0, 0.182) 46.6%, rgba(0, 0, 0, 0.249) 53.1%, rgba(0, 0, 0, 0.320) 58.9%, rgba(0, 0, 0, 0.394) 64.3%, rgba(0, 0, 0, 0.468) 69.3%, rgba(0, 0, 0, 0.540) 74.1%, rgba(0, 0, 0, 0.607) 78.8%, rgba(0, 0, 0, 0.668) 83.6%, rgba(0, 0, 0, 0.721) 88.7%, rgba(0, 0, 0, 0.762) 94.1%, rgba(0, 0, 0, 0.790) 100%);
      transform: translateY(-50%);
      transition: transform calc(var(--d) * 2) var(--e);
      transition: all 0.3s ease;
}

 .card:nth-child(1):before {
      background-image: url(https://i.pinimg.com/564x/81/5a/98/815a98ea4e21bbe4fe28327377a8a1c0.jpg);
}
 .card:nth-child(2):before {
      background-image: url(https://i.pinimg.com/564x/f5/bd/d5/f5bdd5ae9a60c5f445f35c121ce6fc64.jpg);
}
 .card:nth-child(3):before {
      background-image: url(https://i.pinimg.com/564x/9f/37/48/9f37487d9eecaf39b7de4b5c9afc0bbd.jpg);
}
 .card:nth-child(4):before {
      background-image: url(https://i.pinimg.com/736x/4a/e2/cd/4ae2cd3a5023659cb59ed3a09de29b99.jpg);
}
.card:nth-child(5):before {
     background-image: url(https://wallpaper.dog/large/5533439.jpg);
}
.card:nth-child(6):before {
     background-image: url(https://i.pinimg.com/564x/03/57/f0/0357f08371f9b9e8d7606f0d5a7cb307.jpg);
}
.card:nth-child(7):before {
     background-image: url(https://i.pinimg.com/564x/6a/f2/52/6af252f8048b6236f5e2c979ad105feb.jpg);
}

 .content {
      position: relative;
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 100%;
      padding: 1rem;
      transition: transform var(--d) var(--e);
      z-index: 1;
}
 .content > * + * {
      margin-top: 1rem;
}
 .title {
      font-size: 1.4rem;
      font-weight: bold;
      line-height: 1.2;
}
 .copy {
     font-family: 'Hahmlet', serif;
     color: #999;
      font-size: 1.125rem;
      line-height: 1.35;
      cursor: pointer;
      font-family: 'IBM Plex Sans KR', sans-serif;
}

 .copy:hover {
     color: #FFF;
     font-weight: bold;
     text-shadow: 0 0 5px white;
}

 .btn {
      cursor: pointer;
      margin-top: 1.5rem;
      padding: 0.75rem 1.5rem;
      font-size: 0.65rem;
      font-weight: bold;
      letter-spacing: 0.025rem;
      text-transform: uppercase;
      color: white;
      background-color: black;
      border: none;
}
 .btn:hover {
      background-color: #0d0d0d;
}
 .btn:focus {
      outline: 1px dashed yellow;
      outline-offset: 3px;
}
 @media (hover: hover) and (min-width: 600px) {
      .card:after {
           transform: translateY(0);
     }
      .content {
           transform: translateY(calc(100% - 4.5rem));
     }
      .content > *:not(.title) {
           opacity: 0;
           transform: translateY(1rem);
           transition: transform var(--d) var(--e), opacity var(--d) var(--e);
     }
      .card:hover, .card:focus-within {
           align-items: center;
     }
      .card:hover:before, .card:focus-within:before {
           transform: translateY(-4%);
     }
      .card:hover:after, .card:focus-within:after {
           transform: translateY(-50%);
     }
      .card:hover .content, .card:focus-within .content {
           transform: translateY(0);
     }
      .card:hover .content > *:not(.title), .card:focus-within .content > *:not(.title) {
           opacity: 1;
           transform: translateY(0);
           transition-delay: calc(var(--d) / 8);
     }
      .card:focus-within:before, .card:focus-within:after, .card:focus-within .content, .card:focus-within .content > *:not(.title) {
           transition-duration: 0s;
     }
}
        
        
        </style>
        
</head>

<body>
    <main class="page-content">
        <div class="card">
            <div class="content">
                <h2 class="title">건설</h2>
                <p class="copy" onclick="location.href='#'">건축</p>
                <p class="copy">토목</p>
                <p class="copy">조경</p>
                <p class="copy">교통</p>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2 class="title">기계</h2>
                <p class="copy">일반기계</p>
                <p class="copy">철도차량</p>
                <p class="copy">자동차정비</p>
                <p class="copy">조선</p>
                <p class="copy">항공</p>
                <p class="copy">건설기계설비</p>
                <p class="copy">사출금형설계</p>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2 class="title">정보통신</h2>
                <p class="copy">빅데이터분석</p>
                <p class="copy">방송통신</p>
                <p class="copy">전파전자통신</p>
                <p class="copy"></p>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2 class="title">식품가공</h2>
                <p class="copy">수산제조</p>
                <p class="copy">식품</p>
                <p class="copy">식육가공</p>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2 class="title">안전관리</h2>
                <p class="copy">가스</p>
                <p class="copy">건설안전</p>
                <p class="copy">산업안전</p>
                <p class="copy">산업위생관리</p>
                <p class="copy">소방설비</p>
                <p class="copy">인간공학</p>
                <p class="copy">화재감식평가</p>
                <p class="copy">농작업안전보건</p>
                <p class="copy">방재</p>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2 class="title">농림어업</h2>
                <p class="copy">시설원예</p>
                <p class="copy">축산</p>
                <p class="copy">수산양식</p>
                <p class="copy">산림</p>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2 class="title">환경ㆍ에너지</h2>
                <p class="copy">대기환경</p>
                <p class="copy">생물분류</p>
                <p class="copy">수질환경</p>
                <p class="copy">기상</p>
                <p class="copy">에너지관리</p>
                <p class="copy">원자력</p>
                <p class="copy">신재생에너지<br>발전설비</p>
            </div>
        </div>
    </main>
</body>  

</html>