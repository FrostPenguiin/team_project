<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



    <!-- 회원가입 -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	<!-- 아이콘 -->
	<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
	
	<!-- 구글 폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bowlby+One+SC&family=Bungee&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">
	
	<!-- CSS파일 -->
	<link rel="stylesheet" href="${path }/resources/CSS/main/signUp.css">
	
	<!-- 파비콘 설정-->
    <link rel="shortcut icon" href="${path}/resources/img/movie_favicon.ico" type="image/x-icon">
	
<title>KH_CINEMA</title>
</head>
<body>

<section class = "signUp">

		
					      <div class="row px-3">
								<h5> class="logo"KH_CINEMA</h5>
							</div>

							

					<!-- input 창 -->
 
					<div class="col-lg-7">

						<div class="signup">

							<div class="card2 card border-0 px-4 px-sm-5 py-5">

								<h2 class="mb-3" align="center">KH_CINEMA   회원가입</h2>

								
								<!-- 회원가입 입력 폼 -->
									<div class="registration-form" id="formDiv"
										align="center">
										<form action="signUpOkPage" id = "formTable" class = "needs-validation" method="post" novalidate>
											<table class="table table-borderless " >

											<tr>
												<div class="form-group">

													<td><h6 class="mb-0 text-sm"  id = "title">이름</h6></td>

													<td><input type="text" name="mem_name" 
														class="form-control item"  pattern="^[가-힣]{2,6}$"  required>
														                 <div class="valid-feedback">  사용 가능한 이름입니다. </div>
														  <div class="invalid-feedback" id="nameerrMsg">이름을 입력 해 주세요.</div>
													</td>
									
												</div>
											</tr>

											<tr>
												<div class="form-group">
													<td><h6 class="mb-0 text-sm" id = "title">아이디</h6></td>
													<td><input type="text" name="mem_id" id = "mem_id"
														class="form-control item " pattern="^[a-z][a-z\d]{4,15}$" placeholder="영문/숫자  15자 이내" required>
													</td>
						
													
													<td>
													<span id="idcheck"></span></td>
												</div>
											</tr>

											<tr>
												<div class="form-group">
													<td>
														<h6 class="mb-0 text-sm" id = "title">비밀번호</h6>
													</td>
													<td><input type="password" name="mem_pw" id ="pw"
														class="form-control item" onchange="check_pw()" pattern="(?=.*\d{1,10})(?=.*[~`!@#$%\^&*()-+=]{1,10})(?=.*[a-zA-Z]{2,10}).{8,20}$"
														placeholder="영문+숫자+특수문자 20자 이내 " required></td>

											</tr>


											<tr>
												<div class="form-group">
												<td>
													<h6 class="mb-0 text-sm" id = "title">비밀번호 확인</h6>
												</td>
												<td><input type="password" id ="pw2"
												pattern="(?=.*\d{1,10})(?=.*[~`!@#$%\^&*()-+=]{1,10})(?=.*[a-zA-Z]{2,10}).{8,20}$" onchange="check_pw()"
												  class="form-control item" name="pwOk"
													required>&nbsp;<span id="check"></span></td>
											</tr>
									<tr>

										<div class="form-group">
										<td >
											<h6 class="mb-0 text-sm" id = "title">생년월일</h6>
										</td>
										<td><input type="date" class="form-control item"
											name="mem_birth"  min="1930-01-01" max="2019-12-31" required></td>

									</tr>


									<tr>
										<div class="form-group">
										<td>
											<h6 class="mb-0 text-sm" id = "title">전화번호</h6>
										</td>
										<td><input type="text" name="mem_phone" id = "phone-number"
											class="form-control item"  required></td>


									</tr>

									<tr>

										<div class="form-group">
											<td>
												<h6 class="mb-0 text-sm" id = "title">Email</h6>
											</td>
											<td><input type="email" name="mem_email" pattern="^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$"
												class="form-control item" 
												required></td>
									
										</div>

									</tr>

									<tr><td></td></tr>
									<tr><td></td></tr>
									<tr><td></td></tr>
									<tr>
										<div class="row mb-3">
												
												<div class = "signUpBtn" align="right" >
												<td></td>
													<td><button class="btn btn-blue mb-1 py-2">회원가입
														하기</button></td>
												</div>
												
											
										</div>
									</tr>
								</table>
									</form>
									</div>
								
						</div>
					</div>
				</div>
			</div>
		</div>
</div>

	</section>



		<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${path}/resources/JS/main/signUp.js"></script>
	
</body>

<script type="text/javascript">
function check_pw(){
	
	
	var pw = document.getElementById('pw').value;
	
    if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
        if(document.getElementById('pw').value==document.getElementById('pw2').value){
            document.getElementById('check').innerHTML='비밀번호가 일치합니다.';
            document.getElementById('check').style.color='green';
        }
        else{
            document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
            document.getElementById('check').style.color='red';
        }
    }
	
}
</script>



</html>