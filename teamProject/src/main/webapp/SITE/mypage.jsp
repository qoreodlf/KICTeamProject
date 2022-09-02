<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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




    <style>
        .good,
        .viewer {
            float: right;
            padding: 0 20px 0 0;
            font-weight: bold;
        }

        .header_list dl dt a {
            cursor: pointer;
            /* 드래그 방지 */
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        .box-wrap .box {
            width: calc((100% - 800px));
            height: 700px;
            background: #258FFF;
        }

        .box-wrap .box:nth-child(2) {
            width: calc((100% - 400px));
            height: 700px;
            background: #FFF;
            font-weight: bold;
        }

        .box-wrap .box h3 {
            /* text-align: center; */
            padding: 20px 0;
            cursor: pointer;
            transition: all 0.3s ease;
            color: #FFF;
        }

        .box-wrap .box h3:hover {
            transform: scale(1.05);
        }

        .change {
            margin: 20px;
            float: right;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .change:hover {
            transform: scale(1.05);
        }
    </style>


</head>

<body>


    <div id="wrap">
        <header id="header">
            <div class="header_middle main">
                <div class="inner visible">
                    <div class="header_list">
                        <dl>
                            <dt><a>내정보</a></dt>
                        </dl>
                        <dl>
                            <dt><a>나의 커뮤니케이션</a></dt>
                        </dl>
                        <dl>
                            <dt><a>관심 자격증</a></dt>
                        </dl>
                        <dl>
                            <dt><a>출제한 문제</a></dt>
                        </dl>
                        <dl>
                            <dt><a>캘린더</a></dt>
                        </dl>
                    </div>
                </div>
            </div>

            <!-- 이메일 , 내정보 관리 > , 계정 비밀번호 변경 >-->
            <!-- 내정보 관리 : 닉네임 변경 -->
            <!-- 계정 비밀번호 변경 : 현재이메일 : 비밀번호 -->

            <div class="content exam-schedule">
                <div class="inner">
                    <div class="tit-wrap">
                        <h2 class="main-tit">내정보</h2>
                    </div>
                    <div class="box-wrap type03">
                        <div class="box">
                            <h3>계정정보</h3>
                            <h3>내정보 관리</h3>
                            <h3>계정 비밀번호 변경</h3>
                        </div>
                        <div class="box">
                            <p style="padding: 10px;">이메일</p><input type="text" placeholder="E-Mail" disabled="true">

                            <p style="padding: 10px;">전화번호</p><input type="text" placeholder="+82 000-0000-0000"
                                disabled="false">

                            <p style="padding: 10px;">닉네임</p><input type="text" placeholder="닉네임" disabled="false">

                            <p style="padding: 10px;">생일</p><input type="text" placeholder="0000.00.00"
                                disabled="false">

                            <!-- <p style="padding: 10px;">성별</p><input type="text" placeholder="남자"> -->

                            <p style="padding: 10px;">성별</p><select name="gender" id="" disabled="false">
                                <option value="">남자</option>
                                <option value="">여자</option>
                            </select>

                            <button class="change" onclick="handleOnClick()" id="selectbutton">정보변경</button>


                        </div>
                    </div>
                </div>
            </div>
    </div>
    </header>
    </div>
</body>

<script>
    function handleOnClick() {

        var pw = prompt("비밀번호를 입력하세요"); {

            if (pw == "1234") {

                const subs = document.getElementById("selectbutton")

                if (subs.innerText === '정보변경') {
                    subs.innerText = '확인';
                } else {
                    confirm("적용 하시겠습니까?")
                    subs.innerText = '정보변경';
                }
            }
        }
    }

</script>

</html>