<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<div id="pre-header" class="background-gray-lighter">
	<div class="container no-padding">
		<div class="row hidden-xs">
			<div class="col-sm-6 padding-vert-5">
				<!--  <strong>Phone:</strong>&nbsp;1-800-123-4567 -->
			</div>
			<div class="col-sm-6 text-right padding-vert-5">
				<strong><a href="<%=request.getContextPath()%>/member/loginMember">로그인</a>&nbsp;&nbsp;<a
					href="<%=request.getContextPath()%>/member/newMember">회원가입</a>&nbsp;&nbsp;<a href="customer">고객지원센터</a></strong>
			</div>
		</div>
	</div>
</div>

<!-- End Phone/Email -->
<!-- Header -->
<div id="header">
	<div class="container">
		<div class="row">
			<!-- Logo -->
			<div class="logo">
				<a href="/exchange" title=""> <img
					src="<%=request.getContextPath()%>/resources/HTML/assets/img/logo.png"
					alt="Logo" />
				</a>
			</div>
			<!-- End Logo -->
		</div>
	</div>
</div>
<!-- End Header -->
<!-- Top Menu -->
<div id="hornav" class="bottom-border-shadow">
	<div class="container no-padding border-bottom">
		<div class="row">
			<div class="col-md-8 no-padding">
				<div class="visible-lg">
					<ul id="hornavmenu" class="nav navbar-nav">

						<li>
							<!--  <span class="fa-copy ">Pages</span> --> <span
							class="fa-search ">상품별</span>
							<ul>
								<li><a href="pages-about-us.html">About Us</a></li>
								<li><a href="pages-services.html">Services</a></li>
								<li><a href="pages-faq.html">F.A.Q.</a></li>
								<li><a href="pages-about-me.html">About Me</a></li>
								<li><a href="pages-full-width.html">Full Width</a></li>
								<li><a href="pages-left-sidebar.html">Left Sidebar</a></li>
								<li><a href="pages-right-sidebar.html">Right Sidebar</a></li>
								<li><a href="pages-login.html">Login</a></li>
								<li><a href="pages-sign-up.html">Sign-Up</a></li>
								<li><a href="pages-404.html">404 Error Page</a></li>
							</ul>
						</li>
						<li><span class="fa-search ">지역별</span>
							<ul>
								<li><a href="portfolio-2-column.html">2 Column</a></li>
								<li><a href="portfolio-3-column.html">3 Column</a></li>
								<li><a href="portfolio-4-column.html">4 Column</a></li>
								<li><a href="portfolio-6-column.html">6 Column</a></li>
							</ul></li>
						<li><a
							href="<%=request.getContextPath()%>/product/newProduct"
							class="fa-pencil ">상품등록</a></li>
						<li><a href="contact.html" class="fa-folder">내 상품</a></li>
						<li><a href="contact.html" class="fa-bullhorn">공지사항</a></li>
						<li><a href="contact.html" class="fa-question-circle">Q&A</a>
						</li>

					</ul>
				</div>
			</div>
			<div class="col-md-4 no-padding">
				<ul class="social-icons pull-right">
					<li class="social-rss"><a href="#" target="_blank" title="RSS"></a>
					</li>
					<li class="social-twitter"><a href="#" target="_blank"
						title="Twitter"></a></li>
					<li class="social-facebook"><a href="#" target="_blank"
						title="Facebook"></a></li>
					<li class="social-googleplus"><a href="#" target="_blank"
						title="Google+"></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>