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
		<!-- === BEGIN FOOTER === -->
		<div id="base">
			<div class="container bottom-border padding-vert-30">
				<div class="row">
					<!-- Disclaimer -->
					<div class="col-md-4">
						<h3 class="class margin-bottom-10">Disclaimer</h3>
						<p>All stock images on this template demo are for presentation
							purposes only, intended to represent a live site and are not
							included with the template or in any of the Joomla51 club
							membership plans.</p>
						<p>
							Most of the images used here are available from <a
								href="http://www.shutterstock.com/" target="_blank">shutterstock.com</a>.
							Links are provided if you wish to purchase them from their
							copyright owners.
						</p>
					</div>
					<!-- End Disclaimer -->
					<!-- Contact Details -->
					<div class="col-md-4 margin-bottom-20">
						<h3 class="margin-bottom-10">Contact Details</h3>
						<p>
							<span class="fa-phone">Telephone:</span>1-800-123-4567 <br>
							<span class="fa-envelope">Email:</span> <a
								href="mailto:info@example.com">info@example.com</a> <br> <span
								class="fa-link">Website:</span> <a href="http://www.example.com">www.example.com</a>
						</p>
						<p>
							The Dunes, Top Road, <br>Strandhill, <br>Co. Sligo, <br>Ireland
						</p>
					</div>
					<!-- End Contact Details -->
					<!-- Sample Menu -->
					<div class="col-md-4 margin-bottom-20">
						<h3 class="margin-bottom-10">Sample Menu</h3>
						<ul class="menu">
							<li><a class="fa-tasks" href="#">Placerat facer possim</a></li>
							<li><a class="fa-users" href="#">Quam nunc putamus</a></li>
							<li><a class="fa-signal" href="#">Velit esse molestie</a></li>
							<li><a class="fa-coffee" href="#">Nam liber tempor</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<!-- End Sample Menu -->
				</div>
			</div>
		</div>
		<!-- Footer -->
		<%@include file="../include/footer.jsp"%>

		<!-- End Footer -->
		<%@include file="../include/jsFile.jsp"%>
	</div>
</body>
</html>
<!-- === END FOOTER === -->