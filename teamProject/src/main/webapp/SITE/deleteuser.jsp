<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>자격증 공부하자</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/login_style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/SITE/CSS/index_style.css">
</head>

<body>
	<!-- Header -->
	<header>
		<a class="logo">JAGONGJA.</a>
	</header>

	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">


						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front" id="front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">회원을 탈퇴하겠습니까?</h4>
											<!-- KAKAO -->
											<form
												action="${pageContext.request.contextPath}/member/deleteuserpro"
												method="post">
												
												<div class="form-group mt-2">
													<input type="password" name="userPassword" class="form-style"
														placeholder="비밀번호" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>

												

												<button type="submit" class="btn mt-4">확인</button>

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




</html>