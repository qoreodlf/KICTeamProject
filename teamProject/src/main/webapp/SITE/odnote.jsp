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
.check {
	position: relative;
	float: right;
	width: 20px;
	height: 20px;
	right: 1%;
	top: -10px;
}

.list li button:hover {
	text-shadow: 0 0 5px #c1e0ff;
}
</style>


</head>

<body>
	<div id="wrap">
		<div id="container">
			<div class="contents help notice mg_mobile">

				<form id="boardSearchParam" action="/board/words" method="get">
					<input id="boardCode" name="boardCode" type="hidden" value="words" />
				</form>
				<div class="inner">
					<h2 class="top_title">
						문제집 <br> [자격증 이름]
					</h2>
					<div class="info_box">
						<div class="input_wrap w100 ">
							<form id="boardSearchParam" action="/board/words" method="get">
								<input type="hidden" name="where" value="SUBJECT_CONTENT" /> <input
									id="query" name="query" title="검색어"
									placeholder="검색어를 입력해 주세요. (제목, 내용)"
									class="input_txt required _filter" type="text" value=""
									maxlength="20" />
								<button type="submit" class="btn_search">검색하기</button>
							</form>
						</div>
					</div>
					<div class="tab-panel">
						<!-- 공지사항 -->
						<div id="content1" class="info_box on">
						<p>전체선택</p>
						<input type="checkbox" name="checkAll" id="checkAll" class="check" onclick="checkAll()">
						<br>
							<!-- 기본 10개 노출, 더보기 선택시 5개씩 추가 노출  -->
							<ul id="list-data" class="list">
								<c:forEach var="i" items="${odlist}">
									<li><a
										href="${pageContext.request.contextPath}/workbook/workbookpost?wbNum=${i.wbNum}"
										class="noti-tit">${i.wbTittle}</a> 
										<input type="checkbox" name="odnote" class="check" value="${i.wbNum}" onclick="checkone()">
										<p class="date mont">출제자 : ${i.userId}</p>
										<p class="date mont">날짜 :</p>
										<button style="font-weight: bold;"
											onclick="location.href='${pageContext.request.contextPath}/workbook/workbookpost?wbNum=${i.wbNum}'">다시
											풀기</button></li>
								</c:forEach>
							</ul>
							<div class="btn_wd640 btn_wrap">
								<button type="button" class="btn btn-lg btn-success" onclick="deleteOdnote()">선택항목
									삭제</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	//선택한 문제 삭제
function deleteOdnote(){
	console.log("sssss")
	var chkList = document.querySelectorAll("input[name=odnote]:checked");
	var countChk = document.querySelectorAll("input[name=odnote]:checked").length
	var arr= new Array()
	chkList.forEach(function(t) {
		arr.push(t.value)
	})
	console.log(arr)
	
	if(countChk==0){
		alert("삭제할 문제를 선택해주세요")
		return
	}
	
	fetch('${pageContext.request.contextPath}/odnote/deleteodnote', {
		method: 'POST',
		headers : {'Content-Type': 'application/json'},
		body: JSON.stringify({'deleteList' : arr})
	}).then((response)=>{
		alert("오답노트에서 삭제하였습니다.")
		location.reload()
	})
	
	
}
	
	//체크박스 전체선택, 해제
function checkAll() {
	var chked = document.getElementsByName('odnote')
	if(document.getElementById("checkAll").checked==true){
		for(var i = 0; i<chked.length; i++){
			chked[i].checked = true;
		}
	}
	if(document.getElementById("checkAll").checked==false){
		for(var i = 0; i<chked.length; i++){
			chked[i].checked = false;
		}
	}

}	
	
function checkone() {
		document.getElementById("checkAll").checked=false
}
</script>
</body>



</html>