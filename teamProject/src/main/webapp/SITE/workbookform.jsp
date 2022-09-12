<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자격증 공부하자</title>
<!-- LINK -->
<link href="/board/words?page=2" rel="next" />
<link rel="canonical" href="https://www.klt.or.kr/board/words" />

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/base.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/common.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/help.css">
<!-- MY CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/wb_style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
</head>

<body>
<%@include file="/SITE/common/HeaderMesh.jsp"%>
	<script
		src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	<link rel="stylesheet"
		href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

	<div id="wrap">
		<div id="container">
			<div class="contents help notice mg_mobile">

				<form id="boardSearchParam" action="/board/words" method="get">
					<input id="boardCode" name="boardCode" type="hidden" value="words" />
				</form>
				<div class="inner">
					<h2 class="top_title" style="color: #FFF;">
						${sessionScope.jmfldnm} 문제출제<br>
					</h2>
					<form
						action="${pageContext.request.contextPath}/workbook/workbookpro"
						method="post" name="f">
						<input type="text" placeholder="문제제목을 입력하세요(문제는 사지선다로 작성해주세요)"
							name="wbTittle" style="border-radius: 5px; background: #F7F9FC; font-size: 10px;">
						<div class="info_box">

							<br> <br>
							<div class="tab-panel">
								<!-- 공지사항 -->
								<div id="content1" class="info_box on" style="width:500px;">
									<!-- 기본 10개 노출, 더보기 선택시 5개씩 추가 노출  -->
									<div class="btn_wd500 btn_wrap">

										<h5></h5>
										<input type="text" placeholder="1번" name="wbItem1"
											style="border-radius: 3px; background: #F7F9FC; font-size: 8px;">
										<h4>
											<br>
										</h4>
										<input type="text" placeholder="2번" name="wbItem2"
											style="border-radius: 3px; background: #F7F9FC; font-size: 8px;">
										<h4>
											<br>
										</h4>
										<input type="text" placeholder="3번" name="wbItem3"
											style="border-radius: 3px; background: #F7F9FC; font-size: 8px;">
										<h4>
											<br>
										</h4>
										<input type="text" placeholder="4번" name="wbItem4"
											style="border-radius: 3px; background: #F7F9FC; font-size: 8px;">
										<h4>
											<br>
										</h4>


										<div class="answerbox">
											<h2 style="color: #FFF;">정답</h2>
											<span style="color: #FFF;">1.</span> <input type="radio"
												name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="1" value="1"> <span style="color: #FFF;">2.</span>
											<input type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="2" value="2"> <span style="color: #FFF;">3.</span>
											<input type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="3" value="3"> <span style="color: #FFF;">4.</span>
											<input type="radio" name="wbAnswer"
												style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
												id="4" value="4">
								

										</div>
										<br>

										<button type="button" class="btn btn-lg btn-success"
											style="color: #000; border: 0;" onclick="checkInput()">작성완료</button>
										<button type="button" class="btn btn-lg btn-success"
											onclick="location.href='${pageContext.request.contextPath}/workbook/workbooklist'"
											style="color: #000; border: 0;">취소</button>
									</div>
								</div>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
		function checkInput() {
			if (!document.f.wbTittle.value || !document.f.wbItem1.value
					|| !document.f.wbItem2.value || !document.f.wbItem3.value
					|| !document.f.wbItem4.value) {
				alert("빈칸을 채워주세요.")
				return
			}
			if(!document.f.wbAnswer.value){
				alert("정답을 체크해주세요.")
				return
			}
			document.f.submit()
		}
	</script>
</body>

</html>