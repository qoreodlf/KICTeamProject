<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/examschedule.css">
    <title>자공자 토익</title>

    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/base.css">
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/common.css">
    <link rel="stylesheet" type="text/css" href="https://kltfile.blob.core.windows.net/content/css/layout.css">
</head>

<body>
    <div id="wrap">
        <div id="container">
            <div class="main contents">

                <div class="content exam-schedule">
                    <div class="inner">
                        <div class="tit-wrap">
                            <h2 class="main-tit">${sessionScope.jmfldnm} 시험일정</h2>
                        </div>
                        <div class="box-wrap type03">
                        <!--============================================테스트용============================================  -->
                               <div class="box">
                                <div class="main-info">
                                    <div class="item_label">
                                        <span class="expected" style="color: #465fc6;">접수대기</span>
                                        <span class="d-day" style="color: #465fc6; border: 1px solid #465fc6;">64</span>
                                    </div>
                                    <p class="dream">
                                        [제<span class="round mont" style="color: #465fc6;">1</span>회 필기시험]
                                    </p>
                                    <p class="txt_type01 bold">
                                        <span style="color: #465fc6;" id="docExamStartDt"></span> ~
                                         <span style="color: #465fc6;" id="docExamEndDt"></span>
                                    </p>
                                </div>
                                <div class="sub-info">
                                    <p class="txt_type03 color medium">
                                        접수기간 : <span id="docRegStartDt"></span>~<span id="docRegEndDt"></span>
                                    </p>
                                    <p class="txt_type03 medium">합격자 발표 : <span id="docPassDt"></span></p>
                                </div>
                                <br>
                                <div class="main-info">
                                    <div class="item_label">
                                        <span class="expected" style="color: #465fc6;">접수대기</span>
                                        <span class="d-day" style="color: #465fc6; border: 1px solid #465fc6;">64</span>
                                    </div>
                                 <p class="dream">
                                        [제<span class="round mont" style="color: #465fc6;">1</span>회 실기시험]
                                    </p>
                                    <p class="txt_type01 bold">
                                        <span style="color: #465fc6;" id="pracExamStartDt"></span>~
                                         <span style="color: #465fc6;" id="pracExamEndDt"></span>
                                    </p>
                                </div>
                                <div class="sub-info">
                                    <p class="txt_type03 color medium">
                                        접수기간 : <span id="pracRegStartDt"></span>~<span id="pracRegEndDt"></span>
                                    </p>
                                    <p class="txt_type03 medium">합격자 발표 : <span id="pracPassDt"></span></p>
                                </div>
                                
                                
                                <div class="btn-wrap type02">
                                    <button type="button" class="btn btn-lg btn-normal w100 disabled">접수기간이
                                        아닙니다.</button>
                                </div>
                               
                            </div>
                        <!-- =================================================테스트용============================================= -->
                            <div class="box">
                                <div class="main-info">
                                    <div class="item_label">
                                        <span class="expected" style="color: #465fc6;">접수대기</span>
                                        <span class="d-day" style="color: #465fc6; border: 1px solid #465fc6;">64</span>
                                    </div>
                                    <p class="dream">
                                        [제<span class="round mont" style="color: #465fc6;">1</span>회 ${sessionScope.jmfldnm} 시험]
                                    </p>
                                    <p class="txt_type01 bold">
                                        <span style="color: #465fc6;">2022.01.01</span><span
                                            style="color: #465fc6;">(토)</span><span>오전</span><span>10:00</span>
                                    </p>
                                </div>
                                <div class="sub-info">
                                    <p class="txt_type03 color medium">
                                        접수기간:<span>2022.01.02</span><span>(일)</span><span
                                            style="color: #465fc6;">09:00</span>~<span>2022.01.04</span><span>(화)</span><span
                                            style="color: #465fc6;">18:00</span>
                                    </p>
                                    <p class="txt_type03 medium">성적발표:<span>2022.01.06</span><span>(목)</span></p>
                                </div>
                                <div class="btn-wrap type02">
                                    <button type="button" class="btn btn-lg btn-normal w100 disabled">접수기간이
                                        아닙니다.</button>
                                </div>
                            </div>

                            <div class="box">
                                <div class="main-info">
                                    <div class="item_label">
                                        <span class="expected" style="color: #465fc6;">접수대기</span>
                                        <span class="d-day" style="color: #465fc6; border: 1px solid #465fc6;">65</span>
                                    </div>
                                    <p class="dream">
                                        [제<span class="round mont" style="color: #465fc6;">2</span>회 자격증이름시험]
                                    </p>
                                    <p class="txt_type01 bold">
                                        <span style="color: #465fc6;">2022.01.02</span><span
                                            style="color: #465fc6;">(일)</span><span>오전</span><span>10:00</span>
                                    </p>
                                </div>
                                <div class="sub-info">
                                    <p class="txt_type03 color medium">
                                        접수기간:<span>2022.01.02</span><span>(일)</span><span
                                            style="color: #465fc6;">09:00</span>~<span>2022.01.04</span><span>(화)</span><span
                                            style="color: #465fc6;">18:00</span>
                                    </p>
                                    <p class="txt_type03 medium">성적발표:<span>2022.01.06</span><span>(목)</span></p>
                                </div>
                                <div class="btn-wrap type02">
                                    <button type="button" class="btn btn-lg btn-normal w100 disabled">접수기간이
                                        아닙니다.</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- exam-schedule E -->
                <script type="text/babel">
                    var main = '';
                    var userId = '';
                    var RequestContext = {
                        'currentUrl': 'Lw==',
                        'prevPageUrl': ''
                    };

                    var isMobileLayer = 'true';
                    if (isMobileLayer == 'true') {
                        isMobileLayer = true;
                    }
                    $(function () {
                        Common.handleFrameworkMessage(
                            '',
                            '',
                            '',
                            ''
                        );

                        if (main == 'main') {
                            if ($.cookie('receiptPopup_' + userId) == 'null'
                                || $.cookie('receiptPopup_' + userId) == ''
                                || $.cookie('receiptPopup_' + userId) == undefined
                            ) {
                                Main.receiptPopup('');
                            }
                        }

                    });
                </script>
                
                
                <script type="text/javascript">
                var url = 'http://apis.data.go.kr/B490007/qualExamSchd/getQualExamSchdList'; /*URL*/
                var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'EHwEkDEw%2BYsTJYe52cX%2BJavNTeDYolcEsFZzCZ2OhgNqi02zverwxqHGtbQlvdb%2FoCVyTo2Rg%2B7OIA6IaHJlmA%3D%3D'; /*Service Key*/
                queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
                queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
                queryParams += '&' + encodeURIComponent('dataFormat') + '=' + encodeURIComponent('json'); /**/
                queryParams += '&' + encodeURIComponent('implYy') + '=' + encodeURIComponent('2022'); /**/
                queryParams += '&' + encodeURIComponent('qualgbCd') + '=' + encodeURIComponent('T'); /**/
                queryParams += '&' + encodeURIComponent('jmCd') + '=' + encodeURIComponent(${sessionScope.jmcd}); /**/
                
                
                
                let resList //시험일정 JSON데이터 배열 담는 객체

                fetch(url + queryParams).then(response=>response.json()).then(myJson=>{
                	
                	
                    resList = myJson.body.items
                    console.log(resList)
                    
                    //필기
                    document.getElementById("docExamStartDt").innerHTML = resList[0].docExamStartDt
                    document.getElementById("docExamEndDt").innerHTML = resList[0].docExamEndDt
                    document.getElementById("docRegStartDt").innerHTML = resList[0].docRegStartDt
                    document.getElementById("docRegEndDt").innerHTML = resList[0].docRegEndDt
                    document.getElementById("docPassDt").innerHTML = resList[0].docPassDt

                    //실기
                    document.getElementById("pracExamStartDt").innerHTML = resList[0].pracExamStartDt
                    document.getElementById("pracExamEndDt").innerHTML = resList[0].pracExamEndDt
                    document.getElementById("pracRegStartDt").innerHTML = resList[0].pracRegStartDt
                    document.getElementById("pracRegEndDt").innerHTML = resList[0].pracRegEndDt
                    document.getElementById("pracPassDt").innerHTML = resList[0].pracPassDt
                })
                
                </script>
                
</body>

</html>