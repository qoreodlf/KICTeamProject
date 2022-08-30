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
        body {
            position: relative;
            top: -200px;
        }

        .good,
        .viewer {
            position: relative;
            padding: 0 20px 0 0;
            font-weight: bold;
            left: 3%;
        }

        .btn:hover {
            background: #4474E6;
            color: #FFF;
        }
    </style>


</head>

<body>
    <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
    <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

    <!-- <script src="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.js"></script> -->
    <!-- <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.min.css" /> -->
    <div id="wrap">
        <div id="container">
            <div class="contents help notice mg_mobile">

                <form id="boardSearchParam" action="/board/words" method="get"><input id="boardCode" name="boardCode"
                        type="hidden" value="words" /></form>
                <div class="inner">
                    <h2 class="top_title">[자격증 종류]<br></h2>

                    <input type="text" placeholder="제목을 입력하세요" style="border-radius: 5px; background: #F7F9FC;">
                    <div class="info_box">
                        <div class="input_wrap w100 ">
                            <form id="boardSearchParam" action="/board/words" method="get"><input type="hidden"
                                    name="where" value="SUBJECT_CONTENT" placeholder="내용을 입력하세요" />
                                <!-- <input type="text" class="input_txt required _filter" placeholder="제목" maxlength="20"> -->
                            </form>
                        </div>
                        <br><br>
                        <div class="tab-panel">
                            <!-- 공지사항 -->
                            <div id="content1" class="info_box on">
                                <!-- 기본 10개 노출, 더보기 선택시 5개씩 추가 노출  -->
                                <div id="editor"></div>
                                <div class="btn_wd500 btn_wrap">

                                    <script>
                                        const htmlContents = '<blockquote><p>문제 내용을 입력하세요</p></blockquote><p><br></p><blockquote><p>보기를 입력하세요 ( 최대 5개)</p><p>1 )</p><p>2 )</p><p>3 )</p><p>4 )</p><p>5 )</p></blockquote>';

                                        const editor = new toastui.Editor({
                                            el: document.querySelector('#editor'),
                                            height: '500px',
                                            initialValue: htmlContents,
                                            initialEditType: 'wysiwyg'
                                        });

                                        /*
                                        const viewer = new toastui.Editor({
                                            el: document.querySelector('#editor'),
                                            initialValue: htmlContents
                                        });
                                        */

                                        const save = () => {
                                            let htmlContents = editor.getHTML();
                                            if ((htmlContents || '') === '') {
                                                alert('내용을 입력해주세요.');
                                                return;
                                            } else {
                                                let param = {
                                                    userId: 123123,
                                                    date: new Date(),
                                                    htmlContents: htmlContents
                                                }

                                                console.log(param);
                                            }
                                        }
                                    </script>
                                    <div class="answerbox">

                                        <h2>정답</h2>
                                        <span>1.</span> <input type="radio" name="xxx"
                                            style="position:relative; width: 20px; height: 20px; margin: 0 10px 0 0; top:-2px"
                                            id="answer1">

                                        <span>2.</span> <input type="radio" name="xxx"
                                            style="position:relative; width: 20px; height: 20px; margin: 0 10px 0 0; top:-2px"
                                            id="answer1">

                                        <span>3.</span> <input type="radio" name="xxx"
                                            style="position:relative; width: 20px; height: 20px; margin: 0 10px 0 0; top:-2px"
                                            id="answer1">

                                        <span>4.</span> <input type="radio" name="xxx"
                                            style="position:relative; width: 20px; height: 20px; margin: 0 10px 0 0; top:-2px"
                                            id="answer1">

                                        <span>5.</span> <input type="radio" name="xxx"
                                            style="position:relative; width: 20px; height: 20px; margin: 0 10px 0 0; top:-2px"
                                            id="answer1">

                                    </div>

                                    <br>

                                    <button type="button" class="btn btn-lg btn-success" onclick="save();">작성완료</button>
                                    <button type="button" class="btn btn-lg btn-success">취소</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>

</html>