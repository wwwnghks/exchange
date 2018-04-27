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
								<h2>Login to your account</h2>
							</div>
							<div class="input-group margin-bottom-20">
								<span class="input-group-addon"> <i class="fa fa-user"></i>
								</span> <input placeholder="Username" class="form-control" type="text"
									name="mem_id">
							</div>
							<div class="input-group margin-bottom-20">
								<span class="input-group-addon"> <i class="fa fa-lock"></i>
								</span> <input placeholder="Password" class="form-control"
									type="password" name="mem_pw">
							</div>
							<div class="row">
								<div class="col-md-6">
									<label class="checkbox"> <input type="checkbox">Stay
										signed in
									</label>
								</div>
								<div class="col-md-6">
									<button class="btn btn-primary pull-right" type="submit">Login</button>
								</div>
							</div>
							<hr>
							<h4>Forget your Password ?</h4>
							<p>
								<a href="#">Click here</a>to reset your password.
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
	</div>
</body>
</html>
<!-- === END FOOTER === -->