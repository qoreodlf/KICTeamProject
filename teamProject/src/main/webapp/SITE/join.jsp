<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자격증 공부하자</title>
    <!-- <link rel="stylesheet" href="css/join.css"> -->
    
    <style>
    
    @charset "UTF-8";

/* FONT */
/* Kanit */
@import url('https://fonts.googleapis.com/css2?family=Kanit:wght@500&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Kanit', sans-serif;
}

.ayr{
    position: relative;
    width: 100%;
    height: 100vh;
    background: #1f2029;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
}

h2{
    font-size: 5em;
    color: #FFF;
    text-transform: uppercase;
    text-align: center;
    display: flex;
    /* 드래그 방지 */
    -webkit-user-select:none;
    -moz-user-select:none;
    -ms-user-select:none;
    user-select:none;
    /* END */
    
    cursor: pointer;

}

h2 span{
    transition: 1s;
}
h2:hover span{
    filter: blur(10px);
    opacity: 0;
    transform: scale(1);
}
    
    </style>
</head>

<body>
    <section class="ayr" onclick="location.href='#'">
        <h2 onclick="location.href='#'">
            <span>W</span>
            <span>H</span>
            <span>O</span>
            <span>&nbsp;</span>
            <span>A</span>
            <span>R</span>
            <span>E</span>
            <span>&nbsp;</span>
            <span>Y</span>
            <span>O</span>
            <span>U</span>
            <span>?</span>
        </h2>
    </section>

</body>

</html>