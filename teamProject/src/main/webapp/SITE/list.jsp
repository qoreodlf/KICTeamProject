<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>지격증 공부하자</title>
        <!-- CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/list_style.css">

    </head>

    <body>

        <!-- LIST BOX -->
        <div class="container_list">
            <!-- 1BOX -->
            <div class="card_list">
                <div class="imgBx_list">
                    <img src="https://i.pinimg.com/564x/81/5a/98/815a98ea4e21bbe4fe28327377a8a1c0.jpg" alt="">
                </div>
                <div class="contentBx_list">
                    <div class="content_list">
                        <h3>건설</h3>
                        <c:forEach var="i" items="${exCon}">
                            <p class="copy"
                                onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">
                                ${i.jmfldnm}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!-- 2BOX -->
            <div class="card_list">
                <div class="imgBx_list">
                    <img src="https://i.pinimg.com/564x/f5/bd/d5/f5bdd5ae9a60c5f445f35c121ce6fc64.jpg" alt="">
                </div>
                <div class="contentBx_list">
                    <div class="content_list">
                        <h3>기계</h3>
                        <c:forEach var="i" items="${exMa}">
                            <p class="copy"
                                onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">
                                ${i.jmfldnm}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!-- 3BOX -->
            <div class="card_list">
                <div class="imgBx_list">
                    <img src="https://i.pinimg.com/564x/9f/37/48/9f37487d9eecaf39b7de4b5c9afc0bbd.jpg" alt="">
                </div>
                <div class="contentBx_list">
                    <div class="content_list">
                        <h3>정보통신</h3>
                        <c:forEach var="i" items="${exInfo}">
                            <p class="copy"
                                onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">
                                ${i.jmfldnm}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!-- 4BOX -->
            <div class="card_list">
                <div class="imgBx_list">
                    <img src="https://wallpaper.dog/large/5533439.jpg" alt="">
                </div>
                <div class="contentBx_list">
                    <div class="content_list">
                        <h3>안전관리</h3>
                        <c:forEach var="i" items="${exSafe}">
                            <p class="copy"
                                onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">
                                ${i.jmfldnm}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!-- 5BOX -->
            <div class="card_list">
                <div class="imgBx_list">
                    <img src="https://i.pinimg.com/564x/03/57/f0/0357f08371f9b9e8d7606f0d5a7cb307.jpg" alt="">
                </div>
                <div class="contentBx_list">
                    <div class="content_list">
                        <h3>농림어업</h3>
                        <c:forEach var="i" items="${exFor}">
                            <p class="copy"
                                onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">
                                ${i.jmfldnm}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <!-- 6BOX -->
            <div class="card_list">
                <div class="imgBx_list">
                    <img src="https://i.pinimg.com/564x/6a/f2/52/6af252f8048b6236f5e2c979ad105feb.jpg" alt="">
                </div>
                <div class="contentBx_list">
                    <div class="content_list">
                        <h3>환경ㆍ에너지</h3>
                        <c:forEach var="i" items="${exEn}">
                            <p class="copy"
                                onclick="location.href='${pageContext.request.contextPath}/losh/source?jmcd=${i.jmcd}&jmfldnm=${i.jmfldnm}'">
                                ${i.jmfldnm}</p>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>