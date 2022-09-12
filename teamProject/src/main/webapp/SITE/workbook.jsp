<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
    <meta name="_csrf" content="a7088b80-c6e9-4969-acc8-b6647b4b4d15" />
    <meta name="_csrf_header" content="X-CSRF-TOKEN" />

    <meta charset="UTF-8">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />


    <title>자격증 공부하자</title>


    <meta name="robots" content="noindex,noarchive" />

    <link href="/board/words?page=2" rel="next" />
    <link rel="canonical" href="https://www.klt.or.kr/board/words" />
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/base.css">
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/common.css">
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/layout.css">
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/main.css">
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/exam.css">
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/help.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">




    <style>
        .good,
        .viewer {
            float: right;
            padding: 0 20px 0 0;
            font-weight: bold;
        }
    </style>


</head>

<body>

<!-- Header -->
<header>
	<a href="${pageContext.request.contextPath}/losh/index" class="logo">JAGONGJA.</a>
	<ul>
		<c:if test="${sessionScope.userId eq null}">
			<li><a
				href="${pageContext.request.contextPath}/member/loginform">SIGN
					IN/SIGN UP</a></li>
		</c:if>

		<c:if test="${sessionScope.userId ne null}">
			<li><a href="${pageContext.request.contextPath}/odnote/odnote"
				id="home">오답노트</a></li>
			<li><a href="${pageContext.request.contextPath}/member/mypage"
				id="home">마이 페이지(${sessionScope.userNickname})</a></li>
			<li><a href="${pageContext.request.contextPath}/member/logout">LOG
					OUT</a></li>
		</c:if>
	</ul>

</header>
    <div id="wrap">
        <div id="container">
            <div class="contents help notice mg_mobile">

                <form id="boardSearchParam" action="/board/words" method="get"><input id="boardCode" name="boardCode"
                        type="hidden" value="words" /></form>
                <div class="inner">
                    <h2 class="top_title" style="color: #FFF;">문제집 <br> [${sessionScope.jmfldnm}]</h2>
                    <div class="info_box">
                        <div class="input_wrap w100 ">
                            <!-- <form id="boardSearchParam" action="/board/words" method="get"><input type="hidden"
                                    name="where" value="SUBJECT_CONTENT" />
                                <input id="query" name="query" title="검색어" placeholder="검색어를 입력해 주세요. (제목, 내용)"
                                    class="input_txt required _filter" type="text" value="" maxlength="20" /><button
                                    type="submit" class="btn_search">검색하기</button>
                            </form> -->
                        </div>
                    </div>
                    <div class="tab-panel">
                        <!-- 공지사항 -->
                        <div id="content1" class="info_box on">
                            <!-- 기본 10개 노출, 더보기 선택시 5개씩 추가 노출  -->
                            <ul id="list-data" class="list">
                                  <c:forEach var="i" items="${wbList}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/workbook/workbookpost?wbNum=${i.wbNum}" class="noti-tit">${i.wbTittle}</a>
                                    <p class="good">추천수 : ${i.recocnt}</p>
                                    <p class="viewer">조회수 : ${i.readcnt}</p>
                                    <p class="date mont">출제자 : ${i.userNickname}</p>
                                </li>
                                </c:forEach>
                            </ul>

                            <div class="btn_wd640 btn_wrap">
                           <!--      <button type="button" class="btn btn-lg btn-success">더보기</button> -->
                                <br><br>
                                <button type="button" class="btn btn-lg btn-success" onclick="location.href='${pageContext.request.contextPath}/workbook/workbookform'">
                                문제 출제</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>