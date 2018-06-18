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
			<div class="container background-white" style="height: 801px;">
				<div class="row margin-vert-30">
					<!-- Login Box -->
					<div class="col-md-6 col-md-offset-3 col-sm-offset-3">
						<form class="login-page" method="post" action="memberPwFind" style="width: 520px; margin-left: 110px;">
							<div class="login-header margin-bottom-30" style="margin-left:120px;">
								<h2>비밀번호 찾기</h2>
							</div>
							<div class="input-group margin-bottom-20" style="left: 120px;">
								<!-- <span class="input-group-addon"> </span> --> 
								<input placeholder="아이디" class="form-control" type="text"
									name="mem_id">
							</div>
							<div class="input-group margin-bottom-20" style="left: 120px;">
								<!-- <span class="input-group-addon"> </span> --> 
								<input placeholder="이름" class="form-control" type="text"
									name="mem_name">
							</div>
							<div class="input-group margin-bottom-20" style="left: 120px;">
								<!-- <span class="input-group-addon"> </span> --> 
								<input placeholder="이메일" class="form-control"
									type="text" name="mem_email">
							</div>
							<!-- <div class="row"> -->
								<!-- <div class="col-md-6"> -->
									<button class="btn btn-default btn-lm"  type="submit" style="margin-left:201px;">찾기</button>
								<!-- </div> -->
								<br>
							<!-- </div> -->
							<div class="row">
								<div id="naverIdLogin" class="col-md-6 pull-right"></div>
								<div class="col-md-6 pull-right">
									<a id="kakao-login-btn"></a> <a
										href="http://developers.kakao.com/logout"></a>
								</div>
							</div>
					</div>
					

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
	


	</div>
</body>
</html>
<!-- === END FOOTER === -->