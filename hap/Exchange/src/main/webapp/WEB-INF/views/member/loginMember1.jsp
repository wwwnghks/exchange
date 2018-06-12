<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<!-- Title -->
<title>Habitat - A Professional Bootstrap Template</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<%@include file="../include/style.jsp"%>
</head>
<body>
	<div id="body-bg">
		<%@include file="../include/header.jsp"%>
		<!-- === BEGIN CONTENT === -->
		<div id="content">
			<div class="container background-white">
				<div class="row margin-vert-30">
					<!-- Login Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<form class="login-page" method="post" action="loginMember">
							<div class="login-header margin-bottom-30">
								<h2> 로그인 </h2>
							</div>
							<div class="input-group margin-bottom-20">
								<span class="input-group-addon"> <i class="fa fa-user"></i>
								</span> <input placeholder=" 아이디" class="form-control" type="text"
									name="mem_id">
							</div>
							<div class="input-group margin-bottom-20">
								<span class="input-group-addon"> <i class="fa fa-lock"></i>
								</span> <input placeholder=" 비밀번호" class="form-control"
									type="password" name="mem_pw">
							</div>
							<div class="row">
								<div class="col-md-6">
									<label class="checkbox"> <input type="checkbox">로그인 상태 유지</label>
								</div>
								<div class="col-md-6">
									<button class="btn btn-primary pull-right" type="submit">로그인</button>
								</div>
								<br>
							</div>
							<div class="row">
								<div id="naverIdLogin" class="col-md-6 pull-right"></div>
								<div class="col-md-6 pull-right">
									<a id="kakao-login-btn"></a> <a
										href="http://developers.kakao.com/logout"></a>
								</div>
							</div>
					</div>
					<hr>
					<h4>아이디를 잊어 버리셨습니까?</h4>
					<p>
						아이디를 받으시려면 <a href="<%=request.getContextPath()%>/member/memberIdFind"> 여기 </a> 를 클릭하십시오.
					</p>
					<hr>
					<h4>비밀번호를 잊어 버리셨습니까?</h4>
					<p>
						비밀번호를 받으시려면<a href="<%=request.getContextPath()%>/member/memberPwFind"> 여기 </a>를 클릭하십시오.
					</p>

					</form>
				</div>
				<!-- End Login Box -->

			</div>
		</div>
	</div>
	<!-- === END CONTENT === -->

	<%@include file="../include/footer.jsp"%>
	<!-- End Footer -->
	<%@include file="../include/jsFile.jsp"%>
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
		charset="utf-8"></script>


	<script type="text/javascript">
		var naverLogin = new naver.LoginWithNaverId(
				{
					clientId : "QuDRvcnM4lcWAokv8mOE",
					callbackUrl : "http://ec2-52-78-244-162.ap-northeast-2.compute.amazonaws.com:8080/exchange/",
					isPopup : false, /* 팝업을 통한 연동처리 여부 */
					callbackHandle : false,
					loginButton : {
						color : "green",
						type : 5,
						height : 48
					}
				/* 로그인 버튼의 타입을 지정  */
				});

		/* 설정정보를 초기화하고 연동을 준비  */
		naverLogin.init();
	</script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('01573e66ef996be032057b0b4df7039e');
		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {
				// 로그인 성공시, API를 호출합니다.
				Kakao.API.request({
					 url: '/v1/user/me',
					success : function(res) {
						var jsonval = JSON.parse(JSON.stringify(res));
/* 						alert(jsonval.kaccount_email);
						alert(jsonval.properties.thumbnail_image);
						alert(jsonval.properties.nickname); */
						$.ajax({
							type : 'GET',
							url : 'cacaocreate',
							cache : false,
							data : {
								mem_id : jsonval.kaccount_email+'_KaKao',
								mem_pw : 'KaKao',
								mem_name : jsonval.properties.nickname,
								mem_nickname : jsonval.properties.nickname+'_KaKao',
								mem_photo : jsonval.properties.thumbnail_image,
							},
							success : function(data) {
								window.location='/exchange';
							},
							error : function(request, status, error) {
								alert('ERROR : ' + request + ' ' + status
										+ ' ' + error);
							}
						});

					},
					fail : function(error) {
						alert(JSON.stringify(error));
					}
				});

			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
		//]]>
	</script>


	</div>
</body>
</html>
<!-- === END FOOTER === -->