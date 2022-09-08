<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="https://kltfile.blob.core.windows.net/content/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/main.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/exam.css">
<link rel="stylesheet" type="text/css"
	href="https://kltfile.blob.core.windows.net/content/css/help.css">

<!-- MY CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
</head>

<body style="overflow: scroll;">


	<!-- TOAST UI -->
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
					<h4 class="" style="color: #FFF;">[${sessionScope.jmfldnm}]</h4>
					<p class="viewer" style="color: #FFF;">작성자 :
						${selectedWB.userId}</p>

					<p class="viewer" style="color: #FFF;">
						작성날짜 :
						<fmt:formatDate value="${selectedWB.wbDate}"
							pattern="yyyy년 MM월 dd일" />
					</p>
					<h2 class="top_title" style="color: #FFF;">${selectedWB.wbTittle}<br>
					</h2>
					<div class="info_box">
						<div class="input_wrap w100 ">

							<input type="hidden" name="where" value="SUBJECT_CONTENT" />
							<!-- <input type="text" class="input_txt required _filter" placeholder="제목" maxlength="20"> -->

						</div>
						<br> <br>

						<div class="tab-panel">
							<!-- 공지사항 -->
							<div id="content1" class="info_box on">
								<!-- 기본 10개 노출, 더보기 선택시 5개씩 추가 노출  -->
								<div id="editor"></div>
								<div class="btn_wd500 btn_wrap">
									<hr>
									<h4 style="color: #FFF;">1. ${selectedWB.wbItem1}</h4>
									<h4 style="color: #FFF;">2. ${selectedWB.wbItem2}</h4>
									<h4 style="color: #FFF;">3. ${selectedWB.wbItem3}</h4>
									<h4 style="color: #FFF;">4. ${selectedWB.wbItem4}</h4>
									<h4 style="color: #FFF;">5. ${selectedWB.wbItem5}</h4>
									<br> <br>

									<div class="answerbox">
										<input type="hidden" id="wbText" name="wbText">
										<h2 style="color: #FFF;">정답</h2>
										<span style="color: #FFF;">1.</span> <input type="radio"
											name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="1" value="1"> <span style="color: #FFF;">2.</span>
										<input type="radio" name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="2" value="2"> <span style="color: #FFF;">3.</span>
										<input type="radio" name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="3" value="3"> <span style="color: #FFF;">4.</span>
										<input type="radio" name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="4" value="4"> <span style="color: #FFF;">5.</span>
										<input type="radio" name="Answer"
											style="position: relative; width: 20px; height: 20px; margin: 0 10px 0 0; top: -2px"
											id="5" value="5">

									</div>
									<br>
									<div style="float: right; display: flex;">
										<p class="comment" style="color: #FFF;">댓글 :
											${countReply}개</p>
										<p class="#" style="color: #FFF; margin: 0 0 0 20px">조회수 :
											${selectedWB.readcnt}개</p>
										<p class="#" style="color: #FFF; margin: 0 0 0 20px">추천수 :
											${selectedWB.recocnt}개</p>
									</div>
									<hr>
									<br>
									<button type="button" class="btn btn-lg btn-success"
										style="width: 120px; height: 50px; border: 0; color: #000;"
										onclick="checkAnswer();">문제풀기</button>

									<button type="button" class="btn btn-lg btn-success"
										style="width: 120px; height: 50px; border: 0; color: #000"
										onclick="like();">추천</button>

									<c:if test="${sessionScope.userId eq selectedWB.userId}">
										<button type="button" class="btn btn-lg btn-success"
											style="width: 120px; height: 50px; border: 0; color: #000"
											onclick="location.href='${pageContext.request.contextPath}/workbook/deleteworkbook?wbNum=${selectedWB.wbNum}'">문제
											삭제</button>
									</c:if>
									<br> <br>
									<c:forEach var="i" items="${replyList}">

										<div style="background: #fff;">
											<!-- 댓글 -->

											<textarea name="comment" cols="10" rows="10"
												style="height: 54px; border-radius: 5px; font-size: 1.2rem; background: #FFF;"
												placeholder="${i.userId} : ${i.reText}" disabled></textarea>
											<c:if test="${sessionScope.userId eq i.userId}">
												<div>
													<button value="${i.replyNum}" onclick="deleteReply(this)">댓글삭제</button>
												</div>
											</c:if>
										</div>
									</c:forEach>
									<hr>
									<br> <br>
									<c:if test="${sessionScope.userId ne null}">
										<textarea name="comment" id="reText" cols="10" rows="10"
											style="height: 54px; border-radius: 5px; font-size: 1.2rem;"
											placeholder="댓글 작성"></textarea>

										<br>
										<br>

										<button type="button" class="btn btn-lg btn-success"
											style="width: 120px; height: 50px; border: 0; color: #000"
											onclick="addReply();">댓글등록</button>
									</c:if>
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
			if(${sessionScope.userId eq null}){
				alert("로그인 후 이용해주세요")
				return
			}
			
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
				if(${sessionScope.userId ne selectedWB.userId}){  //문제출제자id와 문제 출제자 아이디가 같으면 od추가안함
					odnote()
				}
			} 
		}
		
		var wbNum="${selectedWB.wbNum}"
		var jmcd="${selectedWB.wbJmcd}"
		var userId = "${sessionScope.userId}"
		var odurl = "${pageContext.request.contextPath}/odnote/addodnote?wbNum="+wbNum+"&userId="+userId+"&jmcd="+jmcd
		var likeurl="${pageContext.request.contextPath}/workbook/updatelike?wbNum="+wbNum+"&userId="+userId
				
				//오답노트추가
		function odnote() {
			fetch(odurl)
			.then(response=>{
				response.text().then(function(odCheck){
					console.log("odcheck: "+odCheck)
					 if(odCheck == 0){
		                 	alert("오답노트에 추가되었습니다.");
		                 	
		                 }
		                 else if (odCheck == 1){
		                  alert("오답노트에 추가되어있는 문제입니다.");
		                 
		                 }
					})			
				})
		}
		
				//추천
		function like() {
			fetch(likeurl)
			.then(response=>{
				response.text().then(function(likeCheck){
					 if(likeCheck == 0){
		                 	alert("문제를 추천하였습니다.");
		                 	location.reload()
		                 }
		                 else if (likeCheck == 1){
		                  alert("추천을 취소하였습니다.");
		                  location.reload()
		                 }
					})			
				})
		}
				//댓글추가
		function addReply() {
			console.log("oooo")
			var reText = document.getElementById("reText").value
			if(reText==null||reText==""){
				alert("댓글을 작성해주세요")
				return
			}
			var url = "${pageContext.request.contextPath}/workbook/addreply?wbNum="+wbNum+"&userId="+userId+"&reText="+reText
			console.log(url)
			fetch(url)
			.then(response=>location.reload())
			document.getElementById("reText").value = ""
		}
		
		//댓글삭제
		function deleteReply(t) {
			console.log(t.value)
			var replyNum = t.value
			var url = "${pageContext.request.contextPath}/workbook/deletereply?replyNum="+replyNum
			fetch(url)
			.then(response=>location.reload())		
		}
		
		
		</script>
</body>

</html>