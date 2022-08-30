<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>자격증 공부하자</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&dispƒlay=swap"
	rel="stylesheet">
<<<<<<< HEAD
<link rel="stylesheet" href="css/login.css" />
=======
<!-- <link rel="stylesheet" href="css/login.css" /> -->
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git

<style>
body {
	font-family: 'Poppins', sans-serif;
	font-weight: 300;
	font-size: 15px;
	line-height: 1.7;
	color: #000;
	background-color: #2a2b38;
	overflow-x: hidden;
}

a {
	cursor: pointer;
	transition: all 200ms linear;
}

a:hover {
	text-decoration: none;
}

.link {
	color: #c4c3ca;
	/* 드래그 막기 */
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
}

.link:hover {
	color: #1f2029;
}

p {
	font-weight: 500;
	font-size: 14px;
	line-height: 1.7;
}

h4 {
	font-weight: 600;
	color: #FFF;
	/* 드래그 막기 */
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
<<<<<<< HEAD
}
h6 span {
	padding: 0 20px;
	text-transform: uppercase;
	font-weight: 700;
	cursor: default;
	color: #FFF;
	/* 드래그 막기 */
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
=======
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
h6 span:hover {
	text-shadow: 0 0 5px #FFF;
=======

h6 span {
	padding: 0 20px;
	text-transform: uppercase;
	font-weight: 700;
	cursor: default;
	color: #FFF;
	/* 드래그 막기 */
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
.section {
	position: relative;
	width: 100%;
	display: block;
=======

h6 span:hover {
	text-shadow: 0 0 5px #FFF;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
.full-height {
	min-height: 100vh;
=======

.section {
	position: relative;
	width: 100%;
	display: block;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
[type="checkbox"]:checked, [type="checkbox"]:not(:checked) {
	position: absolute;
	left: -9999px;
=======

.full-height {
	min-height: 100vh;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
.checkbox:checked+label, .checkbox:not(:checked)+label {
	position: relative;
	display: block;
	text-align: center;
	width: 60px;
	height: 16px;
	border-radius: 8px;
	padding: 0;
	margin: 10px auto;
	cursor: pointer;
=======

[type="checkbox"]:checked, [type="checkbox"]:not(:checked) {
	position: absolute;
	left: -9999px;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
.checkbox:checked+label:before, .checkbox:not(:checked)+label:before {
	position: absolute;
	display: block;
	width: 36px;
	height: 36px;
	border-radius: 50%;
	color: #FFF;
	/* background-color: #; */
	font-family: 'unicons';
	content: '\eb4f';
	z-index: 20;
	top: -10px;
	left: -10px;
	line-height: 36px;
	text-align: center;
	font-size: 24px;
	transition: all 0.5s ease;
=======

.checkbox:checked+label, .checkbox:not(:checked)+label {
	position: relative;
	display: block;
	text-align: center;
	width: 60px;
	height: 16px;
	border-radius: 8px;
	padding: 0;
	margin: 10px auto;
	cursor: pointer;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
=======

.checkbox:checked+label:before, .checkbox:not(:checked)+label:before {
	position: absolute;
	display: block;
	width: 36px;
	height: 36px;
	border-radius: 50%;
	color: #FFF;
	/* background-color: #; */
	font-family: 'unicons';
	content: '\eb4f';
	z-index: 20;
	top: -10px;
	left: -10px;
	line-height: 36px;
	text-align: center;
	font-size: 24px;
	transition: all 0.5s ease;
}

>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
.checkbox:checked+label:before {
	transform: translateX(44px) rotate(-270deg);
}
.card-3d-wrap {
	position: relative;
	width: 440px;
	max-width: 100%;
	height: 400px;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	perspective: 800px;
	margin-top: 60px;
}

.card-3d-wrapper {
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	transition: all 600ms ease-out;
}

.card-front, .card-back {
	width: 100%;
	height: 100%;
	background-color: #2a2b38;
	background-position: bottom center;
	background-repeat: no-repeat;
	background-size: 300%;
	position: absolute;
	border-radius: 6px;
	left: 0;
	top: 0;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	backface-visibility: hidden;
}

.card-back {
	transform: rotateY(180deg);
}

.checkbox:checked ~ .card-3d-wrap .card-3d-wrapper {
	transform: rotateY(180deg);
<<<<<<< HEAD
}
.center-wrap {
	position: absolute;
	width: 100%;
	padding: 0 35px;
	top: 50%;
	left: 0;
	transform: translate3d(0, -50%, 35px) perspective(100px);
	z-index: 20;
	display: block;
=======
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
.form-group {
	position: relative;
	display: block;
	margin: 0;
	padding: 0;
=======

.center-wrap {
	position: absolute;
	width: 100%;
	padding: 0 35px;
	top: 50%;
	left: 0;
	transform: translate3d(0, -50%, 35px) perspective(100px);
	z-index: 20;
	display: block;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}

.form-group {
	position: relative;
	display: block;
	margin: 0;
	padding: 0;
}

.form-style {
	padding: 13px 20px;
	padding-left: 55px;
	height: 48px;
	width: 100%;
	font-weight: 500;
	border-radius: 4px;
	font-size: 14px;
	line-height: 22px;
	letter-spacing: 0.5px;
	outline: none;
	color: #c4c3ca;
	background-color: #1f2029;
	border: none;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
	box-shadow: 0 4px 8px 0 rgba(21, 21, 21, .2);
}
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
.form-style:focus, .form-style:active {
	border: none;
	outline: none;
	box-shadow: 0 4px 8px 0 rgba(21, 21, 21, .2);
}

.input-icon {
	position: absolute;
	top: 0;
	left: 18px;
	height: 48px;
	font-size: 24px;
	line-height: 48px;
	text-align: left;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
	color: #FFF;
}
<<<<<<< HEAD
.form-group input:-ms-input-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
.form-group input::-moz-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
.form-group input:-moz-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
.form-group input::-webkit-input-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
.form-group input:focus:-ms-input-placeholder {
	opacity: 0;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
.form-group input:focus::-moz-placeholder {
	opacity: 0;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
.form-group input:focus:-moz-placeholder {
	opacity: 0;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
.form-group input:focus::-webkit-input-placeholder {
	opacity: 0;
=======

.form-group input:-ms-input-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}
<<<<<<< HEAD
.btn {
	border-radius: 4px;
	height: 44px;
	font-size: 13px;
	font-weight: 600;
	text-transform: uppercase;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
	padding: 0 30px;
	letter-spacing: 1px;
	display: -webkit-inline-flex;
	display: -ms-inline-flexbox;
	display: inline-flex;
	-webkit-align-items: center;
	-moz-align-items: center;
	-ms-align-items: center;
	align-items: center;
	-webkit-justify-content: center;
	-moz-justify-content: center;
	-ms-justify-content: center;
	justify-content: center;
	-ms-flex-pack: center;
	text-align: center;
	border: none;
	background-color: #1f2029;
	color: #FFF;
}
.btn:active, .btn:focus {
	background-color: #1f2029;
	color: #FFF;
	box-shadow: 0 8px 24px 0 rgba(16, 39, 112, .2);
}
.btn:hover {
	background-color: #000;
	color: #FFF;
	box-shadow: 0 8px 24px 0 rgba(16, 39, 112, .2);
=======

.form-group input::-moz-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
}
<<<<<<< HEAD
=======

.form-group input:-moz-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}

.form-group input::-webkit-input-placeholder {
	color: #c4c3ca;
	opacity: 0.7;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}

.form-group input:focus:-ms-input-placeholder {
	opacity: 0;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}

.form-group input:focus::-moz-placeholder {
	opacity: 0;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}

.form-group input:focus:-moz-placeholder {
	opacity: 0;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}

.form-group input:focus::-webkit-input-placeholder {
	opacity: 0;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
}

.btn {
	border-radius: 4px;
	height: 44px;
	font-size: 13px;
	font-weight: 600;
	text-transform: uppercase;
	-webkit-transition: all 200ms linear;
	transition: all 200ms linear;
	padding: 0 30px;
	letter-spacing: 1px;
	display: -webkit-inline-flex;
	display: -ms-inline-flexbox;
	display: inline-flex;
	-webkit-align-items: center;
	-moz-align-items: center;
	-ms-align-items: center;
	align-items: center;
	-webkit-justify-content: center;
	-moz-justify-content: center;
	-ms-justify-content: center;
	justify-content: center;
	-ms-flex-pack: center;
	text-align: center;
	border: none;
	background-color: #1f2029;
	color: #FFF;
}

.btn:active, .btn:focus {
	background-color: #1f2029;
	color: #FFF;
	box-shadow: 0 8px 24px 0 rgba(16, 39, 112, .2);
}

.btn:hover {
	background-color: #000;
	color: #FFF;
	box-shadow: 0 8px 24px 0 rgba(16, 39, 112, .2);
}
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
</style>
</head>

<body>

	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3">
							<span>Sign In </span> <span>Sign Up</span>
						</h6>
						<input class="checkbox" type="checkbox" id="reg-log"
							name="reg-log" /> <label for="reg-log"></label>

						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">로그인</h4>
											<div class="form-group">
												<input type="email" name="logemail" class="form-style"
													placeholder="아이디" id="logemail" autocomplete="off">
												<i class="input-icon uil uil-lightbulb-alt"></i>
											</div>
											<div class="form-group mt-2">
												<input type="password" name="logpass" class="form-style"
													placeholder="비밀번호" id="logpass" autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<a href="#" class="btn mt-4" onclick="location.href='##'">로그인</a>

<<<<<<< HEAD
												<a class="btn mt-4" href="javascript:kakaoLogin()">카카오 로그인</a>

											<p class="mb-0 mt-4 text-center">
												<a href="#0" class="link">비밀번호를 잊어버리셨나요?</a>
											</p>
										</div>
									</div>
								</div>

								<!-- ======================================회원가입페이지================================================= -->

								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">회원가입</h4>
											<form action="${pageContext.request.contextPath}/member/addmember" method="post">
												<!-- back으로 회원정보 보내기 위한 form태그 추가(백대일)  -->
												<div class="form-group">
													<input type="text" name="userName" class="form-style"
														placeholder="이름" id="logname" autocomplete="off">
													<i class="input-icon uil uil-user"></i>
												</div>

												<div class="form-group mt-2">
													<input type="text" name="userEmail" class="form-style"
														placeholder="이메일" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>

												<div class="form-group mt-2">
													<input type="email" name="userId" class="form-style"
														placeholder="아이디" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-lightbulb-alt"></i>
												</div>

												<div class="form-group mt-2">
													<input type="password" name="userPasswoed" class="form-style"
														placeholder="비밀번호" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												
												<input type="hidden" name="userType" value="1"><!-- 일반회원 멤버타입 전송을 위한 hidden  -->

												<button type="submit" class="btn mt-4">확인</button>
												<a class="btn mt-4" href="javascript:kakaoLogin()">카카오 회원가입</a>
=======
											<div class="form-group mt-2">
												<a href="javascript:kakaoLogin();">dddd</a>
											</div>

											<p class="mb-0 mt-4 text-center">
												<a href="#0" class="link">비밀번호를 잊어버리셨나요?</a>
											</p>
										</div>
									</div>
								</div>

								<!-- ======================================회원가입페이지================================================= -->

								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">회원가입</h4>
											<form action="${pageContext.request.contextPath}/member/addmember" method="post">
												<!-- back으로 회원정보 보내기 위한 form태그 추가(백대일)  -->
												<div class="form-group">
													<input type="text" name="userName" class="form-style"
														placeholder="이름" id="logname" autocomplete="off">
													<i class="input-icon uil uil-user"></i>
												</div>

												<div class="form-group mt-2">
													<input type="text" name="userEmail" class="form-style"
														placeholder="이메일" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>

												<div class="form-group mt-2">
													<input type="email" name="userId" class="form-style"
														placeholder="아이디" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-lightbulb-alt"></i>
												</div>

												<div class="form-group mt-2">
													<input type="password" name="userPasswoed" class="form-style"
														placeholder="비밀번호" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												
												<input type="hidden" name="userType" value="1"><!-- 일반회원 멤버타입 전송을 위한 hidden  -->

												<button type="submit" class="btn mt-4">확인</button>
>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
												 <!-- form태그 submit 위해 <a>에서 <button으로 변경 (백대일)> -->
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
window.Kakao.init("00abcb26ff21f4396d563e8d0aa1dada")
<<<<<<< HEAD
let email
let nickname
function kakaoLogin(){
	Kakao.Auth.login({
		success: function (authObj) {
		Kakao.API.request({
			url: '/v2/user/me',
			success: function (response) {
				console.log(response)
				console.log(authObj)
				alert(JSON.stringify(response))
				  console.log(authObj.access_token);
				
				email = response.kakao_account.email
				nickname = response.kakao_account.profile.nickname
				console.log(email, nickname)
				addinfo()
				
			},
			fail: function (error) {
				console.log(error)
			},
		})
	},
		fail: function (error) {
			console.log(error)
		},
	})
}
function addinfo() {
	fetch("${pageContext.request.contextPath}/member/kakaologin",{
		 method: "POST",
		  headers: {
			  
		    "Content-Type": "application/json",
		  }, 
		  body: JSON.stringify({
		    'userEmail' : email,
		    'userName' : nickname
		  }),
		
	}).then((response) => console.log(response)).catch(console.log("www"));
}
=======

let email
let nickname

function kakaoLogin(){
	Kakao.Auth.login({
		success: function (authObj) {
		Kakao.API.request({
			url: '/v2/user/me',
			success: function (response) {
				console.log(response)
				console.log(authObj)
				alert(JSON.stringify(response))
				  console.log(authObj.access_token);
				
				email = response.kakao_account.email
				nickname = response.kakao_account.profile.nickname
				console.log(email, nickname)
				addinfo()
				
			},
			fail: function (error) {
				console.log(error)
			},
		})
	},
		fail: function (error) {
			console.log(error)
		},
	})
}

function addinfo() {
	fetch("${pageContext.request.contextPath}/member/kakaologin",{
		 method: "POST",
		  headers: {
			  
		    "Content-Type": "application/json",
		  }, 
		  body: JSON.stringify({
		    'userEmail' : email,
		    'userName' : nickname
		  }),
		
	}).then((response) => console.log(response)).catch(console.log("www"));
}


>>>>>>> branch 'master' of https://github.com/qoreodlf/KICTeamProject.git
  
</script>
</html>