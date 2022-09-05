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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/css/post.css" />


</head>

<body>
	<script
		src="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.js"></script>
	<link rel="stylesheet"
		href="https://uicdn.toast.com/editor/latest/toastui-editor-viewer.min.css" />

	<div id="wrap">
		<div id="container">
			<div class="contents help notice mg_mobile">

				<form id="boardSearchParam" action="/board/words" method="get">
					<input id="boardCode" name="boardCode" type="hidden" value="words" />
				</form>
				<div class="inner">
					<h2 class="top_title">${selectedWB.wbTittle}<br>
					</h2>
					<div class="info_box">
						<div class="input_wrap w100 ">
							<form id="boardSearchParam" action="/board/words" method="get">
								<input type="hidden" name="where" value="SUBJECT_CONTENT" />
								<!-- <input type="text" class="input_txt required _filter" placeholder="제목" maxlength="20"> -->
								<p class="viewer">작성자 : ${selectedWB.userId}</p>
								<p class="viewer">작성날짜 : ${selectedWB.wbDate}</p>
							</form>
						</div>
						<br> <br>

						<div class="tab-panel">
							<!-- 공지사항 -->
							<div id="content1" class="info_box on">
								<!-- 기본 10개 노출, 더보기 선택시 5개씩 추가 노출  -->
								<div id="editor"></div>
								<div class="btn_wd500 btn_wrap">
									<hr>
									<h4>${selectedWB.wbText}</h4>
									<br> <br>

									<div class="answerbox">
										<input type="hidden" id="wbText" name="wbText">
										<h2>정답</h2>
										<span>1.</span> <input type="radio" name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="1" value="1"> <span>2.</span> <input type="radio"
											name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="2" value="2"> <span>3.</span> <input type="radio"
											name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="3" value="3"> <span>4.</span> <input type="radio"
											name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="4" value="4"> <span>5.</span> <input type="radio"
											name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="5" value="5">

									</div>
									<br>
									<p class="comment">댓글 : 0개</p>

									<select class="orderby" style="appearance: none;">
										<option value="1">날짜 오름차순</option>
										<option value="2">날짜 내림차순</option>
									</select>

									<p class="orderbytxt">정렬기준</p>
									<hr>
									<br>
									<textarea name="comment" cols="10" rows="10"
										style="height: 54px; border-radius: 5px; font-size: 1.2rem;"
										placeholder="댓글작성"></textarea>

									<script type="text/javascript">
									
									</script>


									<button type="button" class="btn btn-lg btn-success"
										style="width: 120px; height: 50px;" onclick="save();">댓글달기</button>
									<button type="button" class="btn btn-lg btn-success"
										style="width: 120px; height: 50px;" onclick="checkAnswer();">문제풀기</button>
									<button type="button" class="btn btn-lg btn-success"
										style="width: 120px; height: 50px;" onclick="like();">추천</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
		//라디오체크에 체크된 정답과 문제 정답 비교
		console.log(${selectedWB.wbAnswer})
		function checkAnswer() {
			var checkedAnswer  //체크된 정답
			var wbAnswer = ${selectedWB.wbAnswer}  //문제의 정답
			var radioLenght=document.getElementsByName('Answer').length

			 for (var i=0; i<radioLenght; i++) {
		            if (document.getElementsByName("Answer")[i].checked == true) {
		                checkedAnswer = document.getElementsByName("Answer")[i].value
		            }
		        }

			if(checkedAnswer == null){
				alert("정답을 체크해주세요")
			} else if(wbAnswer == checkedAnswer){
				alert("정답입니다!")
			} else {
				alert("오답입니다")
			} 
		}
		
		var wbNum="${selectedWB.wbNum}"
		var userId = "${sessionScope.userId}"
		var url="${pageContext.request.contextPath}/workbook/updatelike?wbNum="+wbNum+"&userId="+userId
		function like() {
			fetch(url)
			.then(response=>{
				 if(response == 0){
                 	alert("추천완료.");
                 	location.reload();
                 }
                 else if (response == 1){
                  alert("추천취소");
                 	location.reload();
                 }
				})
		}
		
		
		</script>
</body>

</html>