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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes" />

<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<title>자격증 공부하자</title>


<meta name="robots" content="noindex,noarchive" />

<link href="/board/words?page=2" rel="next" />
<link rel="canonical" href="https://www.klt.or.kr/board/words" />
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/base.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/common.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/main.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/exam.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/help.css">




<style>
body {
	position: relative;
	top: -200px;
}

.good, .viewer {
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
	<script
		src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	<link rel="stylesheet"
		href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

	<!-- <script src="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.js"></script> -->
	<!-- <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.min.css" /> -->
	<div id="wrap">
		<div id="container">
			<div class="contents help notice mg_mobile">

				<form id="boardSearchParam" action="/board/words" method="get">
					<input id="boardCode" name="boardCode" type="hidden" value="words" />
				</form>
				<div class="inner">
					<h2 class="top_title">
						${sessionScope.jmfldnm} 문제출제<br>
					</h2>
					<form
						action="${pageContext.request.contextPath}/workbook/workbookpro"
						method="post">
						<input type="text" placeholder="제목을 입력하세요" name="wbTittle"
							style="border-radius: 5px; background: #F7F9FC;">
						<div class="info_box">

							<br> <br>
							<div class="tab-panel">
								<!-- 공지사항 -->
								<div id="content1" class="info_box on">
									<!-- 기본 10개 노출, 더보기 선택시 5개씩 추가 노출  -->
									<div id="editor"></div>
									<div class="btn_wd500 btn_wrap">
										<textarea rows="" cols="" name="wbText"></textarea>
										<div class="answerbox">
											<input type="hidden" id="wbText" name="wbText">
											<h2>정답</h2>
											<span>1.</span> <input type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="1" value="1"> <span>2.</span> <input
												type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="2" value="2"> <span>3.</span> <input
												type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="3" value="3"> <span>4.</span> <input
												type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="4" value="4"> <span>5.</span> <input
												type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="5" value="5">

										</div>
										<br>
									
										<button type="submit" class="btn btn-lg btn-success"
											>작성완료</button>
										<button type="button" class="btn btn-lg btn-success"
											onclick="href='${pageContext.request.contextPath}/workbook/workbooklist'">취소</button>
					</form>

				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
</body>

</html>