<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/examschedule.css">
<title>자공자 토익</title>

<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/base.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/common.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/layout.css">
</head>

<body>
	<div id="wrap">
		<div id="container">
			<div class="main contents">

				<div class="content exam-schedule">
					<div class="inner">
						<div class="tit-wrap">
							<h2 class="main-tit">${notOverlapedJSON[0].implYy}년도 ${sessionScope.jmfldnm} 시험일정</h2>
						</div>
						<div class="box-wrap type03">
						<c:forEach var="i" items="${notOverlapedJSON}">
							
							<!--============================================테스트용============================================  -->
							<div class="box">
								<div class="main-info">
									<div class="item_label">
										<span class="expected" style="color: #465fc6;">접수대기</span> <span
											class="d-day"
											style="color: #465fc6; border: 1px solid #465fc6;">64</span>
									</div>
									<p class="dream">
										[제<span class="round mont" style="color: #465fc6;">${i.implSeq}</span>회
										필기시험]
									</p>
									<p class="txt_type01 bold">
										<span style="color: #465fc6;">${i.docExamStartDt}</span> ~ <span
											style="color: #465fc6;">${i.docExamEndDt}</span>
									</p>
								</div>
								<div class="sub-info">
									<p class="txt_type03 color medium">
										접수기간 : <span>${i.docRegStartDt}</span>~<span>${i.docRegEndDt}</span>
									</p>
									<p class="txt_type03 medium">
										합격자 발표 : <span>${i.docPassDt}</span>
									</p>
								</div>
								<br>
								<div class="main-info">
									<div class="item_label">
										<span class="expected" style="color: #465fc6;">접수대기</span> <span
											class="d-day"
											style="color: #465fc6; border: 1px solid #465fc6;">64</span>
									</div>
									<p class="dream">
										[제<span class="round mont" style="color: #465fc6;">${i.implSeq}</span>회
										실기시험]
									</p>
									<p class="txt_type01 bold">
										<span style="color: #465fc6;">${i.pracExamStartDt}</span>~ <span
											style="color: #465fc6;">${i.pracExamEndDt}</span>
									</p>
								</div>
								<div class="sub-info">
									<p class="txt_type03 color medium">
										접수기간 : <span>${i.pracRegStartDt}</span>~<span>${i.pracRegEndDt}</span>
									</p>
									<p class="txt_type03 medium">
										합격자 발표 : <span>${i.pracPassDt}</span>
									</p>
								</div>


								<div class="btn-wrap type02">
									<button type="button"
										class="btn btn-lg btn-normal w100 disabled">접수기간이
										아닙니다.</button>
								</div>

							</div>
							<!-- =================================================테스트용============================================= -->
							</c:forEach>

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
                console.log(${notOverlapedJSON})
                </script>

</body>

</html>